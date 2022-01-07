; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/coldfire/extr_pit.c_pit_tick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/coldfire/extr_pit.c_pit_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 (%struct.clock_event_device*)* }

@cf_pit_clockevent = common dso_local global %struct.clock_event_device zeroinitializer, align 8
@MCFPIT_PCSR = common dso_local global i32 0, align 4
@MCFPIT_PCSR_PIF = common dso_local global i32 0, align 4
@PIT_CYCLES_PER_JIFFY = common dso_local global i64 0, align 8
@pit_cnt = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pit_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pit_tick(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.clock_event_device*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store %struct.clock_event_device* @cf_pit_clockevent, %struct.clock_event_device** %5, align 8
  %7 = load i32, i32* @MCFPIT_PCSR, align 4
  %8 = call i32 @TA(i32 %7)
  %9 = call i32 @__raw_readw(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MCFPIT_PCSR_PIF, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MCFPIT_PCSR, align 4
  %14 = call i32 @TA(i32 %13)
  %15 = call i32 @__raw_writew(i32 %12, i32 %14)
  %16 = load i64, i64* @PIT_CYCLES_PER_JIFFY, align 8
  %17 = load i32, i32* @pit_cnt, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* @pit_cnt, align 4
  %21 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %22 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %21, i32 0, i32 0
  %23 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %22, align 8
  %24 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %25 = call i32 %23(%struct.clock_event_device* %24)
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %26
}

declare dso_local i32 @__raw_readw(i32) #1

declare dso_local i32 @TA(i32) #1

declare dso_local i32 @__raw_writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
