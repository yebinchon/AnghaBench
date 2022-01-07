; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock34xx.c_omap3_dpll_deny_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock34xx.c_omap3_dpll_deny_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.dpll_data* }
%struct.dpll_data = type { i32, i32 }

@DPLL_AUTOIDLE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*)* @omap3_dpll_deny_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap3_dpll_deny_idle(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca %struct.dpll_data*, align 8
  %4 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %2, align 8
  %5 = load %struct.clk*, %struct.clk** %2, align 8
  %6 = icmp ne %struct.clk* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.clk*, %struct.clk** %2, align 8
  %9 = getelementptr inbounds %struct.clk, %struct.clk* %8, i32 0, i32 0
  %10 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  %11 = icmp ne %struct.dpll_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %1
  br label %40

13:                                               ; preds = %7
  %14 = load %struct.clk*, %struct.clk** %2, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 0
  %16 = load %struct.dpll_data*, %struct.dpll_data** %15, align 8
  store %struct.dpll_data* %16, %struct.dpll_data** %3, align 8
  %17 = load %struct.dpll_data*, %struct.dpll_data** %3, align 8
  %18 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__raw_readl(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.dpll_data*, %struct.dpll_data** %3, align 8
  %22 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @DPLL_AUTOIDLE_DISABLE, align 4
  %28 = load %struct.dpll_data*, %struct.dpll_data** %3, align 8
  %29 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__ffs(i32 %30)
  %32 = shl i32 %27, %31
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.dpll_data*, %struct.dpll_data** %3, align 8
  %37 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__raw_writel(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
