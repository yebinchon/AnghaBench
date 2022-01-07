; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_apm_32.c_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_apm_32.c_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_user = type { i32, i64, %struct.apm_user* }

@PMSG_SUSPEND = common dso_local global i32 0, align 4
@APM_STATE_SUSPEND = common dso_local global i32 0, align 4
@ignore_normal_resume = common dso_local global i32 0, align 4
@APM_NO_ERROR = common dso_local global i32 0, align 4
@APM_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@EIO = common dso_local global i32 0, align 4
@PMSG_RESUME = common dso_local global i32 0, align 4
@APM_NORMAL_RESUME = common dso_local global i32 0, align 4
@user_list_lock = common dso_local global i32 0, align 4
@user_list = common dso_local global %struct.apm_user* null, align 8
@apm_suspend_waitqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.apm_user*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @PMSG_SUSPEND, align 4
  %6 = call i32 @dpm_suspend_start(i32 %5)
  %7 = load i32, i32* @PMSG_SUSPEND, align 4
  %8 = call i32 @dpm_suspend_noirq(i32 %7)
  %9 = call i32 (...) @local_irq_disable()
  %10 = load i32, i32* @PMSG_SUSPEND, align 4
  %11 = call i32 @sysdev_suspend(i32 %10)
  %12 = call i32 (...) @local_irq_enable()
  %13 = call i32 (...) @save_processor_state()
  %14 = load i32, i32* @APM_STATE_SUSPEND, align 4
  %15 = call i32 @set_system_power_state(i32 %14)
  store i32 %15, i32* %3, align 4
  store i32 1, i32* @ignore_normal_resume, align 4
  %16 = call i32 (...) @restore_processor_state()
  %17 = call i32 (...) @local_irq_disable()
  %18 = call i32 (...) @reinit_timer()
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @APM_NO_ERROR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @APM_SUCCESS, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @APM_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @apm_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @APM_SUCCESS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  br label %39

39:                                               ; preds = %36, %35
  %40 = phi i32 [ 0, %35 ], [ %38, %36 ]
  store i32 %40, i32* %3, align 4
  %41 = call i32 (...) @sysdev_resume()
  %42 = call i32 (...) @local_irq_enable()
  %43 = load i32, i32* @PMSG_RESUME, align 4
  %44 = call i32 @dpm_resume_noirq(i32 %43)
  %45 = load i32, i32* @PMSG_RESUME, align 4
  %46 = call i32 @dpm_resume_end(i32 %45)
  %47 = load i32, i32* @APM_NORMAL_RESUME, align 4
  %48 = call i32 @queue_event(i32 %47, i32* null)
  %49 = call i32 @spin_lock(i32* @user_list_lock)
  %50 = load %struct.apm_user*, %struct.apm_user** @user_list, align 8
  store %struct.apm_user* %50, %struct.apm_user** %4, align 8
  br label %51

51:                                               ; preds = %60, %39
  %52 = load %struct.apm_user*, %struct.apm_user** %4, align 8
  %53 = icmp ne %struct.apm_user* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load %struct.apm_user*, %struct.apm_user** %4, align 8
  %56 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.apm_user*, %struct.apm_user** %4, align 8
  %59 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %54
  %61 = load %struct.apm_user*, %struct.apm_user** %4, align 8
  %62 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %61, i32 0, i32 2
  %63 = load %struct.apm_user*, %struct.apm_user** %62, align 8
  store %struct.apm_user* %63, %struct.apm_user** %4, align 8
  br label %51

64:                                               ; preds = %51
  %65 = call i32 @spin_unlock(i32* @user_list_lock)
  %66 = call i32 @wake_up_interruptible(i32* @apm_suspend_waitqueue)
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @dpm_suspend_start(i32) #1

declare dso_local i32 @dpm_suspend_noirq(i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @sysdev_suspend(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @save_processor_state(...) #1

declare dso_local i32 @set_system_power_state(i32) #1

declare dso_local i32 @restore_processor_state(...) #1

declare dso_local i32 @reinit_timer(...) #1

declare dso_local i32 @apm_error(i8*, i32) #1

declare dso_local i32 @sysdev_resume(...) #1

declare dso_local i32 @dpm_resume_noirq(i32) #1

declare dso_local i32 @dpm_resume_end(i32) #1

declare dso_local i32 @queue_event(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
