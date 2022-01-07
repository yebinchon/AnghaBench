; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock34xx.c_omap3_noncore_dpll_program.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock34xx.c_omap3_noncore_dpll_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.dpll_data* }
%struct.dpll_data = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i32, i32, i32)* @omap3_noncore_dpll_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3_noncore_dpll_program(%struct.clk* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dpll_data*, align 8
  %10 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.clk*, %struct.clk** %5, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 0
  %13 = load %struct.dpll_data*, %struct.dpll_data** %12, align 8
  store %struct.dpll_data* %13, %struct.dpll_data** %9, align 8
  %14 = load %struct.clk*, %struct.clk** %5, align 8
  %15 = call i32 @_omap3_noncore_dpll_bypass(%struct.clk* %14)
  %16 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  %17 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__raw_readl(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  %21 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %10, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  %28 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__ffs(i32 %29)
  %31 = shl i32 %26, %30
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  %36 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__raw_writel(i32 %34, i32 %37)
  %39 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  %40 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__raw_readl(i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  %44 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  %47 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %45, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  %55 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @__ffs(i32 %56)
  %58 = shl i32 %53, %57
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 1
  %63 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  %64 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @__ffs(i32 %65)
  %67 = shl i32 %62, %66
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  %72 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @__raw_writel(i32 %70, i32 %73)
  %75 = load %struct.clk*, %struct.clk** %5, align 8
  %76 = call i32 @_omap3_noncore_dpll_lock(%struct.clk* %75)
  ret i32 0
}

declare dso_local i32 @_omap3_noncore_dpll_bypass(%struct.clk*) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @_omap3_noncore_dpll_lock(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
