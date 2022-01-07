; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-versatile/extr_core.c_versatile_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-versatile/extr_core.c_versatile_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 (%struct.clock_event_device*)* }

@timer0_clockevent = common dso_local global %struct.clock_event_device zeroinitializer, align 8
@TIMER0_VA_BASE = common dso_local global i64 0, align 8
@TIMER_INTCLR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @versatile_timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @versatile_timer_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.clock_event_device*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store %struct.clock_event_device* @timer0_clockevent, %struct.clock_event_device** %5, align 8
  %6 = load i64, i64* @TIMER0_VA_BASE, align 8
  %7 = load i64, i64* @TIMER_INTCLR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writel(i32 1, i64 %8)
  %10 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %11 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %10, i32 0, i32 0
  %12 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %11, align 8
  %13 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %14 = call i32 %12(%struct.clock_event_device* %13)
  %15 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %15
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
