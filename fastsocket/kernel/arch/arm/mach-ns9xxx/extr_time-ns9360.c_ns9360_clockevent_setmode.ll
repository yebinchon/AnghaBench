; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ns9xxx/extr_time-ns9360.c_ns9360_clockevent_setmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ns9xxx/extr_time-ns9360.c_ns9360_clockevent_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@TIMER_CLOCKEVENT = common dso_local global i32 0, align 4
@latch = common dso_local global i32 0, align 4
@SYS_TCx = common dso_local global i32 0, align 4
@REN = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@INTS = common dso_local global i32 0, align 4
@TEN = common dso_local global i32 0, align 4
@DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @ns9360_clockevent_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns9360_clockevent_setmode(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = load i32, i32* @TIMER_CLOCKEVENT, align 4
  %7 = call i32 @SYS_TC(i32 %6)
  %8 = call i32 @__raw_readl(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %42 [
    i32 131, label %10
    i32 132, label %30
    i32 128, label %41
    i32 129, label %41
    i32 130, label %41
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @latch, align 4
  %12 = load i32, i32* @TIMER_CLOCKEVENT, align 4
  %13 = call i32 @SYS_TRC(i32 %12)
  %14 = call i32 @__raw_writel(i32 %11, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SYS_TCx, align 4
  %17 = load i32, i32* @REN, align 4
  %18 = load i32, i32* @EN, align 4
  %19 = call i32 @REGSET(i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SYS_TCx, align 4
  %22 = load i32, i32* @INTS, align 4
  %23 = load i32, i32* @EN, align 4
  %24 = call i32 @REGSET(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SYS_TCx, align 4
  %27 = load i32, i32* @TEN, align 4
  %28 = load i32, i32* @EN, align 4
  %29 = call i32 @REGSET(i32 %25, i32 %26, i32 %27, i32 %28)
  br label %48

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SYS_TCx, align 4
  %33 = load i32, i32* @REN, align 4
  %34 = load i32, i32* @DIS, align 4
  %35 = call i32 @REGSET(i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SYS_TCx, align 4
  %38 = load i32, i32* @INTS, align 4
  %39 = load i32, i32* @EN, align 4
  %40 = call i32 @REGSET(i32 %36, i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %2, %2, %2, %30
  br label %42

42:                                               ; preds = %2, %41
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SYS_TCx, align 4
  %45 = load i32, i32* @TEN, align 4
  %46 = load i32, i32* @DIS, align 4
  %47 = call i32 @REGSET(i32 %43, i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %10
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @TIMER_CLOCKEVENT, align 4
  %51 = call i32 @SYS_TC(i32 %50)
  %52 = call i32 @__raw_writel(i32 %49, i32 %51)
  ret void
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @SYS_TC(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @SYS_TRC(i32) #1

declare dso_local i32 @REGSET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
