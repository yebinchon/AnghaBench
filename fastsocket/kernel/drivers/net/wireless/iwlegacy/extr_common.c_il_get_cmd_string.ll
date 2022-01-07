; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_get_cmd_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_get_cmd_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@C_ADD_STA = common dso_local global i32 0, align 4
@C_BT_CONFIG = common dso_local global i32 0, align 4
@C_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@C_CT_KILL_CONFIG = common dso_local global i32 0, align 4
@C_LEDS = common dso_local global i32 0, align 4
@C_PHY_CALIBRATION = common dso_local global i32 0, align 4
@C_POWER_TBL = common dso_local global i32 0, align 4
@C_QOS_PARAM = common dso_local global i32 0, align 4
@C_RATE_SCALE = common dso_local global i32 0, align 4
@C_REM_STA = common dso_local global i32 0, align 4
@C_RXON = common dso_local global i32 0, align 4
@C_RXON_ASSOC = common dso_local global i32 0, align 4
@C_RXON_TIMING = common dso_local global i32 0, align 4
@C_SCAN = common dso_local global i32 0, align 4
@C_SCAN_ABORT = common dso_local global i32 0, align 4
@C_SENSITIVITY = common dso_local global i32 0, align 4
@C_SPECTRUM_MEASUREMENT = common dso_local global i32 0, align 4
@C_STATS = common dso_local global i32 0, align 4
@C_TX = common dso_local global i32 0, align 4
@C_TX_BEACON = common dso_local global i32 0, align 4
@C_TX_LINK_QUALITY_CMD = common dso_local global i32 0, align 4
@C_TX_PWR_TBL = common dso_local global i32 0, align 4
@C_WEPKEY = common dso_local global i32 0, align 4
@N_3945_RX = common dso_local global i32 0, align 4
@N_ALIVE = common dso_local global i32 0, align 4
@N_BEACON = common dso_local global i32 0, align 4
@N_CARD_STATE = common dso_local global i32 0, align 4
@N_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@N_COMPRESSED_BA = common dso_local global i32 0, align 4
@N_ERROR = common dso_local global i32 0, align 4
@N_MISSED_BEACONS = common dso_local global i32 0, align 4
@N_PM_DEBUG_STATS = common dso_local global i32 0, align 4
@N_PM_SLEEP = common dso_local global i32 0, align 4
@N_RX = common dso_local global i32 0, align 4
@N_RX_MPDU = common dso_local global i32 0, align 4
@N_RX_PHY = common dso_local global i32 0, align 4
@N_SCAN_COMPLETE = common dso_local global i32 0, align 4
@N_SCAN_RESULTS = common dso_local global i32 0, align 4
@N_SCAN_START = common dso_local global i32 0, align 4
@N_SPECTRUM_MEASUREMENT = common dso_local global i32 0, align 4
@N_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @il_get_cmd_string(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %4 [
  ]

4:                                                ; preds = %1
  ret i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
