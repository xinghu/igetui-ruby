#!/usr/bin/env ruby
# Generated by the protocol buffer compiler. DO NOT EDIT!
# make sure 'gem install ruby-protocol-buffers' at first.
# https://rubygems.org/gems/ruby-protocol-buffers
require 'protocol_buffers'

module GtReq
  # forward declarations
  class GtAuth < ::ProtocolBuffers::Message; end
  class GtAuthResult < ::ProtocolBuffers::Message; end
  class ReqServList < ::ProtocolBuffers::Message; end
  class ReqServListResult < ::ProtocolBuffers::Message; end
  class PushListResult < ::ProtocolBuffers::Message; end
  class PushResult < ::ProtocolBuffers::Message; end
  class PushOSSingleMessage < ::ProtocolBuffers::Message; end
  class PushMMPSingleMessage < ::ProtocolBuffers::Message; end
  class StartMMPBatchTask < ::ProtocolBuffers::Message; end
  class StartOSBatchTask < ::ProtocolBuffers::Message; end
  class PushListMessage < ::ProtocolBuffers::Message; end
  class EndBatchTask < ::ProtocolBuffers::Message; end
  class PushMMPAppMessage < ::ProtocolBuffers::Message; end
  class ServerNotify < ::ProtocolBuffers::Message; end
  class ServerNotifyResult < ::ProtocolBuffers::Message; end
  class OSMessage < ::ProtocolBuffers::Message; end
  class MMPMessage < ::ProtocolBuffers::Message; end
  class Transparent < ::ProtocolBuffers::Message; end
  class PushInfo < ::ProtocolBuffers::Message; end
  class ActionChain < ::ProtocolBuffers::Message; end
  class AppStartUp < ::ProtocolBuffers::Message; end
  class Button < ::ProtocolBuffers::Message; end
  class Target < ::ProtocolBuffers::Message; end

  # enums
  module CmdID
    include ::ProtocolBuffers::Enum

    set_fully_qualified_name "GtReq.CmdID"

    GTHEARDBT = 0
    GTAUTH = 1
    GTAUTH_RESULT = 2
    REQSERVHOST = 3
    REQSERVHOSTRESULT = 4
    PUSHRESULT = 5
    PUSHOSSINGLEMESSAGE = 6
    PUSHMMPSINGLEMESSAGE = 7
    STARTMMPBATCHTASK = 8
    STARTOSBATCHTASK = 9
    PUSHLISTMESSAGE = 10
    ENDBATCHTASK = 11
    PUSHMMPAPPMESSAGE = 12
    SERVERNOTIFY = 13
    PUSHLISTRESULT = 14
    SERVERNOTIFYRESULT = 15
  end

  module SMSStatus
    include ::ProtocolBuffers::Enum

    set_fully_qualified_name "GtReq.SMSStatus"

    Unread = 0
    Read = 1
  end

  class GtAuth < ::ProtocolBuffers::Message
    set_fully_qualified_name "GtReq.GtAuth"

    required :string, :sign, 1
    required :string, :appkey, 2
    required :int64, :timestamp, 3
    optional :string, :seqId, 4
  end

  class GtAuthResult < ::ProtocolBuffers::Message
    # forward declarations

    # enums
    module GtAuthResultCode
      include ::ProtocolBuffers::Enum

      set_fully_qualified_name "GtReq.GtAuthResult.GtAuthResultCode"

      Successed = 0
      Failed_noSign = 1
      Failed_noAppkey = 2
      Failed_noTimestamp = 3
      Failed_AuthIllegal = 4
      Redirect = 5
    end

    set_fully_qualified_name "GtReq.GtAuthResult"

    required :int32, :code, 1
    optional :string, :redirectAddress, 2
    optional :string, :seqId, 3
    optional :string, :info, 4
  end

  class ReqServList < ::ProtocolBuffers::Message
    set_fully_qualified_name "GtReq.ReqServList"

    optional :string, :seqId, 1
    required :int64, :timestamp, 3
  end

  class ReqServListResult < ::ProtocolBuffers::Message
    # forward declarations

    # enums
    module ReqServHostResultCode
      include ::ProtocolBuffers::Enum

      set_fully_qualified_name "GtReq.ReqServListResult.ReqServHostResultCode"

      Successed = 0
      Failed = 1
      Busy = 2
    end

    set_fully_qualified_name "GtReq.ReqServListResult"

    required :int32, :code, 1
    repeated :string, :host, 2
    optional :string, :seqId, 3
  end

  class PushListResult < ::ProtocolBuffers::Message
    set_fully_qualified_name "GtReq.PushListResult"

    repeated ::GtReq::PushResult, :results, 1
  end

  class PushResult < ::ProtocolBuffers::Message
    # forward declarations

    # enums
    module EPushResult
      include ::ProtocolBuffers::Enum

      set_fully_qualified_name "GtReq.PushResult.EPushResult"

      Successed_online = 0
      Successed_offline = 1
      Successed_ignore = 2
      Failed = 3
      Busy = 4
      Success_startBatch = 5
      Success_endBatch = 6
    end

    set_fully_qualified_name "GtReq.PushResult"

    required ::GtReq::PushResult::EPushResult, :result, 1
    required :string, :taskId, 2
    required :string, :messageId, 3
    required :string, :seqId, 4
    required :string, :target, 5
    optional :string, :info, 6
    optional :string, :traceId, 7
  end

  class PushOSSingleMessage < ::ProtocolBuffers::Message
    set_fully_qualified_name "GtReq.PushOSSingleMessage"

    required :string, :seqId, 1
    required ::GtReq::OSMessage, :message, 2
    required ::GtReq::Target, :target, 3
  end

  class PushMMPSingleMessage < ::ProtocolBuffers::Message
    set_fully_qualified_name "GtReq.PushMMPSingleMessage"

    required :string, :seqId, 1
    required ::GtReq::MMPMessage, :message, 2
    required ::GtReq::Target, :target, 3
  end

  class StartMMPBatchTask < ::ProtocolBuffers::Message
    set_fully_qualified_name "GtReq.StartMMPBatchTask"

    required ::GtReq::MMPMessage, :message, 1
    required :int64, :expire, 2, :default => 72
    optional :string, :seqId, 3
  end

  class StartOSBatchTask < ::ProtocolBuffers::Message
    set_fully_qualified_name "GtReq.StartOSBatchTask"

    required ::GtReq::OSMessage, :message, 1
    required :int64, :expire, 2, :default => 72
  end

  class PushListMessage < ::ProtocolBuffers::Message
    set_fully_qualified_name "GtReq.PushListMessage"

    required :string, :seqId, 1
    required :string, :taskId, 2
    repeated ::GtReq::Target, :targets, 3
  end

  class EndBatchTask < ::ProtocolBuffers::Message
    set_fully_qualified_name "GtReq.EndBatchTask"

    required :string, :taskId, 1
    optional :string, :seqId, 2
  end

  class PushMMPAppMessage < ::ProtocolBuffers::Message
    set_fully_qualified_name "GtReq.PushMMPAppMessage"

    required ::GtReq::MMPMessage, :message, 1
    repeated :string, :appIdList, 2
    repeated :string, :phoneTypeList, 3
    repeated :string, :provinceList, 4
    optional :string, :seqId, 5
  end

  class ServerNotify < ::ProtocolBuffers::Message
    # forward declarations

    # enums
    module NotifyType
      include ::ProtocolBuffers::Enum

      set_fully_qualified_name "GtReq.ServerNotify.NotifyType"

      Normal = 0
      ServerListChanged = 1
      Exception = 2
    end

    set_fully_qualified_name "GtReq.ServerNotify"

    required ::GtReq::ServerNotify::NotifyType, :type, 1
    optional :string, :info, 2
    optional :bytes, :extradata, 3
    optional :string, :seqId, 4
  end

  class ServerNotifyResult < ::ProtocolBuffers::Message
    set_fully_qualified_name "GtReq.ServerNotifyResult"

    required :string, :seqId, 1
    optional :string, :info, 2
  end

  class OSMessage < ::ProtocolBuffers::Message
    set_fully_qualified_name "GtReq.OSMessage"

    required :bool, :isOffline, 2
    required :int64, :offlineExpireTime, 3, :default => 1
    optional ::GtReq::Transparent, :transparent, 4
    optional :string, :extraData, 5
    optional :int32, :msgType, 6
    optional :int32, :msgTraceFlag, 7
    optional :int32, :priority, 8
  end

  class MMPMessage < ::ProtocolBuffers::Message
    set_fully_qualified_name "GtReq.MMPMessage"

    optional ::GtReq::Transparent, :transparent, 2
    optional :string, :extraData, 3
    optional :int32, :msgType, 4
    optional :int32, :msgTraceFlag, 5
    optional :int64, :msgOfflineExpire, 6
    optional :bool, :isOffline, 7, :default => true
    optional :int32, :priority, 8
  end

  class Transparent < ::ProtocolBuffers::Message
    set_fully_qualified_name "GtReq.Transparent"

    required :string, :id, 1
    required :string, :action, 2
    required :string, :taskId, 3
    required :string, :appKey, 4
    required :string, :appId, 5
    required :string, :messageId, 6
    optional ::GtReq::PushInfo, :pushInfo, 7
    repeated ::GtReq::ActionChain, :actionChain, 8
  end

  class PushInfo < ::ProtocolBuffers::Message
    set_fully_qualified_name "GtReq.PushInfo"

    optional :string, :message, 1
    optional :string, :actionKey, 2
    optional :string, :sound, 3
    optional :string, :badge, 4
    optional :string, :payload, 5
    optional :string, :locKey, 6
    optional :string, :locArgs, 7
    optional :string, :actionLocKey, 8
    optional :string, :launchImage, 9
    optional :string, :i, 10
    optional :string, :t, 11
  end

  class ActionChain < ::ProtocolBuffers::Message
    # forward declarations

    # enums
    module Type
      include ::ProtocolBuffers::Enum

      set_fully_qualified_name "GtReq.ActionChain.Type"

      Goto = 0
      Notification = 1
      Popup = 2
      Startapp = 3
      Startweb = 4
      Smsinbox = 5
      Checkapp = 6
      Eoa = 7
      Appdownload = 8
      Startsms = 9
      Httpproxy = 10
      Smsinbox2 = 11
      Mmsinbox2 = 12
      Popupweb = 13
      Dial = 14
      Reportbindapp = 15
      Reportaddphoneinfo = 16
      Reportapplist = 17
      Terminatetask = 18
      Reportapp = 19
      Enablelog = 20
      Disablelog = 21
      Uploadlog = 22
    end

    set_fully_qualified_name "GtReq.ActionChain"

    required :int32, :actionId, 1
    required ::GtReq::ActionChain::Type, :type, 2
    optional :int32, :next, 3
    optional :string, :logo, 100
    optional :string, :logoURL, 101
    optional :string, :title, 102
    optional :string, :text, 103
    optional :bool, :clearable, 104
    optional :bool, :ring, 105
    optional :bool, :buzz, 106
    optional :string, :bannerURL, 107
    optional :string, :img, 120
    repeated ::GtReq::Button, :buttons, 121
    optional :string, :appid, 140
    optional ::GtReq::AppStartUp, :appstartupid, 141
    optional :bool, :autostart, 142
    optional :int32, :failedAction, 143
    optional :string, :url, 160
    optional :string, :withcid, 161
    optional :bool, :is_withnettype, 162, :default => false
    optional :string, :address, 180
    optional :string, :content, 181
    optional :int64, :ct, 182
    optional ::GtReq::SMSStatus, :flag, 183
    optional :int32, :successedAction, 200
    optional :int32, :uninstalledAction, 201
    optional :string, :name, 220
    optional :bool, :autoInstall, 223
    optional :bool, :wifiAutodownload, 225
    optional :bool, :forceDownload, 226
    optional :bool, :showProgress, 227
    optional :string, :post, 241
    optional :string, :headers, 242
    optional :bool, :groupable, 260
    optional :string, :mmsTitle, 280
    optional :string, :mmsURL, 281
    optional :bool, :preload, 300
    optional :string, :taskid, 320
    optional :int64, :duration, 340
    optional :string, :date, 360
  end

  class AppStartUp < ::ProtocolBuffers::Message
    set_fully_qualified_name "GtReq.AppStartUp"

    optional :string, :android, 1
    optional :string, :symbia, 2
    optional :string, :ios, 3
  end

  class Button < ::ProtocolBuffers::Message
    set_fully_qualified_name "GtReq.Button"

    optional :string, :text, 1
    optional :int32, :next, 2
  end

  class Target < ::ProtocolBuffers::Message
    set_fully_qualified_name "GtReq.Target"

    required :string, :appId, 1
    required :string, :clientId, 2
  end

end
