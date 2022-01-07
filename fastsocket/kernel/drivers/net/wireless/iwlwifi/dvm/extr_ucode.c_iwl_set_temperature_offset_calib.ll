; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_ucode.c_iwl_set_temperature_offset_calib.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_ucode.c_iwl_set_temperature_offset_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_calib_temperature_offset_cmd = type { i64, i32 }

@IWL_PHY_CALIBRATE_TEMP_OFFSET_CMD = common dso_local global i32 0, align 4
@DEFAULT_RADIO_SENSOR_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Radio sensor offset: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*)* @iwl_set_temperature_offset_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_set_temperature_offset_calib(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca %struct.iwl_calib_temperature_offset_cmd, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %4 = call i32 @memset(%struct.iwl_calib_temperature_offset_cmd* %3, i32 0, i32 16)
  %5 = getelementptr inbounds %struct.iwl_calib_temperature_offset_cmd, %struct.iwl_calib_temperature_offset_cmd* %3, i32 0, i32 1
  %6 = load i32, i32* @IWL_PHY_CALIBRATE_TEMP_OFFSET_CMD, align 4
  %7 = call i32 @iwl_set_calib_hdr(i32* %5, i32 %6)
  %8 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %9 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.iwl_calib_temperature_offset_cmd, %struct.iwl_calib_temperature_offset_cmd* %3, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = getelementptr inbounds %struct.iwl_calib_temperature_offset_cmd, %struct.iwl_calib_temperature_offset_cmd* %3, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i64, i64* @DEFAULT_RADIO_SENSOR_OFFSET, align 8
  %19 = getelementptr inbounds %struct.iwl_calib_temperature_offset_cmd, %struct.iwl_calib_temperature_offset_cmd* %3, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %22 = getelementptr inbounds %struct.iwl_calib_temperature_offset_cmd, %struct.iwl_calib_temperature_offset_cmd* %3, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @le16_to_cpu(i64 %23)
  %25 = call i32 @IWL_DEBUG_CALIB(%struct.iwl_priv* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %27 = bitcast %struct.iwl_calib_temperature_offset_cmd* %3 to i8*
  %28 = call i32 @iwl_calib_set(%struct.iwl_priv* %26, i8* %27, i32 16)
  ret i32 %28
}

declare dso_local i32 @memset(%struct.iwl_calib_temperature_offset_cmd*, i32, i32) #1

declare dso_local i32 @iwl_set_calib_hdr(i32*, i32) #1

declare dso_local i32 @IWL_DEBUG_CALIB(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @iwl_calib_set(%struct.iwl_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
