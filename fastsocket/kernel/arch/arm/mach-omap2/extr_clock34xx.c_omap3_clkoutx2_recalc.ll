; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock34xx.c_omap3_clkoutx2_recalc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock34xx.c_omap3_clkoutx2_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, %struct.clk*, %struct.dpll_data* }
%struct.dpll_data = type { i32, i32 }

@OMAP3XXX_EN_DPLL_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @omap3_clkoutx2_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @omap3_clkoutx2_recalc(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca %struct.dpll_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %7 = load %struct.clk*, %struct.clk** %2, align 8
  %8 = getelementptr inbounds %struct.clk, %struct.clk* %7, i32 0, i32 1
  %9 = load %struct.clk*, %struct.clk** %8, align 8
  store %struct.clk* %9, %struct.clk** %6, align 8
  br label %10

10:                                               ; preds = %21, %1
  %11 = load %struct.clk*, %struct.clk** %6, align 8
  %12 = icmp ne %struct.clk* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load %struct.clk*, %struct.clk** %6, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 2
  %16 = load %struct.dpll_data*, %struct.dpll_data** %15, align 8
  %17 = icmp ne %struct.dpll_data* %16, null
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %10
  %20 = phi i1 [ false, %10 ], [ %18, %13 ]
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = load %struct.clk*, %struct.clk** %6, align 8
  %23 = getelementptr inbounds %struct.clk, %struct.clk* %22, i32 0, i32 1
  %24 = load %struct.clk*, %struct.clk** %23, align 8
  store %struct.clk* %24, %struct.clk** %6, align 8
  br label %10

25:                                               ; preds = %19
  %26 = load %struct.clk*, %struct.clk** %6, align 8
  %27 = icmp ne %struct.clk* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.clk*, %struct.clk** %6, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 2
  %33 = load %struct.dpll_data*, %struct.dpll_data** %32, align 8
  store %struct.dpll_data* %33, %struct.dpll_data** %3, align 8
  %34 = load %struct.dpll_data*, %struct.dpll_data** %3, align 8
  %35 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load %struct.dpll_data*, %struct.dpll_data** %3, align 8
  %42 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__raw_readl(i32 %43)
  %45 = load %struct.dpll_data*, %struct.dpll_data** %3, align 8
  %46 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %44, %47
  store i32 %48, i32* %5, align 4
  %49 = load %struct.dpll_data*, %struct.dpll_data** %3, align 8
  %50 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @__ffs(i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = ashr i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @OMAP3XXX_EN_DPLL_LOCKED, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %25
  %59 = load %struct.clk*, %struct.clk** %2, align 8
  %60 = getelementptr inbounds %struct.clk, %struct.clk* %59, i32 0, i32 1
  %61 = load %struct.clk*, %struct.clk** %60, align 8
  %62 = getelementptr inbounds %struct.clk, %struct.clk* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %4, align 8
  br label %71

64:                                               ; preds = %25
  %65 = load %struct.clk*, %struct.clk** %2, align 8
  %66 = getelementptr inbounds %struct.clk, %struct.clk* %65, i32 0, i32 1
  %67 = load %struct.clk*, %struct.clk** %66, align 8
  %68 = getelementptr inbounds %struct.clk, %struct.clk* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = mul i64 %69, 2
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %64, %58
  %72 = load i64, i64* %4, align 8
  ret i64 %72
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
