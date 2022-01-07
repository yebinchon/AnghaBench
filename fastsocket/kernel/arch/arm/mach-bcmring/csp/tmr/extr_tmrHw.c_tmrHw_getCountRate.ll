; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/tmr/extr_tmrHw.c_tmrHw_getCountRate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/tmr/extr_tmrHw.c_tmrHw_getCountRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pTmrHw = common dso_local global %struct.TYPE_2__* null, align 8
@tmrHw_CONTROL_PRESCALE_MASK = common dso_local global i32 0, align 4
@tmrHw_LOW_RESOLUTION_CLOCK = common dso_local global i32 0, align 4
@tmrHw_HIGH_RESOLUTION_CLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmrHw_getCountRate(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pTmrHw, align 8
  %6 = load i64, i64* %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @tmrHw_CONTROL_PRESCALE_MASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %15 [
    i32 130, label %12
    i32 129, label %13
    i32 128, label %14
  ]

12:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %17

13:                                               ; preds = %1
  store i32 16, i32* %4, align 4
  br label %17

14:                                               ; preds = %1
  store i32 256, i32* %4, align 4
  br label %17

15:                                               ; preds = %1
  %16 = call i32 @tmrHw_ASSERT(i32 0)
  br label %17

17:                                               ; preds = %15, %14, %13, %12
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %3, align 8
  %22 = icmp eq i64 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @tmrHw_LOW_RESOLUTION_CLOCK, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @tmrHw_divide(i32 %24, i32 %25)
  store i32 %26, i32* %2, align 4
  br label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @tmrHw_HIGH_RESOLUTION_CLOCK, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @tmrHw_divide(i32 %28, i32 %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @tmrHw_ASSERT(i32) #1

declare dso_local i32 @tmrHw_divide(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
