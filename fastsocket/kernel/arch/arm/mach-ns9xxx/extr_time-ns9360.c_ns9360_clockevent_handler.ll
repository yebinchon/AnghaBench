; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ns9xxx/extr_time-ns9360.c_ns9360_clockevent_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ns9xxx/extr_time-ns9360.c_ns9360_clockevent_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 (%struct.clock_event_device*)* }

@IRQ_NS9360_TIMER0 = common dso_local global i32 0, align 4
@ns9360_clockevent_device = common dso_local global %struct.clock_event_device zeroinitializer, align 8
@SYS_TCx = common dso_local global i32 0, align 4
@REN = common dso_local global i32 0, align 4
@SYS_TCx_REN_DIS = common dso_local global i64 0, align 8
@TEN = common dso_local global i32 0, align 4
@DIS = common dso_local global i32 0, align 4
@INTC = common dso_local global i32 0, align 4
@SET = common dso_local global i32 0, align 4
@UNSET = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ns9360_clockevent_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns9360_clockevent_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.clock_event_device*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @IRQ_NS9360_TIMER0, align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, i32* %5, align 4
  store %struct.clock_event_device* @ns9360_clockevent_device, %struct.clock_event_device** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @SYS_TC(i32 %11)
  %13 = call i32 @__raw_readl(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @SYS_TCx, align 4
  %16 = load i32, i32* @REN, align 4
  %17 = call i64 @REGGET(i32 %14, i32 %15, i32 %16)
  %18 = load i64, i64* @SYS_TCx_REN_DIS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SYS_TCx, align 4
  %23 = load i32, i32* @TEN, align 4
  %24 = load i32, i32* @DIS, align 4
  %25 = call i32 @REGSET(i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @SYS_TC(i32 %27)
  %29 = call i32 @__raw_writel(i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %20, %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @SYS_TCx, align 4
  %33 = load i32, i32* @INTC, align 4
  %34 = load i32, i32* @SET, align 4
  %35 = call i32 @REGSET(i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @SYS_TC(i32 %37)
  %39 = call i32 @__raw_writel(i32 %36, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SYS_TCx, align 4
  %42 = load i32, i32* @INTC, align 4
  %43 = load i32, i32* @UNSET, align 4
  %44 = call i32 @REGSET(i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @SYS_TC(i32 %46)
  %48 = call i32 @__raw_writel(i32 %45, i32 %47)
  %49 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %50 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %49, i32 0, i32 0
  %51 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %50, align 8
  %52 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %53 = call i32 %51(%struct.clock_event_device* %52)
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %54
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @SYS_TC(i32) #1

declare dso_local i64 @REGGET(i32, i32, i32) #1

declare dso_local i32 @REGSET(i32, i32, i32, i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
