; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_get_cmd_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_get_cmd_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@ADAPTER_ADDRESS = common dso_local global i32 0, align 4
@AIRONET_INFO = common dso_local global i32 0, align 4
@AP_TX_POWER = common dso_local global i32 0, align 4
@ASSOCIATE = common dso_local global i32 0, align 4
@CARD_DISABLE = common dso_local global i32 0, align 4
@CCKM_INFO = common dso_local global i32 0, align 4
@CCX_VER_INFO = common dso_local global i32 0, align 4
@COUNTRY_INFO = common dso_local global i32 0, align 4
@DINO_CONFIG = common dso_local global i32 0, align 4
@EXT_SUPPORTED_RATES = common dso_local global i32 0, align 4
@FRAG_THRESHOLD = common dso_local global i32 0, align 4
@HOST_COMPLETE = common dso_local global i32 0, align 4
@IPW_PRE_POWER_DOWN = common dso_local global i32 0, align 4
@MEASUREMENT = common dso_local global i32 0, align 4
@MULTICAST_ADDRESS = common dso_local global i32 0, align 4
@PORT_TYPE = common dso_local global i32 0, align 4
@POWER_CAPABILITY = common dso_local global i32 0, align 4
@POWER_DOWN = common dso_local global i32 0, align 4
@POWER_MODE = common dso_local global i32 0, align 4
@PRODUCTION_COMMAND = common dso_local global i32 0, align 4
@QOS_PARAMETERS = common dso_local global i32 0, align 4
@RETRY_LIMIT = common dso_local global i32 0, align 4
@RSN_CAPABILITIES = common dso_local global i32 0, align 4
@RTS_THRESHOLD = common dso_local global i32 0, align 4
@RX_KEY = common dso_local global i32 0, align 4
@SCAN_ABORT = common dso_local global i32 0, align 4
@SCAN_REQUEST = common dso_local global i32 0, align 4
@SCAN_REQUEST_EXT = common dso_local global i32 0, align 4
@SEED_NUMBER = common dso_local global i32 0, align 4
@SENSITIVITY_CALIB = common dso_local global i32 0, align 4
@SET_CALIBRATION = common dso_local global i32 0, align 4
@SSID = common dso_local global i32 0, align 4
@SUPPORTED_CHANNELS = common dso_local global i32 0, align 4
@SUPPORTED_RATES = common dso_local global i32 0, align 4
@SYSTEM_CONFIG = common dso_local global i32 0, align 4
@TGI_TX_KEY = common dso_local global i32 0, align 4
@TPC_REPORT = common dso_local global i32 0, align 4
@TX_FLUSH = common dso_local global i32 0, align 4
@TX_POWER = common dso_local global i32 0, align 4
@VAP_BEACON_TEMPLATE = common dso_local global i32 0, align 4
@VAP_CELL_PWR_LIMIT = common dso_local global i32 0, align 4
@VAP_CF_PARAM_SET = common dso_local global i32 0, align 4
@VAP_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@VAP_DTIM_PERIOD = common dso_local global i32 0, align 4
@VAP_LOCAL_TX_PWR_CONSTRAINT = common dso_local global i32 0, align 4
@VAP_MANDATORY_CHANNELS = common dso_local global i32 0, align 4
@VAP_QUIET_INTERVALS = common dso_local global i32 0, align 4
@VAP_SET_BEACONING_STATE = common dso_local global i32 0, align 4
@WEP_KEY = common dso_local global i32 0, align 4
@WME_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_cmd_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_cmd_string(i32 %0) #0 {
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
