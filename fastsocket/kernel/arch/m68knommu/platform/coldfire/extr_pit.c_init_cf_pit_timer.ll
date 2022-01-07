; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/coldfire/extr_pit.c_init_cf_pit_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/coldfire/extr_pit.c_init_cf_pit_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@MCFPIT_PCSR_DISABLE = common dso_local global i32 0, align 4
@MCFPIT_PCSR = common dso_local global i32 0, align 4
@PIT_CYCLES_PER_JIFFY = common dso_local global i32 0, align 4
@MCFPIT_PMR = common dso_local global i32 0, align 4
@MCFPIT_PCSR_EN = common dso_local global i32 0, align 4
@MCFPIT_PCSR_PIE = common dso_local global i32 0, align 4
@MCFPIT_PCSR_OVW = common dso_local global i32 0, align 4
@MCFPIT_PCSR_RLD = common dso_local global i32 0, align 4
@MCFPIT_PCSR_CLK64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @init_cf_pit_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_cf_pit_timer(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %48 [
    i32 131, label %6
    i32 129, label %27
    i32 128, label %27
    i32 132, label %32
    i32 130, label %47
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @MCFPIT_PCSR_DISABLE, align 4
  %8 = load i32, i32* @MCFPIT_PCSR, align 4
  %9 = call i32 @TA(i32 %8)
  %10 = call i32 @__raw_writew(i32 %7, i32 %9)
  %11 = load i32, i32* @PIT_CYCLES_PER_JIFFY, align 4
  %12 = load i32, i32* @MCFPIT_PMR, align 4
  %13 = call i32 @TA(i32 %12)
  %14 = call i32 @__raw_writew(i32 %11, i32 %13)
  %15 = load i32, i32* @MCFPIT_PCSR_EN, align 4
  %16 = load i32, i32* @MCFPIT_PCSR_PIE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MCFPIT_PCSR_OVW, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MCFPIT_PCSR_RLD, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MCFPIT_PCSR_CLK64, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MCFPIT_PCSR, align 4
  %25 = call i32 @TA(i32 %24)
  %26 = call i32 @__raw_writew(i32 %23, i32 %25)
  br label %48

27:                                               ; preds = %2, %2
  %28 = load i32, i32* @MCFPIT_PCSR_DISABLE, align 4
  %29 = load i32, i32* @MCFPIT_PCSR, align 4
  %30 = call i32 @TA(i32 %29)
  %31 = call i32 @__raw_writew(i32 %28, i32 %30)
  br label %48

32:                                               ; preds = %2
  %33 = load i32, i32* @MCFPIT_PCSR_DISABLE, align 4
  %34 = load i32, i32* @MCFPIT_PCSR, align 4
  %35 = call i32 @TA(i32 %34)
  %36 = call i32 @__raw_writew(i32 %33, i32 %35)
  %37 = load i32, i32* @MCFPIT_PCSR_EN, align 4
  %38 = load i32, i32* @MCFPIT_PCSR_PIE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MCFPIT_PCSR_OVW, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @MCFPIT_PCSR_CLK64, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @MCFPIT_PCSR, align 4
  %45 = call i32 @TA(i32 %44)
  %46 = call i32 @__raw_writew(i32 %43, i32 %45)
  br label %48

47:                                               ; preds = %2
  br label %48

48:                                               ; preds = %2, %47, %32, %27, %6
  ret void
}

declare dso_local i32 @__raw_writew(i32, i32) #1

declare dso_local i32 @TA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
