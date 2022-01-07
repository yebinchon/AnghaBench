; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-orion/extr_time.c_orion_clkevt_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-orion/extr_time.c_orion_clkevt_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@CLOCK_EVT_MODE_PERIODIC = common dso_local global i32 0, align 4
@ticks_per_jiffy = common dso_local global i32 0, align 4
@TIMER1_RELOAD = common dso_local global i32 0, align 4
@TIMER1_VAL = common dso_local global i32 0, align 4
@BRIDGE_MASK = common dso_local global i32 0, align 4
@BRIDGE_INT_TIMER1 = common dso_local global i32 0, align 4
@TIMER_CTRL = common dso_local global i32 0, align 4
@TIMER1_EN = common dso_local global i32 0, align 4
@TIMER1_RELOAD_EN = common dso_local global i32 0, align 4
@BRIDGE_INT_TIMER1_CLR = common dso_local global i32 0, align 4
@BRIDGE_CAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @orion_clkevt_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @orion_clkevt_mode(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @CLOCK_EVT_MODE_PERIODIC, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = load i32, i32* @ticks_per_jiffy, align 4
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* @TIMER1_RELOAD, align 4
  %16 = call i32 @writel(i32 %14, i32 %15)
  %17 = load i32, i32* @ticks_per_jiffy, align 4
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* @TIMER1_VAL, align 4
  %20 = call i32 @writel(i32 %18, i32 %19)
  %21 = load i32, i32* @BRIDGE_MASK, align 4
  %22 = call i32 @readl(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @BRIDGE_INT_TIMER1, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @BRIDGE_MASK, align 4
  %27 = call i32 @writel(i32 %25, i32 %26)
  %28 = load i32, i32* @TIMER_CTRL, align 4
  %29 = call i32 @readl(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @TIMER1_EN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @TIMER1_RELOAD_EN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @TIMER_CTRL, align 4
  %36 = call i32 @writel(i32 %34, i32 %35)
  br label %57

37:                                               ; preds = %2
  %38 = load i32, i32* @TIMER_CTRL, align 4
  %39 = call i32 @readl(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @TIMER1_EN, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = load i32, i32* @TIMER_CTRL, align 4
  %45 = call i32 @writel(i32 %43, i32 %44)
  %46 = load i32, i32* @BRIDGE_MASK, align 4
  %47 = call i32 @readl(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @BRIDGE_INT_TIMER1, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load i32, i32* @BRIDGE_MASK, align 4
  %53 = call i32 @writel(i32 %51, i32 %52)
  %54 = load i32, i32* @BRIDGE_INT_TIMER1_CLR, align 4
  %55 = load i32, i32* @BRIDGE_CAUSE, align 4
  %56 = call i32 @writel(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %37, %12
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @local_irq_restore(i64 %58)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
