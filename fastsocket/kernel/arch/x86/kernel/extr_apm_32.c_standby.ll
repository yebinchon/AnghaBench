; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_apm_32.c_standby.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_apm_32.c_standby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMSG_SUSPEND = common dso_local global i32 0, align 4
@APM_STATE_STANDBY = common dso_local global i32 0, align 4
@APM_SUCCESS = common dso_local global i32 0, align 4
@APM_NO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@PMSG_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @standby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @standby() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PMSG_SUSPEND, align 4
  %3 = call i32 @dpm_suspend_noirq(i32 %2)
  %4 = call i32 (...) @local_irq_disable()
  %5 = load i32, i32* @PMSG_SUSPEND, align 4
  %6 = call i32 @sysdev_suspend(i32 %5)
  %7 = call i32 (...) @local_irq_enable()
  %8 = load i32, i32* @APM_STATE_STANDBY, align 4
  %9 = call i32 @set_system_power_state(i32 %8)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @APM_SUCCESS, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @APM_NO_ERROR, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @apm_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %13, %0
  %21 = call i32 (...) @local_irq_disable()
  %22 = call i32 (...) @sysdev_resume()
  %23 = call i32 (...) @local_irq_enable()
  %24 = load i32, i32* @PMSG_RESUME, align 4
  %25 = call i32 @dpm_resume_noirq(i32 %24)
  ret void
}

declare dso_local i32 @dpm_suspend_noirq(i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @sysdev_suspend(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @set_system_power_state(i32) #1

declare dso_local i32 @apm_error(i8*, i32) #1

declare dso_local i32 @sysdev_resume(...) #1

declare dso_local i32 @dpm_resume_noirq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
