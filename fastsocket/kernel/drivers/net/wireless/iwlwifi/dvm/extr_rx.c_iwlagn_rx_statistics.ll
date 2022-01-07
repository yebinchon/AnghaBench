; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rx.c_iwlagn_rx_statistics.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rx.c_iwlagn_rx_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, %struct.TYPE_17__, %struct.TYPE_16__*, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { i32 (%struct.iwl_priv*)* }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.iwl_rx_packet = type { %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.statistics_general_common = type { i64 }
%struct.statistics_rx_non_phy = type { i64 }
%struct.statistics_rx_phy = type { i64 }
%struct.statistics_rx_ht_phy = type { i64 }
%struct.statistics_tx = type { i64 }
%struct.statistics_bt_activity = type { i64 }
%struct.iwl_bt_notif_statistics = type { i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.statistics_tx }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.statistics_tx, %struct.statistics_tx, %struct.statistics_tx }
%struct.TYPE_11__ = type { i32, %struct.statistics_tx }
%struct.TYPE_10__ = type { %struct.statistics_tx, %struct.statistics_tx }
%struct.iwl_notif_statistics = type { i32, %struct.statistics_tx, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { %struct.statistics_tx, %struct.statistics_tx, %struct.statistics_tx, %struct.statistics_tx }
%struct.TYPE_13__ = type { %struct.statistics_tx }

@jiffies = common dso_local global i64 0, align 8
@FH_RSCSR_FRAME_SIZE_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Statistics notification received (%d bytes).\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"len %d doesn't match BT (%zu) or normal (%zu)\0A\00", align 1
@STATISTICS_REPLY_FLG_HT40_MODE_MSK = common dso_local global i32 0, align 4
@STATUS_STATISTICS = common dso_local global i32 0, align 4
@STATUS_SCANNING = common dso_local global i32 0, align 4
@STATISTICS_NOTIFICATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_device_cmd*)* @iwlagn_rx_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_rx_statistics(%struct.iwl_priv* %0, %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_device_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %7 = alloca %struct.iwl_device_cmd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_rx_packet*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.statistics_general_common*, align 8
  %15 = alloca %struct.statistics_rx_non_phy*, align 8
  %16 = alloca %struct.statistics_rx_phy*, align 8
  %17 = alloca %struct.statistics_rx_ht_phy*, align 8
  %18 = alloca %struct.statistics_rx_phy*, align 8
  %19 = alloca %struct.statistics_tx*, align 8
  %20 = alloca %struct.statistics_bt_activity*, align 8
  %21 = alloca %struct.iwl_bt_notif_statistics*, align 8
  %22 = alloca %struct.iwl_notif_statistics*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %6, align 8
  store %struct.iwl_device_cmd* %2, %struct.iwl_device_cmd** %7, align 8
  %23 = load i64, i64* @jiffies, align 8
  store i64 %23, i64* %8, align 8
  store i32 60, i32* %9, align 4
  %24 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %6, align 8
  %25 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %24)
  store %struct.iwl_rx_packet* %25, %struct.iwl_rx_packet** %11, align 8
  %26 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %11, align 8
  %27 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = load i32, i32* @FH_RSCSR_FRAME_SIZE_MSK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %12, align 4
  %36 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @IWL_DEBUG_RX(%struct.iwl_priv* %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %40 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %44, 72
  br i1 %45, label %46, label %80

46:                                               ; preds = %3
  %47 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %11, align 8
  %48 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %47, i32 0, i32 1
  %49 = bitcast i32* %48 to i8*
  %50 = bitcast i8* %49 to %struct.iwl_bt_notif_statistics*
  store %struct.iwl_bt_notif_statistics* %50, %struct.iwl_bt_notif_statistics** %21, align 8
  %51 = load %struct.iwl_bt_notif_statistics*, %struct.iwl_bt_notif_statistics** %21, align 8
  %52 = getelementptr inbounds %struct.iwl_bt_notif_statistics, %struct.iwl_bt_notif_statistics* %51, i32 0, i32 0
  store i32* %52, i32** %13, align 8
  %53 = load %struct.iwl_bt_notif_statistics*, %struct.iwl_bt_notif_statistics** %21, align 8
  %54 = getelementptr inbounds %struct.iwl_bt_notif_statistics, %struct.iwl_bt_notif_statistics* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = bitcast %struct.statistics_tx* %55 to %struct.statistics_general_common*
  store %struct.statistics_general_common* %56, %struct.statistics_general_common** %14, align 8
  %57 = load %struct.iwl_bt_notif_statistics*, %struct.iwl_bt_notif_statistics** %21, align 8
  %58 = getelementptr inbounds %struct.iwl_bt_notif_statistics, %struct.iwl_bt_notif_statistics* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = bitcast %struct.statistics_tx* %60 to %struct.statistics_rx_non_phy*
  store %struct.statistics_rx_non_phy* %61, %struct.statistics_rx_non_phy** %15, align 8
  %62 = load %struct.iwl_bt_notif_statistics*, %struct.iwl_bt_notif_statistics** %21, align 8
  %63 = getelementptr inbounds %struct.iwl_bt_notif_statistics, %struct.iwl_bt_notif_statistics* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = bitcast %struct.statistics_tx* %64 to %struct.statistics_rx_phy*
  store %struct.statistics_rx_phy* %65, %struct.statistics_rx_phy** %16, align 8
  %66 = load %struct.iwl_bt_notif_statistics*, %struct.iwl_bt_notif_statistics** %21, align 8
  %67 = getelementptr inbounds %struct.iwl_bt_notif_statistics, %struct.iwl_bt_notif_statistics* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = bitcast %struct.statistics_tx* %68 to %struct.statistics_rx_ht_phy*
  store %struct.statistics_rx_ht_phy* %69, %struct.statistics_rx_ht_phy** %17, align 8
  %70 = load %struct.iwl_bt_notif_statistics*, %struct.iwl_bt_notif_statistics** %21, align 8
  %71 = getelementptr inbounds %struct.iwl_bt_notif_statistics, %struct.iwl_bt_notif_statistics* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = bitcast %struct.statistics_tx* %72 to %struct.statistics_rx_phy*
  store %struct.statistics_rx_phy* %73, %struct.statistics_rx_phy** %18, align 8
  %74 = load %struct.iwl_bt_notif_statistics*, %struct.iwl_bt_notif_statistics** %21, align 8
  %75 = getelementptr inbounds %struct.iwl_bt_notif_statistics, %struct.iwl_bt_notif_statistics* %74, i32 0, i32 3
  store %struct.statistics_tx* %75, %struct.statistics_tx** %19, align 8
  %76 = load %struct.iwl_bt_notif_statistics*, %struct.iwl_bt_notif_statistics** %21, align 8
  %77 = getelementptr inbounds %struct.iwl_bt_notif_statistics, %struct.iwl_bt_notif_statistics* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = bitcast %struct.statistics_tx* %78 to %struct.statistics_bt_activity*
  store %struct.statistics_bt_activity* %79, %struct.statistics_bt_activity** %20, align 8
  br label %121

80:                                               ; preds = %3
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp eq i64 %82, 56
  br i1 %83, label %84, label %113

84:                                               ; preds = %80
  %85 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %11, align 8
  %86 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %85, i32 0, i32 1
  %87 = bitcast i32* %86 to i8*
  %88 = bitcast i8* %87 to %struct.iwl_notif_statistics*
  store %struct.iwl_notif_statistics* %88, %struct.iwl_notif_statistics** %22, align 8
  %89 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %22, align 8
  %90 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %89, i32 0, i32 0
  store i32* %90, i32** %13, align 8
  %91 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %22, align 8
  %92 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = bitcast %struct.statistics_tx* %93 to %struct.statistics_general_common*
  store %struct.statistics_general_common* %94, %struct.statistics_general_common** %14, align 8
  %95 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %22, align 8
  %96 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 3
  %98 = bitcast %struct.statistics_tx* %97 to %struct.statistics_rx_non_phy*
  store %struct.statistics_rx_non_phy* %98, %struct.statistics_rx_non_phy** %15, align 8
  %99 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %22, align 8
  %100 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = bitcast %struct.statistics_tx* %101 to %struct.statistics_rx_phy*
  store %struct.statistics_rx_phy* %102, %struct.statistics_rx_phy** %16, align 8
  %103 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %22, align 8
  %104 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = bitcast %struct.statistics_tx* %105 to %struct.statistics_rx_ht_phy*
  store %struct.statistics_rx_ht_phy* %106, %struct.statistics_rx_ht_phy** %17, align 8
  %107 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %22, align 8
  %108 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = bitcast %struct.statistics_tx* %109 to %struct.statistics_rx_phy*
  store %struct.statistics_rx_phy* %110, %struct.statistics_rx_phy** %18, align 8
  %111 = load %struct.iwl_notif_statistics*, %struct.iwl_notif_statistics** %22, align 8
  %112 = getelementptr inbounds %struct.iwl_notif_statistics, %struct.iwl_notif_statistics* %111, i32 0, i32 1
  store %struct.statistics_tx* %112, %struct.statistics_tx** %19, align 8
  store %struct.statistics_bt_activity* null, %struct.statistics_bt_activity** %20, align 8
  br label %120

113:                                              ; preds = %80
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 72, i32 56)
  %116 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %117 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = call i32 @spin_unlock(i32* %118)
  store i32 0, i32* %4, align 4
  br label %270

