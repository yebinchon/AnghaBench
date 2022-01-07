; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-hw-filter.c_flexcop_pid_ECM_PID_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-hw-filter.c_flexcop_pid_ECM_PID_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i32 }

@pid_filter_308 = common dso_local global i32 0, align 4
@ECM_PID = common dso_local global i32 0, align 4
@ECM_filter_sig = common dso_local global i32 0, align 4
@ECM_trans = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flexcop_device*, i32, i32)* @flexcop_pid_ECM_PID_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flexcop_pid_ECM_PID_ctrl(%struct.flexcop_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.flexcop_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.flexcop_device* %0, %struct.flexcop_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @pid_filter_308, align 4
  %8 = load i32, i32* @ECM_PID, align 4
  %9 = load i32, i32* @ECM_filter_sig, align 4
  %10 = load i32, i32* @ECM_trans, align 4
  %11 = call i32 @pid_ctrl(i32 %7, i32 %8, i32 %9, i32 %10, i32 0)
  ret void
}

declare dso_local i32 @pid_ctrl(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
