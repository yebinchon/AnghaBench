; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock34xx.c__omap3_noncore_dpll_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock34xx.c__omap3_noncore_dpll_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@dpll3_ck = common dso_local global %struct.clk zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@DPLL_LOW_POWER_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"clock: stopping DPLL %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @_omap3_noncore_dpll_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_omap3_noncore_dpll_stop(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %5 = load %struct.clk*, %struct.clk** %3, align 8
  %6 = icmp eq %struct.clk* %5, @dpll3_ck
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %42

10:                                               ; preds = %1
  %11 = load %struct.clk*, %struct.clk** %3, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DPLL_LOW_POWER_STOP, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %10
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %42

23:                                               ; preds = %10
  %24 = load %struct.clk*, %struct.clk** %3, align 8
  %25 = getelementptr inbounds %struct.clk, %struct.clk* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.clk*, %struct.clk** %3, align 8
  %29 = call i64 @omap3_dpll_autoidle_read(%struct.clk* %28)
  store i64 %29, i64* %4, align 8
  %30 = load %struct.clk*, %struct.clk** %3, align 8
  %31 = load i32, i32* @DPLL_LOW_POWER_STOP, align 4
  %32 = call i32 @_omap3_dpll_write_clken(%struct.clk* %30, i32 %31)
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load %struct.clk*, %struct.clk** %3, align 8
  %37 = call i32 @omap3_dpll_allow_idle(%struct.clk* %36)
  br label %41

38:                                               ; preds = %23
  %39 = load %struct.clk*, %struct.clk** %3, align 8
  %40 = call i32 @omap3_dpll_deny_idle(%struct.clk* %39)
  br label %41

41:                                               ; preds = %38, %35
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %20, %7
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @omap3_dpll_autoidle_read(%struct.clk*) #1

declare dso_local i32 @_omap3_dpll_write_clken(%struct.clk*, i32) #1

declare dso_local i32 @omap3_dpll_allow_idle(%struct.clk*) #1

declare dso_local i32 @omap3_dpll_deny_idle(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
