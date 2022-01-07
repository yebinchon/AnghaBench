; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/lib/extr_spinlock.c__raw_read_lock_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/lib/extr_spinlock.c__raw_read_lock_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@spin_retry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_raw_read_lock_wait(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load i32, i32* @spin_retry, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %1, %17, %32
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %4, align 4
  %9 = icmp sle i32 %7, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = call i32 (...) @_raw_yield()
  %12 = load i32, i32* @spin_retry, align 4
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %10, %6
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = call i32 @__raw_read_can_lock(%struct.TYPE_4__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %6

18:                                               ; preds = %13
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 2147483647
  store i32 %22, i32* %3, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = add i32 %26, 1
  %28 = call i32 @_raw_compare_and_swap(i32* %24, i32 %25, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  ret void

32:                                               ; preds = %18
  br label %6
}

declare dso_local i32 @_raw_yield(...) #1

declare dso_local i32 @__raw_read_can_lock(%struct.TYPE_4__*) #1

declare dso_local i32 @_raw_compare_and_swap(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
