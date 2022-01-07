; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_bcn_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_bcn_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i64 }
%struct.cmd_ds_command = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cmd_ds_802_11_beacon_control }
%struct.cmd_ds_802_11_beacon_control = type { i8*, i8*, i8* }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@S_DS_GEN = common dso_local global i64 0, align 8
@CMD_802_11_BEACON_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.cmd_ds_command*, i64)* @lbs_cmd_bcn_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_cmd_bcn_ctrl(%struct.lbs_private* %0, %struct.cmd_ds_command* %1, i64 %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca %struct.cmd_ds_command*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cmd_ds_802_11_beacon_control*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store %struct.cmd_ds_command* %1, %struct.cmd_ds_command** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %5, align 8
  %9 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.cmd_ds_802_11_beacon_control* %10, %struct.cmd_ds_802_11_beacon_control** %7, align 8
  %11 = load i32, i32* @LBS_DEB_CMD, align 4
  %12 = call i32 @lbs_deb_enter(i32 %11)
  %13 = load i64, i64* @S_DS_GEN, align 8
  %14 = add i64 24, %13
  %15 = call i8* @cpu_to_le16(i64 %14)
  %16 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %5, align 8
  %17 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i64, i64* @CMD_802_11_BEACON_CTRL, align 8
  %19 = call i8* @cpu_to_le16(i64 %18)
  %20 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %5, align 8
  %21 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i8* @cpu_to_le16(i64 %22)
  %24 = load %struct.cmd_ds_802_11_beacon_control*, %struct.cmd_ds_802_11_beacon_control** %7, align 8
  %25 = getelementptr inbounds %struct.cmd_ds_802_11_beacon_control, %struct.cmd_ds_802_11_beacon_control* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %27 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @cpu_to_le16(i64 %28)
  %30 = load %struct.cmd_ds_802_11_beacon_control*, %struct.cmd_ds_802_11_beacon_control** %7, align 8
  %31 = getelementptr inbounds %struct.cmd_ds_802_11_beacon_control, %struct.cmd_ds_802_11_beacon_control* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %33 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i8* @cpu_to_le16(i64 %34)
  %36 = load %struct.cmd_ds_802_11_beacon_control*, %struct.cmd_ds_802_11_beacon_control** %7, align 8
  %37 = getelementptr inbounds %struct.cmd_ds_802_11_beacon_control, %struct.cmd_ds_802_11_beacon_control* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @LBS_DEB_CMD, align 4
  %39 = call i32 @lbs_deb_leave(i32 %38)
  ret i32 0
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
