; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_si_intf.c_ipmi_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_si_intf.c_ipmi_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i32 }
%struct.timespec = type { i32 }

@current = common dso_local global i32 0, align 4
@SI_SM_CALL_WITHOUT_DELAY = common dso_local global i32 0, align 4
@SI_SM_CALL_WITH_DELAY = common dso_local global i32 0, align 4
@SI_SM_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ipmi_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.smi_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.smi_info*
  store %struct.smi_info* %9, %struct.smi_info** %3, align 8
  %10 = call i32 @ipmi_si_set_not_busy(%struct.timespec* %6)
  %11 = load i32, i32* @current, align 4
  %12 = call i32 @set_user_nice(i32 %11, i32 19)
  br label %13

13:                                               ; preds = %54, %1
  %14 = call i32 (...) @kthread_should_stop()
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %19 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %18, i32 0, i32 0
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %23 = call i32 @smi_event_handler(%struct.smi_info* %22, i32 0)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %25 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %24, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %30 = call i32 @ipmi_thread_busy_wait(i32 %28, %struct.smi_info* %29, %struct.timespec* %6)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SI_SM_CALL_WITHOUT_DELAY, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %17
  br label %54

35:                                               ; preds = %17
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SI_SM_CALL_WITH_DELAY, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 (...) @schedule()
  br label %53

44:                                               ; preds = %39, %35
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SI_SM_IDLE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @schedule_timeout_interruptible(i32 100)
  br label %52

50:                                               ; preds = %44
  %51 = call i32 @schedule_timeout_interruptible(i32 1)
  br label %52

52:                                               ; preds = %50, %48
  br label %53

53:                                               ; preds = %52, %42
  br label %54

54:                                               ; preds = %53, %34
  br label %13

55:                                               ; preds = %13
  ret i32 0
}

declare dso_local i32 @ipmi_si_set_not_busy(%struct.timespec*) #1

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @smi_event_handler(%struct.smi_info*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipmi_thread_busy_wait(i32, %struct.smi_info*, %struct.timespec*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
