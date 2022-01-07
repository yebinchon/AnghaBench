; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_pmu_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_pmu_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@via = common dso_local global i32* null, align 8
@pmu_lock = common dso_local global i32 0, align 4
@pmu_suspended = common dso_local global i32 0, align 4
@req_awaiting_reply = common dso_local global i64 0, align 8
@adb_int_pending = common dso_local global i32 0, align 4
@pmu_state = common dso_local global i64 0, align 8
@idle = common dso_local global i64 0, align 8
@gpio_irq = common dso_local global i64 0, align 8
@IER = common dso_local global i64 0, align 8
@CB1_INT = common dso_local global i32 0, align 4
@IER_CLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmu_suspend() #0 {
  %1 = alloca i64, align 8
  %2 = load i32*, i32** @via, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %53

5:                                                ; preds = %0
  %6 = load i64, i64* %1, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @pmu_lock, i64 %6)
  %8 = load i32, i32* @pmu_suspended, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @pmu_suspended, align 4
  %10 = load i32, i32* @pmu_suspended, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = load i64, i64* %1, align 8
  %14 = call i32 @spin_unlock_irqrestore(i32* @pmu_lock, i64 %13)
  br label %53

15:                                               ; preds = %5
  br label %16

16:                                               ; preds = %52, %15
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* @pmu_lock, i64 %17)
  %19 = load i64, i64* @req_awaiting_reply, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* @adb_int_pending, align 4
  br label %22

22:                                               ; preds = %21, %16
  %23 = call i32 @via_pmu_interrupt(i32 0, i32* null)
  %24 = load i64, i64* %1, align 8
  %25 = call i32 @spin_lock_irqsave(i32* @pmu_lock, i64 %24)
  %26 = load i32, i32* @adb_int_pending, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %22
  %29 = load i64, i64* @pmu_state, align 8
  %30 = load i64, i64* @idle, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load i64, i64* @req_awaiting_reply, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* @gpio_irq, align 8
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i64, i64* @gpio_irq, align 8
  %40 = call i32 @disable_irq_nosync(i64 %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32*, i32** @via, align 8
  %43 = load i64, i64* @IER, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* @CB1_INT, align 4
  %46 = load i32, i32* @IER_CLR, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @out_8(i32* %44, i32 %47)
  %49 = load i64, i64* %1, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* @pmu_lock, i64 %49)
  br label %53

51:                                               ; preds = %32, %28, %22
  br label %52

52:                                               ; preds = %51
  br i1 true, label %16, label %53

53:                                               ; preds = %4, %12, %52, %41
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @via_pmu_interrupt(i32, i32*) #1

declare dso_local i32 @disable_irq_nosync(i64) #1

declare dso_local i32 @out_8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
