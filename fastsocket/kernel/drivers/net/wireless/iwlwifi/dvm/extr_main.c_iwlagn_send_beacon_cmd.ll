; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwlagn_send_beacon_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwlagn_send_beacon_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_14__*, i32, %struct.TYPE_12__*, %struct.TYPE_8__*, %struct.iwl_tx_beacon_cmd*, i32 }
%struct.TYPE_14__ = type { i64, %struct.iwl_tx_beacon_cmd* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.iwl_tx_beacon_cmd = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.iwl_host_cmd = type { i32*, i8**, %struct.iwl_tx_beacon_cmd**, i32, i32 }
%struct.ieee80211_tx_info = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }

@CMD_SYNC = common dso_local global i32 0, align 4
@REPLY_TX_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"trying to build beacon w/o beacon context!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TX_CMD_LIFE_TIME_INFINITE = common dso_local global i32 0, align 4
@TX_CMD_FLG_SEQ_CTL_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_TSF_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_STA_RATE_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IWL_FIRST_OFDM_RATE = common dso_local global i64 0, align 8
@IWL_FIRST_CCK_RATE = common dso_local global i64 0, align 8
@IWL_LAST_CCK_RATE = common dso_local global i64 0, align 8
@RATE_MCS_CCK_MSK = common dso_local global i64 0, align 8
@IWL_HCMD_DFL_NOCOPY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwlagn_send_beacon_cmd(%struct.iwl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_tx_beacon_cmd*, align 8
  %5 = alloca %struct.iwl_host_cmd, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  %10 = bitcast %struct.iwl_host_cmd* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 3
  %12 = load i32, i32* @CMD_SYNC, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 4
  %14 = load i32, i32* @REPLY_TX_BEACON, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 5
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %18, i32 0, i32 3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %24 = call i32 @IWL_ERR(%struct.iwl_priv* %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %206

25:                                               ; preds = %1
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = icmp ne %struct.TYPE_14__* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %206

37:                                               ; preds = %25
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 4
  %40 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %39, align 8
  %41 = icmp ne %struct.iwl_tx_beacon_cmd* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.iwl_tx_beacon_cmd* @kzalloc(i32 20, i32 %43)
  %45 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %46 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %45, i32 0, i32 4
  store %struct.iwl_tx_beacon_cmd* %44, %struct.iwl_tx_beacon_cmd** %46, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %49 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %48, i32 0, i32 4
  %50 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %49, align 8
  store %struct.iwl_tx_beacon_cmd* %50, %struct.iwl_tx_beacon_cmd** %4, align 8
  %51 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %4, align 8
  %52 = icmp ne %struct.iwl_tx_beacon_cmd* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %206

56:                                               ; preds = %47
  %57 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %58 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @cpu_to_le16(i32 %63)
  %65 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %4, align 8
  %66 = getelementptr inbounds %struct.iwl_tx_beacon_cmd, %struct.iwl_tx_beacon_cmd* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 4
  store i32 %64, i32* %67, align 4
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %69 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %68, i32 0, i32 3
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %4, align 8
  %74 = getelementptr inbounds %struct.iwl_tx_beacon_cmd, %struct.iwl_tx_beacon_cmd* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @TX_CMD_LIFE_TIME_INFINITE, align 4
  %77 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %4, align 8
  %78 = getelementptr inbounds %struct.iwl_tx_beacon_cmd, %struct.iwl_tx_beacon_cmd* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %82 = load i32, i32* @TX_CMD_FLG_TSF_MSK, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @TX_CMD_FLG_STA_RATE_MSK, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %4, align 8
  %87 = getelementptr inbounds %struct.iwl_tx_beacon_cmd, %struct.iwl_tx_beacon_cmd* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  %89 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %90 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %4, align 8
  %91 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %92 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %91, i32 0, i32 0
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @iwl_set_beacon_tim(%struct.iwl_priv* %89, %struct.iwl_tx_beacon_cmd* %90, %struct.iwl_tx_beacon_cmd* %95, i64 %96)
  %98 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %99 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %98, i32 0, i32 0
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_14__* %100)
  store %struct.ieee80211_tx_info* %101, %struct.ieee80211_tx_info** %6, align 8
  %102 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %103 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %56
  %111 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %112 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %110, %56
  store i64 0, i64* %9, align 8
  br label %130

122:                                              ; preds = %110
  %123 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %124 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %9, align 8
  br label %130

130:                                              ; preds = %122, %121
  %131 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %132 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %133 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %136 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %135, i32 0, i32 2
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @iwl_toggle_tx_ant(%struct.iwl_priv* %131, i32 %134, i32 %139)
  %141 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %142 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  %143 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %144 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @iwl_ant_idx_to_flags(i32 %145)
  store i64 %146, i64* %8, align 8
  %147 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %148 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %130
  %153 = load i64, i64* @IWL_FIRST_OFDM_RATE, align 8
  %154 = load i64, i64* %9, align 8
  %155 = add nsw i64 %154, %153
  store i64 %155, i64* %9, align 8
  br label %169

156:                                              ; preds = %130
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* @IWL_FIRST_CCK_RATE, align 8
  %159 = icmp sge i64 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %156
  %161 = load i64, i64* %9, align 8
  %162 = load i64, i64* @IWL_LAST_CCK_RATE, align 8
  %163 = icmp sle i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load i64, i64* @RATE_MCS_CCK_MSK, align 8
  %166 = load i64, i64* %8, align 8
  %167 = or i64 %166, %165
  store i64 %167, i64* %8, align 8
  br label %168

168:                                              ; preds = %164, %160, %156
  br label %169

169:                                              ; preds = %168, %152
  %170 = load i64, i64* %9, align 8
  %171 = load i64, i64* %8, align 8
  %172 = call i32 @iwl_hw_set_rate_n_flags(i64 %170, i64 %171)
  %173 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %4, align 8
  %174 = getelementptr inbounds %struct.iwl_tx_beacon_cmd, %struct.iwl_tx_beacon_cmd* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 1
  store i32 %172, i32* %175, align 4
  %176 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  store i32 20, i32* %178, align 4
  %179 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %4, align 8
  %180 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 2
  %181 = load %struct.iwl_tx_beacon_cmd**, %struct.iwl_tx_beacon_cmd*** %180, align 8
  %182 = getelementptr inbounds %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %181, i64 0
  store %struct.iwl_tx_beacon_cmd* %179, %struct.iwl_tx_beacon_cmd** %182, align 8
  %183 = load i8*, i8** @IWL_HCMD_DFL_NOCOPY, align 8
  %184 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 1
  %185 = load i8**, i8*** %184, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 0
  store i8* %183, i8** %186, align 8
  %187 = load i64, i64* %7, align 8
  %188 = trunc i64 %187 to i32
  %189 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  store i32 %188, i32* %191, align 4
  %192 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %193 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %192, i32 0, i32 0
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 1
  %196 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %195, align 8
  %197 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 2
  %198 = load %struct.iwl_tx_beacon_cmd**, %struct.iwl_tx_beacon_cmd*** %197, align 8
  %199 = getelementptr inbounds %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %198, i64 1
  store %struct.iwl_tx_beacon_cmd* %196, %struct.iwl_tx_beacon_cmd** %199, align 8
  %200 = load i8*, i8** @IWL_HCMD_DFL_NOCOPY, align 8
  %201 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 1
  %202 = load i8**, i8*** %201, align 8
  %203 = getelementptr inbounds i8*, i8** %202, i64 1
  store i8* %200, i8** %203, align 8
  %204 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %205 = call i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %204, %struct.iwl_host_cmd* %5)
  store i32 %205, i32* %2, align 4
  br label %206

206:                                              ; preds = %169, %53, %34, %22
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local %struct.iwl_tx_beacon_cmd* @kzalloc(i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @iwl_set_beacon_tim(%struct.iwl_priv*, %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd*, i64) #2

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_14__*) #2

declare dso_local i32 @iwl_toggle_tx_ant(%struct.iwl_priv*, i32, i32) #2

declare dso_local i64 @iwl_ant_idx_to_flags(i32) #2

declare dso_local i32 @iwl_hw_set_rate_n_flags(i64, i64) #2

declare dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv*, %struct.iwl_host_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
