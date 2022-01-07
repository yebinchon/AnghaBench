; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_pmu_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_pmu_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@via = common dso_local global i32* null, align 8
@pmu_suspended = common dso_local global i32 0, align 4
@pmu_lock = common dso_local global i32 0, align 4
@adb_int_pending = common dso_local global i32 0, align 4
@gpio_irq = common dso_local global i64 0, align 8
@IER = common dso_local global i64 0, align 8
@CB1_INT = common dso_local global i32 0, align 4
@IER_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmu_resume() #0 {
  %1 = alloca i64, align 8
  %2 = load i32*, i32** @via, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @pmu_suspended, align 4
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %0
  br label %35

8:                                                ; preds = %4
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @pmu_lock, i64 %9)
  %11 = load i32, i32* @pmu_suspended, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* @pmu_suspended, align 4
  %13 = load i32, i32* @pmu_suspended, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* @pmu_lock, i64 %16)
  br label %35

18:                                               ; preds = %8
  store i32 1, i32* @adb_int_pending, align 4
  %19 = load i64, i64* @gpio_irq, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* @gpio_irq, align 8
  %23 = call i32 @enable_irq(i64 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32*, i32** @via, align 8
  %26 = load i64, i64* @IER, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* @CB1_INT, align 4
  %29 = load i32, i32* @IER_SET, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @out_8(i32* %27, i32 %30)
  %32 = load i64, i64* %1, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* @pmu_lock, i64 %32)
  %34 = call i32 (...) @pmu_poll()
  br label %35

35:                                               ; preds = %24, %15, %7
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @enable_irq(i64) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @pmu_poll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
