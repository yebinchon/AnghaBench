; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock34xx.c__omap3_noncore_dpll_bypass.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock34xx.c__omap3_noncore_dpll_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@dpll3_ck = common dso_local global %struct.clk zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@DPLL_LOW_POWER_BYPASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"clock: configuring DPLL %s for low-power bypass\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @_omap3_noncore_dpll_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_omap3_noncore_dpll_bypass(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %6 = load %struct.clk*, %struct.clk** %3, align 8
  %7 = icmp eq %struct.clk* %6, @dpll3_ck
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.clk*, %struct.clk** %3, align 8
  %13 = getelementptr inbounds %struct.clk, %struct.clk* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DPLL_LOW_POWER_BYPASS, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %11
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %46

24:                                               ; preds = %11
  %25 = load %struct.clk*, %struct.clk** %3, align 8
  %26 = getelementptr inbounds %struct.clk, %struct.clk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.clk*, %struct.clk** %3, align 8
  %30 = call i64 @omap3_dpll_autoidle_read(%struct.clk* %29)
  store i64 %30, i64* %5, align 8
  %31 = load %struct.clk*, %struct.clk** %3, align 8
  %32 = load i32, i32* @DPLL_LOW_POWER_BYPASS, align 4
  %33 = call i32 @_omap3_dpll_write_clken(%struct.clk* %31, i32 %32)
  %34 = load %struct.clk*, %struct.clk** %3, align 8
  %35 = call i32 @_omap3_wait_dpll_status(%struct.clk* %34, i32 0)
  store i32 %35, i32* %4, align 4
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = load %struct.clk*, %struct.clk** %3, align 8
  %40 = call i32 @omap3_dpll_allow_idle(%struct.clk* %39)
  br label %44

41:                                               ; preds = %24
  %42 = load %struct.clk*, %struct.clk** %3, align 8
  %43 = call i32 @omap3_dpll_deny_idle(%struct.clk* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %21, %8
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @omap3_dpll_autoidle_read(%struct.clk*) #1

declare dso_local i32 @_omap3_dpll_write_clken(%struct.clk*, i32) #1

declare dso_local i32 @_omap3_wait_dpll_status(%struct.clk*, i32) #1

declare dso_local i32 @omap3_dpll_allow_idle(%struct.clk*) #1

declare dso_local i32 @omap3_dpll_deny_idle(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
