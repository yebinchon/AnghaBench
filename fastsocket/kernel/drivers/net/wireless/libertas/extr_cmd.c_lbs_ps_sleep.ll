; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_ps_sleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_ps_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }

@LBS_DEB_HOST = common dso_local global i32 0, align 4
@CMD_802_11_PS_MODE = common dso_local global i32 0, align 4
@CMD_SUBCMD_ENTER_PS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_ps_sleep(%struct.lbs_private* %0, i32 %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @LBS_DEB_HOST, align 4
  %6 = call i32 @lbs_deb_enter(i32 %5)
  %7 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %8 = load i32, i32* @CMD_802_11_PS_MODE, align 4
  %9 = load i32, i32* @CMD_SUBCMD_ENTER_PS, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @lbs_prepare_and_send_command(%struct.lbs_private* %7, i32 %8, i32 %9, i32 %10, i32 0, i32* null)
  %12 = load i32, i32* @LBS_DEB_HOST, align 4
  %13 = call i32 @lbs_deb_leave(i32 %12)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_prepare_and_send_command(%struct.lbs_private*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
