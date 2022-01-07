; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/lib/extr_spinlock.c__raw_write_lock_wait_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/lib/extr_spinlock.c__raw_write_lock_wait_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@spin_retry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_raw_write_lock_wait_flags(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @spin_retry, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @local_irq_restore(i64 %7)
  br label %9

9:                                                ; preds = %2, %20, %28
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %5, align 4
  %12 = icmp sle i32 %10, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = call i32 (...) @_raw_yield()
  %15 = load i32, i32* @spin_retry, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = call i32 @__raw_write_can_lock(%struct.TYPE_4__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %9

21:                                               ; preds = %16
  %22 = call i32 (...) @local_irq_disable()
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i64 @_raw_compare_and_swap(i32* %24, i32 0, i32 -2147483648)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  ret void

28:                                               ; preds = %21
  br label %9
}

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @_raw_yield(...) #1

declare dso_local i32 @__raw_write_can_lock(%struct.TYPE_4__*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i64 @_raw_compare_and_swap(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
