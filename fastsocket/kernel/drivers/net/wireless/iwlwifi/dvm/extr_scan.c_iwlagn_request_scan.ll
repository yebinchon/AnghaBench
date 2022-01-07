; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwlagn_request_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwlagn_request_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, i32, %struct.TYPE_22__*, i32, %struct.TYPE_21__*, %struct.TYPE_20__*, i64, %struct.TYPE_19__*, %struct.TYPE_17__, %struct.TYPE_32__*, i32*, i64, %struct.iwl_rxon_context*, %struct.iwl_scan_cmd*, i32, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32*, i32, %struct.TYPE_28__*, i32 }
%struct.TYPE_28__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }
%struct.iwl_rxon_context = type { %struct.TYPE_30__, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.iwl_scan_cmd = type { i32, i32, i32, i8*, %struct.TYPE_23__, i32*, i8*, i8*, %struct.TYPE_27__*, i8*, i64, i8*, i8* }
%struct.TYPE_23__ = type { i8*, i32, i32, %struct.TYPE_29__, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.ieee80211_vif = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.iwl_host_cmd = type { i32*, i32*, %struct.iwl_scan_cmd**, i32, i32 }
%struct.iwl_scan_channel = type { i32, i32, i8*, i8*, i8*, i32 }
%struct.ieee80211_mgmt = type { i32 }

@CMD_SYNC = common dso_local global i32 0, align 4
@REPLY_SCAN_CMD = common dso_local global i32 0, align 4
@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@MAX_SCAN_CHANNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"fail to allocate memory for scan\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IWL_PLCP_QUIET_THRESH = common dso_local global i64 0, align 8
@IWL_ACTIVE_QUIET_TIME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Scanning while associated...\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"suspend_time 0x%X beacon interval %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Start internal passive scan.\0A\00", align 1
@IWL_RADIO_RESET_DWELL_TIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Kicking off active scan\0A\00", align 1
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Start passive scan.\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Start ROC scan.\0A\00", align 1
@TX_CMD_FLG_SEQ_CTL_MSK = common dso_local global i32 0, align 4
@TX_CMD_LIFE_TIME_INFINITE = common dso_local global i32 0, align 4
@RXON_FLG_BAND_24G_MSK = common dso_local global i32 0, align 4
@RXON_FLG_AUTO_DETECT_MSK = common dso_local global i32 0, align 4
@RXON_FLG_CHANNEL_MODE_MSK = common dso_local global i32 0, align 4
@RXON_FLG_CHANNEL_MODE_POS = common dso_local global i32 0, align 4
@CHANNEL_MODE_PURE_40 = common dso_local global i32 0, align 4
@IWL_RATE_6M_PLCP = common dso_local global i32 0, align 4
@IWL_RATE_1M_PLCP = common dso_local global i32 0, align 4
@RATE_MCS_CCK_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_IGNORE_BT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"Invalid scan band\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IWL_GOOD_CRC_TH_DEFAULT = common dso_local global i8* null, align 8
@IWL_GOOD_CRC_TH_DISABLED = common dso_local global i8* null, align 8
@IWL_GOOD_CRC_TH_NEVER = common dso_local global i8* null, align 8
@STATUS_POWER_PMI = common dso_local global i32 0, align 4
@IEEE80211_CONF_IDLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"chain_noise_data.active_chains: %u\0A\00", align 1
@RXON_RX_CHAIN_VALID_POS = common dso_local global i32 0, align 4
@RXON_RX_CHAIN_FORCE_MIMO_SEL_POS = common dso_local global i32 0, align 4
@RXON_RX_CHAIN_FORCE_SEL_POS = common dso_local global i32 0, align 4
@RXON_RX_CHAIN_DRIVER_FORCE_POS = common dso_local global i32 0, align 4
@iwl_bcast_addr = common dso_local global i32 0, align 4
@RXON_FILTER_ACCEPT_GRP_MSK = common dso_local global i32 0, align 4
@RXON_FILTER_BCON_AWARE_MSK = common dso_local global i32 0, align 4
@SCAN_CHANNEL_TYPE_PASSIVE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"channel count %d\0A\00", align 1
@IWL_HCMD_DFL_NOCOPY = common dso_local global i32 0, align 4
@STATUS_SCAN_HW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.ieee80211_vif*)* @iwlagn_request_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_request_scan(%struct.iwl_priv* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.iwl_host_cmd, align 8
  %7 = alloca %struct.iwl_scan_cmd*, align 8
  %8 = alloca %struct.iwl_rxon_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.iwl_scan_channel*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %34 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 0
  store i32* inttoptr (i64 112 to i32*), i32** %34, align 8
  %35 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 2
  store %struct.iwl_scan_cmd** null, %struct.iwl_scan_cmd*** %36, align 8
  %37 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 3
  %38 = load i32, i32* @CMD_SYNC, align 4
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 4
  %40 = load i32, i32* @REPLY_SCAN_CMD, align 4
  store i32 %40, i32* %39, align 4
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %42 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %41, i32 0, i32 13
  %43 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %42, align 8
  %44 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %45 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %43, i64 %44
  store %struct.iwl_rxon_context* %45, %struct.iwl_rxon_context** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %47 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %46, i32 0, i32 6
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %51 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %52 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %51, i32 0, i32 6
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* @MAX_SCAN_CHANNEL, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 40
  %59 = add i64 112, %58
  %60 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %61 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %60, i32 0, i32 16
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %59, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %21, align 4
  store i32* null, i32** %22, align 8
  store i32 0, i32* %23, align 4
  %69 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %70 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 130
  br i1 %72, label %73, label %88

73:                                               ; preds = %2
  %74 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %75 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %74, i32 0, i32 5
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %75, align 8
  %77 = icmp ne %struct.TYPE_21__* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %80 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %79, i32 0, i32 5
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MAX_SCAN_CHANNEL, align 4
  %85 = icmp sgt i32 %83, %84
  br label %86

86:                                               ; preds = %78, %73
  %87 = phi i1 [ true, %73 ], [ %85, %78 ]
  br label %88

88:                                               ; preds = %86, %2
  %89 = phi i1 [ false, %2 ], [ %87, %86 ]
  %90 = zext i1 %89 to i32
  %91 = call i64 @WARN_ON(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %822

96:                                               ; preds = %88
  %97 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %98 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %97, i32 0, i32 15
  %99 = call i32 @lockdep_assert_held(i32* %98)
  %100 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %101 = icmp ne %struct.ieee80211_vif* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %104 = call %struct.iwl_rxon_context* @iwl_rxon_ctx_from_vif(%struct.ieee80211_vif* %103)
  store %struct.iwl_rxon_context* %104, %struct.iwl_rxon_context** %8, align 8
  br label %105

105:                                              ; preds = %102, %96
  %106 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %107 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %106, i32 0, i32 14
  %108 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %107, align 8
  %109 = icmp ne %struct.iwl_scan_cmd* %108, null
  br i1 %109, label %126, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call %struct.iwl_scan_cmd* @kmalloc(i32 %111, i32 %112)
  %114 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %115 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %114, i32 0, i32 14
  store %struct.iwl_scan_cmd* %113, %struct.iwl_scan_cmd** %115, align 8
  %116 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %117 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %116, i32 0, i32 14
  %118 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %117, align 8
  %119 = icmp ne %struct.iwl_scan_cmd* %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %110
  %121 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %122 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %121, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %822

125:                                              ; preds = %110
  br label %126

126:                                              ; preds = %125, %105
  %127 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %128 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %127, i32 0, i32 14
  %129 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %128, align 8
  store %struct.iwl_scan_cmd* %129, %struct.iwl_scan_cmd** %7, align 8
  %130 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %131 = load i32, i32* %21, align 4
  %132 = call i32 @memset(%struct.iwl_scan_cmd* %130, i32 0, i32 %131)
  %133 = load i64, i64* @IWL_PLCP_QUIET_THRESH, align 8
  %134 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %135 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %134, i32 0, i32 10
  store i64 %133, i64* %135, align 8
  %136 = load i8*, i8** @IWL_ACTIVE_QUIET_TIME, align 8
  %137 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %138 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %137, i32 0, i32 9
  store i8* %136, i8** %138, align 8
  %139 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %140 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 128
  br i1 %142, label %143, label %190

143:                                              ; preds = %126
  %144 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %145 = call i64 @iwl_is_any_associated(%struct.iwl_priv* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %190

147:                                              ; preds = %143
  store i32 0, i32* %24, align 4
  store i32 100, i32* %26, align 4
  store i32 100, i32* %27, align 4
  %148 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %149 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %148, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %150 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %151 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  switch i32 %152, label %161 [
    i32 128, label %153
    i32 129, label %155
    i32 130, label %156
  ]

153:                                              ; preds = %147
  %154 = call i64 @WARN_ON(i32 1)
  br label %161

155:                                              ; preds = %147
  store i32 0, i32* %24, align 4
  br label %161

156:                                              ; preds = %147
  %157 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %158 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %24, align 4
  br label %161

161:                                              ; preds = %147, %156, %155, %153
  %162 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %163 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %162, i32 0, i32 12
  store i8* null, i8** %163, align 8
  %164 = call i8* @cpu_to_le32(i32 204800)
  %165 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %166 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %165, i32 0, i32 11
  store i8* %164, i8** %166, align 8
  %167 = load i32, i32* %24, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %161
  %170 = load i32, i32* %26, align 4
  store i32 %170, i32* %24, align 4
  br label %171

171:                                              ; preds = %169, %161
  %172 = load i32, i32* %26, align 4
  %173 = load i32, i32* %24, align 4
  %174 = sdiv i32 %172, %173
  %175 = shl i32 %174, 22
  store i32 %175, i32* %25, align 4
  %176 = load i32, i32* %25, align 4
  %177 = load i32, i32* %26, align 4
  %178 = load i32, i32* %24, align 4
  %179 = srem i32 %177, %178
  %180 = mul nsw i32 %179, 1024
  %181 = or i32 %176, %180
  store i32 %181, i32* %27, align 4
  %182 = load i32, i32* %27, align 4
  %183 = call i8* @cpu_to_le32(i32 %182)
  %184 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %185 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %184, i32 0, i32 12
  store i8* %183, i8** %185, align 8
  %186 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %187 = load i32, i32* %27, align 4
  %188 = load i32, i32* %24, align 4
  %189 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %186, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %187, i32 %188)
  br label %205

190:                                              ; preds = %143, %126
  %191 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %192 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 128
  br i1 %194, label %195, label %204

195:                                              ; preds = %190
  %196 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %197 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %196, i32 0, i32 12
  store i8* null, i8** %197, align 8
  %198 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %199 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %198, i32 0, i32 11
  store i8* null, i8** %199, align 8
  %200 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %201 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %200, i32 0, i32 9
  store i8* null, i8** %201, align 8
  %202 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %203 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %202, i32 0, i32 10
  store i64 0, i64* %203, align 8
  br label %204

204:                                              ; preds = %195, %190
  br label %205

205:                                              ; preds = %204, %171
  %206 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %207 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  switch i32 %208, label %321 [
    i32 129, label %209
    i32 130, label %216
    i32 128, label %318
  ]

209:                                              ; preds = %205
  %210 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %211 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %210, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %212 = load i32, i32* @IWL_RADIO_RESET_DWELL_TIME, align 4
  %213 = call i8* @cpu_to_le16(i32 %212)
  %214 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %215 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %214, i32 0, i32 9
  store i8* %213, i8** %215, align 8
  br label %321

216:                                              ; preds = %205
  %217 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %218 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %217, i32 0, i32 5
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %314

223:                                              ; preds = %216
  store i32 0, i32* %29, align 4
  %224 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %225 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %224, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %226 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %227 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %226, i32 0, i32 5
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 4
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %230, i64 0
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  store i32 %233, i32* %23, align 4
  %234 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %235 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %234, i32 0, i32 5
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 4
  %238 = load %struct.TYPE_28__*, %struct.TYPE_28__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %238, i64 0
  %240 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  store i32* %241, i32** %22, align 8
  %242 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %243 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %242, i32 0, i32 5
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 8
  %247 = sub nsw i32 %246, 1
  store i32 %247, i32* %28, align 4
  br label %248

248:                                              ; preds = %310, %223
  %249 = load i32, i32* %28, align 4
  %250 = icmp sge i32 %249, 1
  br i1 %250, label %251, label %313

251:                                              ; preds = %248
  %252 = load i32, i32* @WLAN_EID_SSID, align 4
  %253 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %254 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %253, i32 0, i32 8
  %255 = load %struct.TYPE_27__*, %struct.TYPE_27__** %254, align 8
  %256 = load i32, i32* %29, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %258, i32 0, i32 2
  store i32 %252, i32* %259, align 4
  %260 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %261 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %260, i32 0, i32 5
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 4
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %263, align 8
  %265 = load i32, i32* %28, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %271 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %270, i32 0, i32 8
  %272 = load %struct.TYPE_27__*, %struct.TYPE_27__** %271, align 8
  %273 = load i32, i32* %29, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %275, i32 0, i32 0
  store i32 %269, i32* %276, align 4
  %277 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %278 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %277, i32 0, i32 8
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %278, align 8
  %280 = load i32, i32* %29, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %286 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %285, i32 0, i32 5
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 4
  %289 = load %struct.TYPE_28__*, %struct.TYPE_28__** %288, align 8
  %290 = load i32, i32* %28, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %296 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %295, i32 0, i32 5
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %297, i32 0, i32 4
  %299 = load %struct.TYPE_28__*, %struct.TYPE_28__** %298, align 8
  %300 = load i32, i32* %28, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @memcpy(i32 %284, i32* %294, i32 %304)
  %306 = load i32, i32* %13, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %13, align 4
  %308 = load i32, i32* %29, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %29, align 4
  br label %310

310:                                              ; preds = %251
  %311 = load i32, i32* %28, align 4
  %312 = add nsw i32 %311, -1
  store i32 %312, i32* %28, align 4
  br label %248

313:                                              ; preds = %248
  store i32 1, i32* %16, align 4
  br label %317

314:                                              ; preds = %216
  %315 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %316 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %315, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %317

317:                                              ; preds = %314, %313
  br label %321

318:                                              ; preds = %205
  %319 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %320 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %319, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %321

321:                                              ; preds = %205, %318, %317, %209
  %322 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %323 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %324 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %323, i32 0, i32 4
  %325 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %324, i32 0, i32 2
  store i32 %322, i32* %325, align 4
  %326 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %8, align 8
  %327 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %330 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %329, i32 0, i32 4
  %331 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %330, i32 0, i32 4
  store i32 %328, i32* %331, align 4
  %332 = load i32, i32* @TX_CMD_LIFE_TIME_INFINITE, align 4
  %333 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %334 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %333, i32 0, i32 4
  %335 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %334, i32 0, i32 3
  %336 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %335, i32 0, i32 0
  store i32 %332, i32* %336, align 8
  %337 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %338 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  switch i32 %339, label %405 [
    i32 132, label %340
    i32 131, label %403
  ]

340:                                              ; preds = %321
  %341 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %342 = load i32, i32* @RXON_FLG_AUTO_DETECT_MSK, align 4
  %343 = or i32 %341, %342
  %344 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %345 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %344, i32 0, i32 0
  store i32 %343, i32* %345, align 8
  %346 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %347 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %346, i32 0, i32 13
  %348 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %347, align 8
  %349 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %350 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %348, i64 %349
  %351 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @RXON_FLG_CHANNEL_MODE_MSK, align 4
  %355 = and i32 %353, %354
  %356 = call i32 @le32_to_cpu(i32 %355)
  %357 = load i32, i32* @RXON_FLG_CHANNEL_MODE_POS, align 4
  %358 = ashr i32 %356, %357
  store i32 %358, i32* %17, align 4
  %359 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %360 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %359, i32 0, i32 5
  %361 = load %struct.TYPE_21__*, %struct.TYPE_21__** %360, align 8
  %362 = icmp ne %struct.TYPE_21__* %361, null
  br i1 %362, label %363, label %370

363:                                              ; preds = %340
  %364 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %365 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %364, i32 0, i32 5
  %366 = load %struct.TYPE_21__*, %struct.TYPE_21__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 8
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %374, label %370

370:                                              ; preds = %363, %340
  %371 = load i32, i32* %17, align 4
  %372 = load i32, i32* @CHANNEL_MODE_PURE_40, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %374, label %376

374:                                              ; preds = %370, %363
  %375 = load i32, i32* @IWL_RATE_6M_PLCP, align 4
  store i32 %375, i32* %15, align 4
  br label %379

376:                                              ; preds = %370
  %377 = load i32, i32* @IWL_RATE_1M_PLCP, align 4
  store i32 %377, i32* %15, align 4
  %378 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  store i32 %378, i32* %9, align 4
  br label %379

379:                                              ; preds = %376, %374
  %380 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %381 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %380, i32 0, i32 8
  %382 = load %struct.TYPE_19__*, %struct.TYPE_19__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %382, i32 0, i32 0
  %384 = load %struct.TYPE_18__*, %struct.TYPE_18__** %383, align 8
  %385 = icmp ne %struct.TYPE_18__* %384, null
  br i1 %385, label %386, label %402

386:                                              ; preds = %379
  %387 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %388 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %387, i32 0, i32 8
  %389 = load %struct.TYPE_19__*, %struct.TYPE_19__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %389, i32 0, i32 0
  %391 = load %struct.TYPE_18__*, %struct.TYPE_18__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %402

395:                                              ; preds = %386
  %396 = load i32, i32* @TX_CMD_FLG_IGNORE_BT, align 4
  %397 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %398 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %397, i32 0, i32 4
  %399 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 4
  %401 = or i32 %400, %396
  store i32 %401, i32* %399, align 4
  br label %402

402:                                              ; preds = %395, %386, %379
  br label %410

403:                                              ; preds = %321
  %404 = load i32, i32* @IWL_RATE_6M_PLCP, align 4
  store i32 %404, i32* %15, align 4
  br label %410

405:                                              ; preds = %321
  %406 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %407 = call i32 @IWL_WARN(%struct.iwl_priv* %406, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %408 = load i32, i32* @EIO, align 4
  %409 = sub nsw i32 0, %408
  store i32 %409, i32* %3, align 4
  br label %822

410:                                              ; preds = %403, %402
  %411 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %412 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %411, i32 0, i32 12
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %426

415:                                              ; preds = %410
  %416 = load i32, i32* %16, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %420

418:                                              ; preds = %415
  %419 = load i8*, i8** @IWL_GOOD_CRC_TH_DEFAULT, align 8
  br label %422

420:                                              ; preds = %415
  %421 = load i8*, i8** @IWL_GOOD_CRC_TH_DISABLED, align 8
  br label %422

422:                                              ; preds = %420, %418
  %423 = phi i8* [ %419, %418 ], [ %421, %420 ]
  %424 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %425 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %424, i32 0, i32 7
  store i8* %423, i8** %425, align 8
  br label %437

426:                                              ; preds = %410
  %427 = load i32, i32* %16, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %431

429:                                              ; preds = %426
  %430 = load i8*, i8** @IWL_GOOD_CRC_TH_DEFAULT, align 8
  br label %433

431:                                              ; preds = %426
  %432 = load i8*, i8** @IWL_GOOD_CRC_TH_NEVER, align 8
  br label %433

433:                                              ; preds = %431, %429
  %434 = phi i8* [ %430, %429 ], [ %432, %431 ]
  %435 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %436 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %435, i32 0, i32 7
  store i8* %434, i8** %436, align 8
  br label %437

437:                                              ; preds = %433, %422
  %438 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %439 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  store i32 %440, i32* %12, align 4
  %441 = load i32, i32* %12, align 4
  %442 = icmp eq i32 %441, 132
  br i1 %442, label %443, label %462

443:                                              ; preds = %437
  %444 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %445 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %444, i32 0, i32 8
  %446 = load %struct.TYPE_19__*, %struct.TYPE_19__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %446, i32 0, i32 0
  %448 = load %struct.TYPE_18__*, %struct.TYPE_18__** %447, align 8
  %449 = icmp ne %struct.TYPE_18__* %448, null
  br i1 %449, label %450, label %462

450:                                              ; preds = %443
  %451 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %452 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %451, i32 0, i32 8
  %453 = load %struct.TYPE_19__*, %struct.TYPE_19__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %453, i32 0, i32 0
  %455 = load %struct.TYPE_18__*, %struct.TYPE_18__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %462

459:                                              ; preds = %450
  %460 = load i32, i32* %19, align 4
  %461 = call i32 @first_antenna(i32 %460)
  store i32 %461, i32* %19, align 4
  br label %462

462:                                              ; preds = %459, %450, %443, %437
  %463 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %464 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %465 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %464, i32 0, i32 11
  %466 = load i32*, i32** %465, align 8
  %467 = load i32, i32* %12, align 4
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %466, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = load i32, i32* %19, align 4
  %472 = call i32 @iwl_toggle_tx_ant(%struct.iwl_priv* %463, i32 %470, i32 %471)
  %473 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %474 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %473, i32 0, i32 11
  %475 = load i32*, i32** %474, align 8
  %476 = load i32, i32* %12, align 4
  %477 = zext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %475, i64 %477
  store i32 %472, i32* %478, align 4
  %479 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %480 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %479, i32 0, i32 11
  %481 = load i32*, i32** %480, align 8
  %482 = load i32, i32* %12, align 4
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds i32, i32* %481, i64 %483
  %485 = load i32, i32* %484, align 4
  %486 = call i32 @iwl_ant_idx_to_flags(i32 %485)
  %487 = load i32, i32* %9, align 4
  %488 = or i32 %487, %486
  store i32 %488, i32* %9, align 4
  %489 = load i32, i32* %15, align 4
  %490 = load i32, i32* %9, align 4
  %491 = call i32 @iwl_hw_set_rate_n_flags(i32 %489, i32 %490)
  %492 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %493 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %492, i32 0, i32 4
  %494 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %493, i32 0, i32 1
  store i32 %491, i32* %494, align 8
  %495 = load i32, i32* @STATUS_POWER_PMI, align 4
  %496 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %497 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %496, i32 0, i32 2
  %498 = call i64 @test_bit(i32 %495, i32* %497)
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %530

500:                                              ; preds = %462
  %501 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %502 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %501, i32 0, i32 10
  %503 = load %struct.TYPE_32__*, %struct.TYPE_32__** %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 4
  %507 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %508 = and i32 %506, %507
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %530, label %510

510:                                              ; preds = %500
  %511 = load i32, i32* %14, align 4
  %512 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %513 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %512, i32 0, i32 9
  %514 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  %516 = and i32 %511, %515
  store i32 %516, i32* %18, align 4
  %517 = load i32, i32* %18, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %521, label %519

519:                                              ; preds = %510
  %520 = load i32, i32* %14, align 4
  store i32 %520, i32* %18, align 4
  br label %521

521:                                              ; preds = %519, %510
  %522 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %523 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %524 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %523, i32 0, i32 9
  %525 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %522, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %526)
  %528 = load i32, i32* %18, align 4
  %529 = call i32 @first_antenna(i32 %528)
  store i32 %529, i32* %14, align 4
  br label %530

530:                                              ; preds = %521, %500, %462
  %531 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %532 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %531, i32 0, i32 8
  %533 = load %struct.TYPE_19__*, %struct.TYPE_19__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %533, i32 0, i32 0
  %535 = load %struct.TYPE_18__*, %struct.TYPE_18__** %534, align 8
  %536 = icmp ne %struct.TYPE_18__* %535, null
  br i1 %536, label %537, label %554

537:                                              ; preds = %530
  %538 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %539 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %538, i32 0, i32 8
  %540 = load %struct.TYPE_19__*, %struct.TYPE_19__** %539, align 8
  %541 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %540, i32 0, i32 0
  %542 = load %struct.TYPE_18__*, %struct.TYPE_18__** %541, align 8
  %543 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %542, i32 0, i32 0
  %544 = load i64, i64* %543, align 8
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %554

546:                                              ; preds = %537
  %547 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %548 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %547, i32 0, i32 7
  %549 = load i64, i64* %548, align 8
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %554

551:                                              ; preds = %546
  %552 = load i32, i32* %14, align 4
  %553 = call i32 @first_antenna(i32 %552)
  store i32 %553, i32* %14, align 4
  br label %554

554:                                              ; preds = %551, %546, %537, %530
  %555 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %556 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %555, i32 0, i32 6
  %557 = load %struct.TYPE_20__*, %struct.TYPE_20__** %556, align 8
  %558 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 4
  %560 = load i32, i32* @RXON_RX_CHAIN_VALID_POS, align 4
  %561 = shl i32 %559, %560
  %562 = load i32, i32* %11, align 4
  %563 = or i32 %562, %561
  store i32 %563, i32* %11, align 4
  %564 = load i32, i32* %14, align 4
  %565 = load i32, i32* @RXON_RX_CHAIN_FORCE_MIMO_SEL_POS, align 4
  %566 = shl i32 %564, %565
  %567 = load i32, i32* %11, align 4
  %568 = or i32 %567, %566
  store i32 %568, i32* %11, align 4
  %569 = load i32, i32* %14, align 4
  %570 = load i32, i32* @RXON_RX_CHAIN_FORCE_SEL_POS, align 4
  %571 = shl i32 %569, %570
  %572 = load i32, i32* %11, align 4
  %573 = or i32 %572, %571
  store i32 %573, i32* %11, align 4
  %574 = load i32, i32* @RXON_RX_CHAIN_DRIVER_FORCE_POS, align 4
  %575 = shl i32 1, %574
  %576 = load i32, i32* %11, align 4
  %577 = or i32 %576, %575
  store i32 %577, i32* %11, align 4
  %578 = load i32, i32* %11, align 4
  %579 = call i8* @cpu_to_le16(i32 %578)
  %580 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %581 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %580, i32 0, i32 6
  store i8* %579, i8** %581, align 8
  %582 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %583 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 8
  switch i32 %584, label %621 [
    i32 130, label %585
    i32 129, label %610
    i32 128, label %610
  ]

585:                                              ; preds = %554
  %586 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %587 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %586, i32 0, i32 5
  %588 = load i32*, i32** %587, align 8
  %589 = bitcast i32* %588 to %struct.ieee80211_mgmt*
  %590 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %591 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 4
  %593 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %594 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %593, i32 0, i32 5
  %595 = load %struct.TYPE_21__*, %struct.TYPE_21__** %594, align 8
  %596 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %595, i32 0, i32 2
  %597 = load i32*, i32** %596, align 8
  %598 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %599 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %598, i32 0, i32 5
  %600 = load %struct.TYPE_21__*, %struct.TYPE_21__** %599, align 8
  %601 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %600, i32 0, i32 1
  %602 = load i32, i32* %601, align 4
  %603 = load i32*, i32** %22, align 8
  %604 = load i32, i32* %23, align 4
  %605 = load i32, i32* %21, align 4
  %606 = sext i32 %605 to i64
  %607 = sub i64 %606, 112
  %608 = trunc i64 %607 to i32
  %609 = call i32 @iwl_fill_probe_req(%struct.ieee80211_mgmt* %589, i32 %592, i32* %597, i32 %602, i32* %603, i32 %604, i32 %608)
  store i32 %609, i32* %10, align 4
  br label %623

610:                                              ; preds = %554, %554
  %611 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %612 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %611, i32 0, i32 5
  %613 = load i32*, i32** %612, align 8
  %614 = bitcast i32* %613 to %struct.ieee80211_mgmt*
  %615 = load i32, i32* @iwl_bcast_addr, align 4
  %616 = load i32, i32* %21, align 4
  %617 = sext i32 %616 to i64
  %618 = sub i64 %617, 112
  %619 = trunc i64 %618 to i32
  %620 = call i32 @iwl_fill_probe_req(%struct.ieee80211_mgmt* %614, i32 %615, i32* null, i32 0, i32* null, i32 0, i32 %619)
  store i32 %620, i32* %10, align 4
  br label %623

621:                                              ; preds = %554
  %622 = call i32 (...) @BUG()
  br label %623

623:                                              ; preds = %621, %610, %585
  %624 = load i32, i32* %10, align 4
  %625 = call i8* @cpu_to_le16(i32 %624)
  %626 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %627 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %626, i32 0, i32 4
  %628 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %627, i32 0, i32 0
  store i8* %625, i8** %628, align 8
  %629 = load i32, i32* @RXON_FILTER_ACCEPT_GRP_MSK, align 4
  %630 = load i32, i32* @RXON_FILTER_BCON_AWARE_MSK, align 4
  %631 = or i32 %629, %630
  %632 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %633 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %632, i32 0, i32 1
  %634 = load i32, i32* %633, align 4
  %635 = or i32 %634, %631
  store i32 %635, i32* %633, align 4
  %636 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %637 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 8
  switch i32 %638, label %747 [
    i32 129, label %639
    i32 130, label %653
    i32 128, label %669
  ]

639:                                              ; preds = %623
  %640 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %641 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %642 = load i32, i32* %12, align 4
  %643 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %644 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %643, i32 0, i32 5
  %645 = load i32*, i32** %644, align 8
  %646 = load i32, i32* %10, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds i32, i32* %645, i64 %647
  %649 = bitcast i32* %648 to i8*
  %650 = call i32 @iwl_get_channel_for_reset_scan(%struct.iwl_priv* %640, %struct.ieee80211_vif* %641, i32 %642, i8* %649)
  %651 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %652 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %651, i32 0, i32 2
  store i32 %650, i32* %652, align 8
  br label %747

653:                                              ; preds = %623
  %654 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %655 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %656 = load i32, i32* %12, align 4
  %657 = load i32, i32* %16, align 4
  %658 = load i32, i32* %13, align 4
  %659 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %660 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %659, i32 0, i32 5
  %661 = load i32*, i32** %660, align 8
  %662 = load i32, i32* %10, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds i32, i32* %661, i64 %663
  %665 = bitcast i32* %664 to i8*
  %666 = call i32 @iwl_get_channels_for_scan(%struct.iwl_priv* %654, %struct.ieee80211_vif* %655, i32 %656, i32 %657, i32 %658, i8* %665)
  %667 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %668 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %667, i32 0, i32 2
  store i32 %666, i32* %668, align 8
  br label %747

669:                                              ; preds = %623
  %670 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %671 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %672 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %671, i32 0, i32 4
  %673 = load i32, i32* %672, align 8
  %674 = call i32 @iwl_limit_dwell(%struct.iwl_priv* %670, i32 %673)
  store i32 %674, i32* %33, align 4
  %675 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %676 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %675, i32 0, i32 4
  %677 = load i32, i32* %676, align 8
  %678 = load i32, i32* %33, align 4
  %679 = call i32 @DIV_ROUND_UP(i32 %677, i32 %678)
  store i32 %679, i32* %31, align 4
  %680 = load i32, i32* %31, align 4
  %681 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %682 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %681, i32 0, i32 2
  store i32 %680, i32* %682, align 8
  %683 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %684 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %683, i32 0, i32 5
  %685 = load i32*, i32** %684, align 8
  %686 = load i32, i32* %10, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i32, i32* %685, i64 %687
  %689 = bitcast i32* %688 to i8*
  %690 = bitcast i8* %689 to %struct.iwl_scan_channel*
  store %struct.iwl_scan_channel* %690, %struct.iwl_scan_channel** %30, align 8
  store i32 0, i32* %32, align 4
  br label %691

691:                                              ; preds = %743, %669
  %692 = load i32, i32* %32, align 4
  %693 = load i32, i32* %31, align 4
  %694 = icmp slt i32 %692, %693
  br i1 %694, label %695, label %746

695:                                              ; preds = %691
  %696 = load i32, i32* @SCAN_CHANNEL_TYPE_PASSIVE, align 4
  %697 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %30, align 8
  %698 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %697, i32 0, i32 5
  store i32 %696, i32* %698, align 8
  %699 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %700 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %699, i32 0, i32 3
  %701 = load %struct.TYPE_22__*, %struct.TYPE_22__** %700, align 8
  %702 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %701, i32 0, i32 0
  %703 = load i32, i32* %702, align 4
  %704 = call i8* @cpu_to_le16(i32 %703)
  %705 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %30, align 8
  %706 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %705, i32 0, i32 4
  store i8* %704, i8** %706, align 8
  %707 = load i32, i32* %32, align 4
  %708 = load i32, i32* %31, align 4
  %709 = sub nsw i32 %708, 1
  %710 = icmp eq i32 %707, %709
  br i1 %710, label %711, label %719

711:                                              ; preds = %695
  %712 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %713 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %712, i32 0, i32 4
  %714 = load i32, i32* %713, align 8
  %715 = load i32, i32* %32, align 4
  %716 = load i32, i32* %33, align 4
  %717 = mul nsw i32 %715, %716
  %718 = sub nsw i32 %714, %717
  store i32 %718, i32* %33, align 4
  br label %719

719:                                              ; preds = %711, %695
  %720 = load i32, i32* %33, align 4
  %721 = call i8* @cpu_to_le16(i32 %720)
  %722 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %30, align 8
  %723 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %722, i32 0, i32 2
  store i8* %721, i8** %723, align 8
  %724 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %30, align 8
  %725 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %724, i32 0, i32 3
  store i8* %721, i8** %725, align 8
  %726 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %30, align 8
  %727 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %726, i32 0, i32 0
  store i32 110, i32* %727, align 8
  %728 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %729 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %728, i32 0, i32 3
  %730 = load %struct.TYPE_22__*, %struct.TYPE_22__** %729, align 8
  %731 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %730, i32 0, i32 1
  %732 = load i32, i32* %731, align 4
  %733 = icmp eq i32 %732, 131
  br i1 %733, label %734, label %737

734:                                              ; preds = %719
  %735 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %30, align 8
  %736 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %735, i32 0, i32 1
  store i32 59, i32* %736, align 4
  br label %740

737:                                              ; preds = %719
  %738 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %30, align 8
  %739 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %738, i32 0, i32 1
  store i32 40, i32* %739, align 4
  br label %740

740:                                              ; preds = %737, %734
  %741 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %30, align 8
  %742 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %741, i32 1
  store %struct.iwl_scan_channel* %742, %struct.iwl_scan_channel** %30, align 8
  br label %743

743:                                              ; preds = %740
  %744 = load i32, i32* %32, align 4
  %745 = add nsw i32 %744, 1
  store i32 %745, i32* %32, align 4
  br label %691

746:                                              ; preds = %691
  br label %747

747:                                              ; preds = %623, %746, %653, %639
  %748 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %749 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %748, i32 0, i32 2
  %750 = load i32, i32* %749, align 8
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %752, label %760

752:                                              ; preds = %747
  %753 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %754 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %755 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %754, i32 0, i32 2
  %756 = load i32, i32* %755, align 8
  %757 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %753, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %756)
  %758 = load i32, i32* @EIO, align 4
  %759 = sub nsw i32 0, %758
  store i32 %759, i32* %3, align 4
  br label %822

760:                                              ; preds = %747
  %761 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %762 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %761, i32 0, i32 4
  %763 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %762, i32 0, i32 0
  %764 = load i8*, i8** %763, align 8
  %765 = call i64 @le16_to_cpu(i8* %764)
  %766 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %767 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %766, i32 0, i32 2
  %768 = load i32, i32* %767, align 8
  %769 = sext i32 %768 to i64
  %770 = mul i64 %769, 40
  %771 = add i64 %765, %770
  %772 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 0
  %773 = load i32*, i32** %772, align 8
  %774 = getelementptr inbounds i32, i32* %773, i64 0
  %775 = load i32, i32* %774, align 4
  %776 = sext i32 %775 to i64
  %777 = add i64 %776, %771
  %778 = trunc i64 %777 to i32
  store i32 %778, i32* %774, align 4
  %779 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %780 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 2
  %781 = load %struct.iwl_scan_cmd**, %struct.iwl_scan_cmd*** %780, align 8
  %782 = getelementptr inbounds %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %781, i64 0
  store %struct.iwl_scan_cmd* %779, %struct.iwl_scan_cmd** %782, align 8
  %783 = load i32, i32* @IWL_HCMD_DFL_NOCOPY, align 4
  %784 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 1
  %785 = load i32*, i32** %784, align 8
  %786 = getelementptr inbounds i32, i32* %785, i64 0
  store i32 %783, i32* %786, align 4
  %787 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 0
  %788 = load i32*, i32** %787, align 8
  %789 = getelementptr inbounds i32, i32* %788, i64 0
  %790 = load i32, i32* %789, align 4
  %791 = call i8* @cpu_to_le16(i32 %790)
  %792 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %793 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %792, i32 0, i32 3
  store i8* %791, i8** %793, align 8
  %794 = load i32, i32* @STATUS_SCAN_HW, align 4
  %795 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %796 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %795, i32 0, i32 2
  %797 = call i32 @set_bit(i32 %794, i32* %796)
  %798 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %799 = call i32 @iwlagn_set_pan_params(%struct.iwl_priv* %798)
  store i32 %799, i32* %20, align 4
  %800 = load i32, i32* %20, align 4
  %801 = icmp ne i32 %800, 0
  br i1 %801, label %802, label %808

802:                                              ; preds = %760
  %803 = load i32, i32* @STATUS_SCAN_HW, align 4
  %804 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %805 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %804, i32 0, i32 2
  %806 = call i32 @clear_bit(i32 %803, i32* %805)
  %807 = load i32, i32* %20, align 4
  store i32 %807, i32* %3, align 4
  br label %822

808:                                              ; preds = %760
  %809 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %810 = call i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %809, %struct.iwl_host_cmd* %6)
  store i32 %810, i32* %20, align 4
  %811 = load i32, i32* %20, align 4
  %812 = icmp ne i32 %811, 0
  br i1 %812, label %813, label %820

813:                                              ; preds = %808
  %814 = load i32, i32* @STATUS_SCAN_HW, align 4
  %815 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %816 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %815, i32 0, i32 2
  %817 = call i32 @clear_bit(i32 %814, i32* %816)
  %818 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %819 = call i32 @iwlagn_set_pan_params(%struct.iwl_priv* %818)
  br label %820

820:                                              ; preds = %813, %808
  %821 = load i32, i32* %20, align 4
  store i32 %821, i32* %3, align 4
  br label %822

822:                                              ; preds = %820, %802, %752, %405, %120, %93
  %823 = load i32, i32* %3, align 4
  ret i32 %823
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.iwl_rxon_context* @iwl_rxon_ctx_from_vif(%struct.ieee80211_vif*) #1

declare dso_local %struct.iwl_scan_cmd* @kmalloc(i32, i32) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @memset(%struct.iwl_scan_cmd*, i32, i32) #1

declare dso_local i64 @iwl_is_any_associated(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @first_antenna(i32) #1

declare dso_local i32 @iwl_toggle_tx_ant(%struct.iwl_priv*, i32, i32) #1

declare dso_local i32 @iwl_ant_idx_to_flags(i32) #1

declare dso_local i32 @iwl_hw_set_rate_n_flags(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_fill_probe_req(%struct.ieee80211_mgmt*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @iwl_get_channel_for_reset_scan(%struct.iwl_priv*, %struct.ieee80211_vif*, i32, i8*) #1

declare dso_local i32 @iwl_get_channels_for_scan(%struct.iwl_priv*, %struct.ieee80211_vif*, i32, i32, i32, i8*) #1

declare dso_local i32 @iwl_limit_dwell(%struct.iwl_priv*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @iwlagn_set_pan_params(%struct.iwl_priv*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv*, %struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
