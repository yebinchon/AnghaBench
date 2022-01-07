; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_sg_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_sg_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_bt_wlan_coex_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"acx sg cfg\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RATE_INDEX_24MBPS = common dso_local global i32 0, align 4
@PTA_BT_HP_MAXTIME_DEF = common dso_local global i32 0, align 4
@PTA_WLAN_HP_MAX_TIME_DEF = common dso_local global i32 0, align 4
@PTA_SENSE_DISABLE_TIMER_DEF = common dso_local global i32 0, align 4
@PTA_PROTECTIVE_RX_TIME_DEF = common dso_local global i32 0, align 4
@PTA_PROTECTIVE_TX_TIME_DEF = common dso_local global i32 0, align 4
@PTA_PROTECTIVE_RX_TIME_FAST_DEF = common dso_local global i32 0, align 4
@PTA_PROTECTIVE_TX_TIME_FAST_DEF = common dso_local global i32 0, align 4
@PTA_CYCLE_TIME_FAST_DEF = common dso_local global i32 0, align 4
@PTA_ANTI_STARVE_PERIOD_DEF = common dso_local global i32 0, align 4
@PTA_TIMEOUT_NEXT_BT_LP_PACKET_DEF = common dso_local global i32 0, align 4
@PTA_TIME_BEFORE_BEACON_DEF = common dso_local global i32 0, align 4
@PTA_HPDM_MAX_TIME_DEF = common dso_local global i32 0, align 4
@PTA_TIME_OUT_NEXT_WLAN_DEF = common dso_local global i32 0, align 4
@PTA_ANTENNA_TYPE_DEF = common dso_local global i32 0, align 4
@PTA_SIGNALING_TYPE_DEF = common dso_local global i32 0, align 4
@PTA_AFH_LEVERAGE_ON_DEF = common dso_local global i32 0, align 4
@PTA_NUMBER_QUIET_CYCLE_DEF = common dso_local global i32 0, align 4
@PTA_MAX_NUM_CTS_DEF = common dso_local global i32 0, align 4
@PTA_NUMBER_OF_WLAN_PACKETS_DEF = common dso_local global i32 0, align 4
@PTA_NUMBER_OF_BT_PACKETS_DEF = common dso_local global i32 0, align 4
@PTA_RX_FOR_AVALANCHE_DEF = common dso_local global i32 0, align 4
@PTA_ELP_HP_DEF = common dso_local global i32 0, align 4
@PTA_ANTI_STARVE_NUM_CYCLE_DEF = common dso_local global i32 0, align 4
@PTA_ACK_MODE_DEF = common dso_local global i32 0, align 4
@PTA_ALLOW_PA_SD_DEF = common dso_local global i32 0, align 4
@PTA_AUTO_MODE_NO_CTS_DEF = common dso_local global i32 0, align 4
@PTA_BT_HP_RESPECTED_DEF = common dso_local global i32 0, align 4
@ACX_SG_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to set sg config: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_sg_cfg(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca %struct.acx_bt_wlan_coex_param*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %5 = load i32, i32* @DEBUG_ACX, align 4
  %6 = call i32 @wl1251_debug(i32 %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.acx_bt_wlan_coex_param* @kzalloc(i32 112, i32 %7)
  store %struct.acx_bt_wlan_coex_param* %8, %struct.acx_bt_wlan_coex_param** %3, align 8
  %9 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %10 = icmp ne %struct.acx_bt_wlan_coex_param* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %109

14:                                               ; preds = %1
  %15 = load i32, i32* @RATE_INDEX_24MBPS, align 4
  %16 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %17 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %16, i32 0, i32 27
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @PTA_BT_HP_MAXTIME_DEF, align 4
  %19 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %20 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %19, i32 0, i32 26
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @PTA_WLAN_HP_MAX_TIME_DEF, align 4
  %22 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %23 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %22, i32 0, i32 25
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @PTA_SENSE_DISABLE_TIMER_DEF, align 4
  %25 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %26 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %25, i32 0, i32 24
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @PTA_PROTECTIVE_RX_TIME_DEF, align 4
  %28 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %29 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %28, i32 0, i32 23
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @PTA_PROTECTIVE_TX_TIME_DEF, align 4
  %31 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %32 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %31, i32 0, i32 22
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @PTA_PROTECTIVE_RX_TIME_FAST_DEF, align 4
  %34 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %35 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %34, i32 0, i32 21
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @PTA_PROTECTIVE_TX_TIME_FAST_DEF, align 4
  %37 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %38 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %37, i32 0, i32 20
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @PTA_CYCLE_TIME_FAST_DEF, align 4
  %40 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %41 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %40, i32 0, i32 19
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @PTA_ANTI_STARVE_PERIOD_DEF, align 4
  %43 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %44 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %43, i32 0, i32 18
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @PTA_TIMEOUT_NEXT_BT_LP_PACKET_DEF, align 4
  %46 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %47 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %46, i32 0, i32 17
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @PTA_TIME_BEFORE_BEACON_DEF, align 4
  %49 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %50 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %49, i32 0, i32 16
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @PTA_HPDM_MAX_TIME_DEF, align 4
  %52 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %53 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %52, i32 0, i32 15
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @PTA_TIME_OUT_NEXT_WLAN_DEF, align 4
  %55 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %56 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %55, i32 0, i32 14
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @PTA_ANTENNA_TYPE_DEF, align 4
  %58 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %59 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %58, i32 0, i32 13
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @PTA_SIGNALING_TYPE_DEF, align 4
  %61 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %62 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %61, i32 0, i32 12
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @PTA_AFH_LEVERAGE_ON_DEF, align 4
  %64 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %65 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %64, i32 0, i32 11
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @PTA_NUMBER_QUIET_CYCLE_DEF, align 4
  %67 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %68 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %67, i32 0, i32 10
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @PTA_MAX_NUM_CTS_DEF, align 4
  %70 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %71 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %70, i32 0, i32 9
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @PTA_NUMBER_OF_WLAN_PACKETS_DEF, align 4
  %73 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %74 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %73, i32 0, i32 8
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @PTA_NUMBER_OF_BT_PACKETS_DEF, align 4
  %76 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %77 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @PTA_RX_FOR_AVALANCHE_DEF, align 4
  %79 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %80 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @PTA_ELP_HP_DEF, align 4
  %82 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %83 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @PTA_ANTI_STARVE_NUM_CYCLE_DEF, align 4
  %85 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %86 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @PTA_ACK_MODE_DEF, align 4
  %88 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %89 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @PTA_ALLOW_PA_SD_DEF, align 4
  %91 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %92 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @PTA_AUTO_MODE_NO_CTS_DEF, align 4
  %94 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %95 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @PTA_BT_HP_RESPECTED_DEF, align 4
  %97 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %98 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %100 = load i32, i32* @ACX_SG_CFG, align 4
  %101 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %102 = call i32 @wl1251_cmd_configure(%struct.wl1251* %99, i32 %100, %struct.acx_bt_wlan_coex_param* %101, i32 112)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %14
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @wl1251_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  br label %109

108:                                              ; preds = %14
  br label %109

109:                                              ; preds = %108, %105, %11
  %110 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %111 = call i32 @kfree(%struct.acx_bt_wlan_coex_param* %110)
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_bt_wlan_coex_param* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_bt_wlan_coex_param*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_bt_wlan_coex_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
