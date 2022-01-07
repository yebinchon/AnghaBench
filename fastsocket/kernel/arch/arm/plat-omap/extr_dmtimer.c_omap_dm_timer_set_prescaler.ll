; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dmtimer.c_omap_dm_timer_set_prescaler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dmtimer.c_omap_dm_timer_set_prescaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dm_timer = type { i32 }

@OMAP_TIMER_CTRL_REG = common dso_local global i32 0, align 4
@OMAP_TIMER_CTRL_PRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_dm_timer_set_prescaler(%struct.omap_dm_timer* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_dm_timer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.omap_dm_timer* %0, %struct.omap_dm_timer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %7 = load i32, i32* @OMAP_TIMER_CTRL_REG, align 4
  %8 = call i32 @omap_dm_timer_read_reg(%struct.omap_dm_timer* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @OMAP_TIMER_CTRL_PRE, align 4
  %10 = or i32 %9, 28
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp sle i32 %17, 7
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* @OMAP_TIMER_CTRL_PRE, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 %23, 2
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %19, %16, %2
  %28 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %29 = load i32, i32* @OMAP_TIMER_CTRL_REG, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @omap_dm_timer_write_reg(%struct.omap_dm_timer* %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @omap_dm_timer_read_reg(%struct.omap_dm_timer*, i32) #1

declare dso_local i32 @omap_dm_timer_write_reg(%struct.omap_dm_timer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
