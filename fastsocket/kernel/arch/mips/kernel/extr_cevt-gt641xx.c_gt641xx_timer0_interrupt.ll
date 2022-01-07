; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_cevt-gt641xx.c_gt641xx_timer0_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_cevt-gt641xx.c_gt641xx_timer0_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 (%struct.clock_event_device*)* }

@gt641xx_timer0_clockevent = common dso_local global %struct.clock_event_device zeroinitializer, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gt641xx_timer0_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt641xx_timer0_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.clock_event_device*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store %struct.clock_event_device* @gt641xx_timer0_clockevent, %struct.clock_event_device** %5, align 8
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %7 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %6, i32 0, i32 0
  %8 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %7, align 8
  %9 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %10 = call i32 %8(%struct.clock_event_device* %9)
  %11 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
