; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-orion/extr_time.c_orion_clkevt_next_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-orion/extr_time.c_orion_clkevt_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@ETIME = common dso_local global i32 0, align 4
@BRIDGE_INT_TIMER1_CLR = common dso_local global i64 0, align 8
@BRIDGE_CAUSE = common dso_local global i32 0, align 4
@BRIDGE_MASK = common dso_local global i32 0, align 4
@BRIDGE_INT_TIMER1 = common dso_local global i64 0, align 8
@TIMER1_VAL = common dso_local global i32 0, align 4
@TIMER_CTRL = common dso_local global i32 0, align 4
@TIMER1_RELOAD_EN = common dso_local global i64 0, align 8
@TIMER1_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @orion_clkevt_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_clkevt_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.clock_event_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ETIME, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = load i64, i64* @BRIDGE_INT_TIMER1_CLR, align 8
  %17 = load i32, i32* @BRIDGE_CAUSE, align 4
  %18 = call i32 @writel(i64 %16, i32 %17)
  %19 = load i32, i32* @BRIDGE_MASK, align 4
  %20 = call i64 @readl(i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* @BRIDGE_INT_TIMER1, align 8
  %22 = load i64, i64* %7, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* @BRIDGE_MASK, align 4
  %26 = call i32 @writel(i64 %24, i32 %25)
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* @TIMER1_VAL, align 4
  %29 = call i32 @writel(i64 %27, i32 %28)
  %30 = load i32, i32* @TIMER_CTRL, align 4
  %31 = call i64 @readl(i32 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @TIMER1_RELOAD_EN, align 8
  %34 = xor i64 %33, -1
  %35 = and i64 %32, %34
  %36 = load i64, i64* @TIMER1_EN, align 8
  %37 = or i64 %35, %36
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* @TIMER_CTRL, align 4
  %40 = call i32 @writel(i64 %38, i32 %39)
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @local_irq_restore(i64 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %13, %10
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
