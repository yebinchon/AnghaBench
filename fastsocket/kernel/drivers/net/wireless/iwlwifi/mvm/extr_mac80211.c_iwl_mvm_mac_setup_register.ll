; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_setup_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_setup_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.iwl_mvm = type { %struct.ieee80211_hw*, %struct.TYPE_26__*, %struct.TYPE_24__*, i32, %struct.TYPE_21__*, %struct.TYPE_18__* }
%struct.ieee80211_hw = type { i32, i8*, i32, i32, i32, %struct.TYPE_15__*, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, %struct.TYPE_14__, i32, %struct.TYPE_20__**, i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_14__ = type { i32, i32*, i32, i32, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__*, %struct.TYPE_19__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__*, i32* }
%struct.TYPE_18__ = type { i32* }

@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@IEEE80211_HW_SPECTRUM_MGMT = common dso_local global i32 0, align 4
@IEEE80211_HW_REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@IEEE80211_HW_QUEUE_CONTROL = common dso_local global i32 0, align 4
@IEEE80211_HW_WANT_MONITOR_VIF = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_PS = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_DYNAMIC_PS = common dso_local global i32 0, align 4
@IEEE80211_HW_AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@IEEE80211_HW_TIMING_BEACON_ONLY = common dso_local global i32 0, align 4
@IWL_MVM_FIRST_AGG_QUEUE = common dso_local global i32 0, align 4
@IWL_MVM_OFFCHANNEL_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"iwl-mvm-rs\00", align 1
@IWL_UCODE_TLV_FLAGS_MFP = common dso_local global i32 0, align 4
@iwlwifi_mod_params = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@IEEE80211_HW_MFP_CAPABLE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@WIPHY_FLAG_CUSTOM_REGULATORY = common dso_local global i32 0, align 4
@WIPHY_FLAG_DISABLE_BEACON_HINTS = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@IWL_CONN_MAX_LISTEN_INTERVAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IWL_MVM_MAX_ADDRESSES = common dso_local global i32 0, align 4
@PROBE_OPTION_MAX = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@iwlmvm_mod_params = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@IWL_POWER_SCHEME_CAM = common dso_local global i64 0, align 8
@WIPHY_FLAG_PS_ON_BY_DEFAULT = common dso_local global i32 0, align 4
@NL80211_FEATURE_P2P_GO_CTWIN = common dso_local global i32 0, align 4
@NL80211_FEATURE_P2P_GO_OPPPS = common dso_local global i32 0, align 4
@IEEE80211_MAX_RTS_THRESHOLD = common dso_local global i32 0, align 4
@IWL_UCODE_WOWLAN = common dso_local global i64 0, align 8
@IWL_WOWLAN_MAX_PATTERNS = common dso_local global i32 0, align 4
@IWL_WOWLAN_MAX_PATTERN_LEN = common dso_local global i32 0, align 4
@IWL_WOWLAN_MIN_PATTERN_LEN = common dso_local global i32 0, align 4
@WIPHY_WOWLAN_4WAY_HANDSHAKE = common dso_local global i32 0, align 4
@WIPHY_WOWLAN_DISCONNECT = common dso_local global i32 0, align 4
@WIPHY_WOWLAN_EAP_IDENTITY_REQ = common dso_local global i32 0, align 4
@WIPHY_WOWLAN_GTK_REKEY_FAILURE = common dso_local global i32 0, align 4
@WIPHY_WOWLAN_MAGIC_PKT = common dso_local global i32 0, align 4
@WIPHY_WOWLAN_RFKILL_RELEASE = common dso_local global i32 0, align 4
@WIPHY_WOWLAN_SUPPORTS_GTK_REKEY = common dso_local global i32 0, align 4
@iwl_mvm_wowlan_tcp_support = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_mac_setup_register(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  store %struct.ieee80211_hw* %10, %struct.ieee80211_hw** %4, align 8
  %11 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %12 = load i32, i32* @IEEE80211_HW_SPECTRUM_MGMT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IEEE80211_HW_REPORTS_TX_ACK_STATUS, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IEEE80211_HW_QUEUE_CONTROL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @IEEE80211_HW_WANT_MONITOR_VIF, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IEEE80211_HW_SUPPORTS_PS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IEEE80211_HW_SUPPORTS_DYNAMIC_PS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @IEEE80211_HW_AMPDU_AGGREGATION, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @IEEE80211_HW_TIMING_BEACON_ONLY, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @IWL_MVM_FIRST_AGG_QUEUE, align 4
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @IWL_MVM_OFFCHANNEL_QUEUE, align 4
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %36, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %37, align 8
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 2
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IWL_UCODE_TLV_FLAGS_MFP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %1
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @IEEE80211_HW_MFP_CAPABLE, align 4
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %53 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %47, %1
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %57, i32 0, i32 2
  store i32 4, i32* %58, align 8
  %59 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %59, i32 0, i32 3
  store i32 4, i32* %60, align 4
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %62 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %61, i32 0, i32 4
  store i32 4, i32* %62, align 8
  %63 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %64 = call i32 @BIT(i32 %63)
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %66 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %65, i32 0, i32 5
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 10
  store i32 %64, i32* %68, align 8
  %69 = load i32, i32* @WIPHY_FLAG_CUSTOM_REGULATORY, align 4
  %70 = load i32, i32* @WIPHY_FLAG_DISABLE_BEACON_HINTS, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %75 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %74, i32 0, i32 5
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %73
  store i32 %79, i32* %77, align 8
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %80, i32 0, i32 5
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  store i32 10000, i32* %83, align 4
  %84 = load i32, i32* @IWL_CONN_MAX_LISTEN_INTERVAL, align 4
  %85 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %86 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %88 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %87, i32 0, i32 5
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %94 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %93, i32 0, i32 4
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* @ETH_ALEN, align 4
  %99 = call i32 @memcpy(i32* %92, i32* %97, i32 %98)
  %100 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %101 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %100, i32 0, i32 5
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %104 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %103, i32 0, i32 5
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 9
  store %struct.TYPE_18__* %102, %struct.TYPE_18__** %106, align 8
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %108 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %107, i32 0, i32 5
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 2
  store i32 1, i32* %110, align 8
  %111 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %112 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %111, i32 0, i32 4
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %117, label %125

117:                                              ; preds = %56
  %118 = load i32, i32* @IWL_MVM_MAX_ADDRESSES, align 4
  %119 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %120 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %119, i32 0, i32 4
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @min(i32 %118, i32 %123)
  br label %126

125:                                              ; preds = %56
  br label %126

126:                                              ; preds = %125, %117
  %127 = phi i32 [ %124, %117 ], [ 1, %125 ]
  store i32 %127, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %128

128:                                              ; preds = %169, %126
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %172

132:                                              ; preds = %128
  %133 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %134 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %133, i32 0, i32 5
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %142 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %141, i32 0, i32 5
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* @ETH_ALEN, align 4
  %151 = call i32 @memcpy(i32* %140, i32* %149, i32 %150)
  %152 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %153 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %152, i32 0, i32 5
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 5
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %164 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %163, i32 0, i32 5
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %132
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %7, align 4
  br label %128

172:                                              ; preds = %128
  %173 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %174 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %173, i32 0, i32 2
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %178, 24
  %180 = sub nsw i32 %179, 34
  %181 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %182 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %181, i32 0, i32 5
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 3
  store i32 %180, i32* %184, align 4
  %185 = load i32, i32* @PROBE_OPTION_MAX, align 4
  %186 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %187 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %186, i32 0, i32 5
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 8
  store i32 %185, i32* %189, align 8
  %190 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %191 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %190, i32 0, i32 4
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %193, align 8
  %195 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %215

200:                                              ; preds = %172
  %201 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %202 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %201, i32 0, i32 4
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %204, align 8
  %206 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i64 %206
  %208 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %209 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %208, i32 0, i32 5
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 7
  %212 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %211, align 8
  %213 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %212, i64 %213
  store %struct.TYPE_20__* %207, %struct.TYPE_20__** %214, align 8
  br label %215

215:                                              ; preds = %200, %172
  %216 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %217 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %216, i32 0, i32 4
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %219, align 8
  %221 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %241

226:                                              ; preds = %215
  %227 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %228 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %227, i32 0, i32 4
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %230, align 8
  %232 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i64 %232
  %234 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %235 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %234, i32 0, i32 5
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 7
  %238 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %237, align 8
  %239 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %238, i64 %239
  store %struct.TYPE_20__* %233, %struct.TYPE_20__** %240, align 8
  br label %241

241:                                              ; preds = %226, %215
  %242 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %243 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %242, i32 0, i32 1
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %248 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %247, i32 0, i32 5
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 6
  store i32 %246, i32* %250, align 8
  %251 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @iwlmvm_mod_params, i32 0, i32 0), align 8
  %252 = load i64, i64* @IWL_POWER_SCHEME_CAM, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %262

254:                                              ; preds = %241
  %255 = load i32, i32* @WIPHY_FLAG_PS_ON_BY_DEFAULT, align 4
  %256 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %257 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %256, i32 0, i32 5
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = or i32 %260, %255
  store i32 %261, i32* %259, align 8
  br label %271

262:                                              ; preds = %241
  %263 = load i32, i32* @WIPHY_FLAG_PS_ON_BY_DEFAULT, align 4
  %264 = xor i32 %263, -1
  %265 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %266 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %265, i32 0, i32 5
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = and i32 %269, %264
  store i32 %270, i32* %268, align 8
  br label %271

271:                                              ; preds = %262, %254
  %272 = load i32, i32* @NL80211_FEATURE_P2P_GO_CTWIN, align 4
  %273 = load i32, i32* @NL80211_FEATURE_P2P_GO_OPPPS, align 4
  %274 = or i32 %272, %273
  %275 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %276 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %275, i32 0, i32 5
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = or i32 %279, %274
  store i32 %280, i32* %278, align 8
  %281 = load i32, i32* @IEEE80211_MAX_RTS_THRESHOLD, align 4
  %282 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %283 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %282, i32 0, i32 3
  store i32 %281, i32* %283, align 8
  %284 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %285 = call i32 @iwl_mvm_leds_init(%struct.iwl_mvm* %284)
  store i32 %285, i32* %6, align 4
  %286 = load i32, i32* %6, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %271
  %289 = load i32, i32* %6, align 4
  store i32 %289, i32* %2, align 4
  br label %302

290:                                              ; preds = %271
  %291 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %292 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %291, i32 0, i32 0
  %293 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %292, align 8
  %294 = call i32 @ieee80211_register_hw(%struct.ieee80211_hw* %293)
  store i32 %294, i32* %6, align 4
  %295 = load i32, i32* %6, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %290
  %298 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %299 = call i32 @iwl_mvm_leds_exit(%struct.iwl_mvm* %298)
  br label %300

300:                                              ; preds = %297, %290
  %301 = load i32, i32* %6, align 4
  store i32 %301, i32* %2, align 4
  br label %302

302:                                              ; preds = %300, %288
  %303 = load i32, i32* %2, align 4
  ret i32 %303
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @iwl_mvm_leds_init(%struct.iwl_mvm*) #1

declare dso_local i32 @ieee80211_register_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @iwl_mvm_leds_exit(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