120:                                              ; preds = %84
  br label %121

121:                                              ; preds = %120, %46
  %122 = load %struct.statistics_general_common*, %struct.statistics_general_common** %14, align 8
  %123 = getelementptr inbounds %struct.statistics_general_common, %struct.statistics_general_common* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %126 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %124, %129
  br i1 %130, label %143, label %131

131:                                              ; preds = %121
  %132 = load i32*, i32** %13, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @STATISTICS_REPLY_FLG_HT40_MODE_MSK, align 4
  %135 = and i32 %133, %134
  %136 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %137 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @STATISTICS_REPLY_FLG_HT40_MODE_MSK, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %135, %141
  br label %143

143:                                              ; preds = %131, %121
  %144 = phi i1 [ true, %121 ], [ %142, %131 ]
  %145 = zext i1 %144 to i32
  store i32 %145, i32* %10, align 4
  %146 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %147 = load %struct.statistics_general_common*, %struct.statistics_general_common** %14, align 8
  %148 = bitcast %struct.statistics_general_common* %147 to %struct.statistics_tx*
  %149 = load %struct.statistics_rx_non_phy*, %struct.statistics_rx_non_phy** %15, align 8
  %150 = bitcast %struct.statistics_rx_non_phy* %149 to %struct.statistics_tx*
  %151 = load %struct.statistics_rx_phy*, %struct.statistics_rx_phy** %16, align 8
  %152 = bitcast %struct.statistics_rx_phy* %151 to %struct.statistics_tx*
  %153 = load %struct.statistics_rx_ht_phy*, %struct.statistics_rx_ht_phy** %17, align 8
  %154 = bitcast %struct.statistics_rx_ht_phy* %153 to %struct.statistics_tx*
  %155 = load %struct.statistics_rx_phy*, %struct.statistics_rx_phy** %18, align 8
  %156 = bitcast %struct.statistics_rx_phy* %155 to %struct.statistics_tx*
  %157 = load %struct.statistics_tx*, %struct.statistics_tx** %19, align 8
  %158 = load %struct.statistics_bt_activity*, %struct.statistics_bt_activity** %20, align 8
  %159 = bitcast %struct.statistics_bt_activity* %158 to %struct.statistics_tx*
  %160 = call i32 @iwlagn_accumulative_statistics(%struct.iwl_priv* %146, %struct.statistics_tx* %148, %struct.statistics_tx* %150, %struct.statistics_tx* %152, %struct.statistics_tx* %154, %struct.statistics_tx* %156, %struct.statistics_tx* %157, %struct.statistics_tx* %159)
  %161 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %162 = load %struct.statistics_rx_phy*, %struct.statistics_rx_phy** %16, align 8
  %163 = bitcast %struct.statistics_rx_phy* %162 to %struct.statistics_tx*
  %164 = load %struct.statistics_rx_ht_phy*, %struct.statistics_rx_ht_phy** %17, align 8
  %165 = bitcast %struct.statistics_rx_ht_phy* %164 to %struct.statistics_tx*
  %166 = load %struct.statistics_tx*, %struct.statistics_tx** %19, align 8
  %167 = load i64, i64* %8, align 8
  %168 = call i32 @iwlagn_recover_from_statistics(%struct.iwl_priv* %161, %struct.statistics_tx* %163, %struct.statistics_tx* %165, %struct.statistics_tx* %166, i64 %167)
  %169 = load i32*, i32** %13, align 8
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %172 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  store i32 %170, i32* %173, align 8
  %174 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %175 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 8
  %177 = load %struct.statistics_general_common*, %struct.statistics_general_common** %14, align 8
  %178 = bitcast %struct.statistics_general_common* %177 to %struct.statistics_tx*
  %179 = call i32 @memcpy(%struct.TYPE_18__* %176, %struct.statistics_tx* %178, i32 8)
  %180 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %181 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 7
  %183 = load %struct.statistics_rx_non_phy*, %struct.statistics_rx_non_phy** %15, align 8
  %184 = bitcast %struct.statistics_rx_non_phy* %183 to %struct.statistics_tx*
  %185 = call i32 @memcpy(%struct.TYPE_18__* %182, %struct.statistics_tx* %184, i32 8)
  %186 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %187 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 6
  %189 = load %struct.statistics_rx_phy*, %struct.statistics_rx_phy** %16, align 8
  %190 = bitcast %struct.statistics_rx_phy* %189 to %struct.statistics_tx*
  %191 = call i32 @memcpy(%struct.TYPE_18__* %188, %struct.statistics_tx* %190, i32 8)
  %192 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %193 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 5
  %195 = load %struct.statistics_rx_ht_phy*, %struct.statistics_rx_ht_phy** %17, align 8
  %196 = bitcast %struct.statistics_rx_ht_phy* %195 to %struct.statistics_tx*
  %197 = call i32 @memcpy(%struct.TYPE_18__* %194, %struct.statistics_tx* %196, i32 8)
  %198 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %199 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 4
  %201 = load %struct.statistics_rx_phy*, %struct.statistics_rx_phy** %18, align 8
  %202 = bitcast %struct.statistics_rx_phy* %201 to %struct.statistics_tx*
  %203 = call i32 @memcpy(%struct.TYPE_18__* %200, %struct.statistics_tx* %202, i32 8)
  %204 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %205 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 3
  %207 = load %struct.statistics_tx*, %struct.statistics_tx** %19, align 8
  %208 = call i32 @memcpy(%struct.TYPE_18__* %206, %struct.statistics_tx* %207, i32 8)
  %209 = load i64, i64* %8, align 8
  %210 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %211 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %210, i32 0, i32 0
  store i64 %209, i64* %211, align 8
  %212 = load i32, i32* @STATUS_STATISTICS, align 4
  %213 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %214 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %213, i32 0, i32 5
  %215 = call i32 @set_bit(i32 %212, i32* %214)
  %216 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %217 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %216, i32 0, i32 6
  %218 = load i64, i64* @jiffies, align 8
  %219 = call i64 @msecs_to_jiffies(i32 60000)
  %220 = add i64 %218, %219
  %221 = call i32 @mod_timer(i32* %217, i64 %220)
  %222 = load i32, i32* @STATUS_SCANNING, align 4
  %223 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %224 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %223, i32 0, i32 5
  %225 = call i32 @test_bit(i32 %222, i32* %224)
  %226 = icmp ne i32 %225, 0
  %227 = xor i1 %226, true
  %228 = zext i1 %227 to i32
  %229 = call i64 @unlikely(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %247

231:                                              ; preds = %143
  %232 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %11, align 8
  %233 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @STATISTICS_NOTIFICATION, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %247

238:                                              ; preds = %231
  %239 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %240 = call i32 @iwlagn_rx_calc_noise(%struct.iwl_priv* %239)
  %241 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %242 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %245 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %244, i32 0, i32 3
  %246 = call i32 @queue_work(i32 %243, i32* %245)
  br label %247

247:                                              ; preds = %238, %231, %143
  %248 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %249 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %248, i32 0, i32 2
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 0
  %252 = load i32 (%struct.iwl_priv*)*, i32 (%struct.iwl_priv*)** %251, align 8
  %253 = icmp ne i32 (%struct.iwl_priv*)* %252, null
  br i1 %253, label %254, label %265

254:                                              ; preds = %247
  %255 = load i32, i32* %10, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %254
  %258 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %259 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %258, i32 0, i32 2
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 0
  %262 = load i32 (%struct.iwl_priv*)*, i32 (%struct.iwl_priv*)** %261, align 8
  %263 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %264 = call i32 %262(%struct.iwl_priv* %263)
  br label %265

265:                                              ; preds = %257, %254, %247
  %266 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %267 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 1
  %269 = call i32 @spin_unlock(i32* %268)
  store i32 0, i32* %4, align 4
  br label %270

270:                                              ; preds = %265, %113
  %271 = load i32, i32* %4, align 4
  ret i32 %271
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_RX(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iwlagn_accumulative_statistics(%struct.iwl_priv*, %struct.statistics_tx*, %struct.statistics_tx*, %struct.statistics_tx*, %struct.statistics_tx*, %struct.statistics_tx*, %struct.statistics_tx*, %struct.statistics_tx*) #1

declare dso_local i32 @iwlagn_recover_from_statistics(%struct.iwl_priv*, %struct.statistics_tx*, %struct.statistics_tx*, %struct.statistics_tx*, i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.statistics_tx*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @iwlagn_rx_calc_noise(%struct.iwl_priv*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
