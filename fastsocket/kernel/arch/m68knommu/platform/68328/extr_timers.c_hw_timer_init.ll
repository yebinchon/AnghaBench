; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/68328/extr_timers.c_hw_timer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/68328/extr_timers.c_hw_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@TCTL = common dso_local global i32 0, align 4
@TMR_IRQ_NUM = common dso_local global i32 0, align 4
@m68328_timer_irq = common dso_local global i32 0, align 4
@TCTL_OM = common dso_local global i32 0, align 4
@TCTL_IRQEN = common dso_local global i32 0, align 4
@CLOCK_SOURCE = common dso_local global i32 0, align 4
@CLOCK_PRE = common dso_local global i32 0, align 4
@TPRER = common dso_local global i32 0, align 4
@TICKS_PER_JIFFY = common dso_local global i32 0, align 4
@TCMP = common dso_local global i32 0, align 4
@TCTL_TEN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@m68328_clk = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hw_timer_init() #0 {
  store i32 0, i32* @TCTL, align 4
  %1 = load i32, i32* @TMR_IRQ_NUM, align 4
  %2 = call i32 @setup_irq(i32 %1, i32* @m68328_timer_irq)
  %3 = load i32, i32* @TCTL_OM, align 4
  %4 = load i32, i32* @TCTL_IRQEN, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @CLOCK_SOURCE, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* @TCTL, align 4
  %8 = load i32, i32* @CLOCK_PRE, align 4
  store i32 %8, i32* @TPRER, align 4
  %9 = load i32, i32* @TICKS_PER_JIFFY, align 4
  store i32 %9, i32* @TCMP, align 4
  %10 = load i32, i32* @TCTL_TEN, align 4
  %11 = load i32, i32* @TCTL, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* @TCTL, align 4
  %13 = load i32, i32* @TICKS_PER_JIFFY, align 4
  %14 = load i32, i32* @HZ, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @m68328_clk, i32 0, i32 0), align 4
  %17 = call i32 @clocksource_hz2mult(i32 %15, i32 %16)
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @m68328_clk, i32 0, i32 1), align 4
  %18 = call i32 @clocksource_register(%struct.TYPE_3__* @m68328_clk)
  ret void
}

declare dso_local i32 @setup_irq(i32, i32*) #1

declare dso_local i32 @clocksource_hz2mult(i32, i32) #1

declare dso_local i32 @clocksource_register(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
