; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/coldfire/extr_pit.c_hw_timer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/coldfire/extr_pit.c_hw_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@cf_pit_clockevent = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@FREQ = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@MCFINT_VECBASE = common dso_local global i64 0, align 8
@MCFINT_PIT1 = common dso_local global i64 0, align 8
@pit_irq = common dso_local global i32 0, align 4
@pit_clk = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hw_timer_init() #0 {
  %1 = call i32 (...) @smp_processor_id()
  %2 = call i32 @cpumask_of(i32 %1)
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cf_pit_clockevent, i32 0, i32 3), align 4
  %3 = load i32, i32* @FREQ, align 4
  %4 = load i32, i32* @NSEC_PER_SEC, align 4
  %5 = call i32 @div_sc(i32 %3, i32 %4, i32 32)
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cf_pit_clockevent, i32 0, i32 2), align 8
  %6 = call i8* @clockevent_delta2ns(i32 65535, %struct.TYPE_7__* @cf_pit_clockevent)
  store i8* %6, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cf_pit_clockevent, i32 0, i32 1), align 8
  %7 = call i8* @clockevent_delta2ns(i32 63, %struct.TYPE_7__* @cf_pit_clockevent)
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cf_pit_clockevent, i32 0, i32 0), align 8
  %8 = call i32 @clockevents_register_device(%struct.TYPE_7__* @cf_pit_clockevent)
  %9 = load i64, i64* @MCFINT_VECBASE, align 8
  %10 = load i64, i64* @MCFINT_PIT1, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @setup_irq(i64 %11, i32* @pit_irq)
  %13 = load i32, i32* @FREQ, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pit_clk, i32 0, i32 0), align 4
  %15 = call i32 @clocksource_hz2mult(i32 %13, i32 %14)
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pit_clk, i32 0, i32 1), align 4
  %16 = call i32 @clocksource_register(%struct.TYPE_6__* @pit_clk)
  ret void
}

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @div_sc(i32, i32, i32) #1

declare dso_local i8* @clockevent_delta2ns(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @clockevents_register_device(%struct.TYPE_7__*) #1

declare dso_local i32 @setup_irq(i64, i32*) #1

declare dso_local i32 @clocksource_hz2mult(i32, i32) #1

declare dso_local i32 @clocksource_register(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
