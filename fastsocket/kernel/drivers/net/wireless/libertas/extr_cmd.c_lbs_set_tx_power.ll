; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_ds_802_11_rf_tx_power = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@CMD_ACT_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SET_RF_TX_POWER: %d dBm\0A\00", align 1
@CMD_802_11_RF_TX_POWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_set_tx_power(%struct.lbs_private* %0, i32 %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_ds_802_11_rf_tx_power, align 8
  %6 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @LBS_DEB_CMD, align 4
  %8 = call i32 @lbs_deb_enter(i32 %7)
  %9 = call i32 @memset(%struct.cmd_ds_802_11_rf_tx_power* %5, i32 0, i32 24)
  %10 = call i8* @cpu_to_le16(i32 24)
  %11 = getelementptr inbounds %struct.cmd_ds_802_11_rf_tx_power, %struct.cmd_ds_802_11_rf_tx_power* %5, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* @CMD_ACT_SET, align 4
  %14 = call i8* @cpu_to_le16(i32 %13)
  %15 = getelementptr inbounds %struct.cmd_ds_802_11_rf_tx_power, %struct.cmd_ds_802_11_rf_tx_power* %5, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i8* @cpu_to_le16(i32 %16)
  %18 = getelementptr inbounds %struct.cmd_ds_802_11_rf_tx_power, %struct.cmd_ds_802_11_rf_tx_power* %5, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %22 = load i32, i32* @CMD_802_11_RF_TX_POWER, align 4
  %23 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %21, i32 %22, %struct.cmd_ds_802_11_rf_tx_power* %5)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @LBS_DEB_CMD, align 4
  %25 = call i32 @lbs_deb_leave(i32 %24)
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @memset(%struct.cmd_ds_802_11_rf_tx_power*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_deb_cmd(i8*, i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_rf_tx_power*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
