; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_set_mac_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_set_mac_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_ds_mac_control = type { %struct.TYPE_2__, i64, i8* }
%struct.TYPE_2__ = type { i8* }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@CMD_MAC_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_set_mac_control(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.cmd_ds_mac_control, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %4 = load i32, i32* @LBS_DEB_CMD, align 4
  %5 = call i32 @lbs_deb_enter(i32 %4)
  %6 = call i8* @cpu_to_le16(i32 24)
  %7 = getelementptr inbounds %struct.cmd_ds_mac_control, %struct.cmd_ds_mac_control* %3, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %10 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @cpu_to_le16(i32 %11)
  %13 = getelementptr inbounds %struct.cmd_ds_mac_control, %struct.cmd_ds_mac_control* %3, i32 0, i32 2
  store i8* %12, i8** %13, align 8
  %14 = getelementptr inbounds %struct.cmd_ds_mac_control, %struct.cmd_ds_mac_control* %3, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %16 = load i32, i32* @CMD_MAC_CONTROL, align 4
  %17 = getelementptr inbounds %struct.cmd_ds_mac_control, %struct.cmd_ds_mac_control* %3, i32 0, i32 0
  %18 = call i32 @lbs_cmd_async(%struct.lbs_private* %15, i32 %16, %struct.TYPE_2__* %17, i32 24)
  %19 = load i32, i32* @LBS_DEB_CMD, align 4
  %20 = call i32 @lbs_deb_leave(i32 %19)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_cmd_async(%struct.lbs_private*, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
