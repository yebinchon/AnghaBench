; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_interrupts_and_traps.c_guest_set_clockevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_interrupts_and_traps.c_guest_set_clockevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { i32 }

@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @guest_set_clockevent(%struct.lg_cpu* %0, i64 %1) #0 {
  %3 = alloca %struct.lg_cpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.lg_cpu* %0, %struct.lg_cpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.lg_cpu*, %struct.lg_cpu** %3, align 8
  %13 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %12, i32 0, i32 0
  %14 = call i32 @hrtimer_cancel(i32* %13)
  br label %24

15:                                               ; preds = %2
  %16 = call i32 (...) @ktime_get_real()
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @ktime_add_ns(i32 %16, i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.lg_cpu*, %struct.lg_cpu** %3, align 8
  %20 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %23 = call i32 @hrtimer_start(i32* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %15, %11
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @ktime_add_ns(i32, i64) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
