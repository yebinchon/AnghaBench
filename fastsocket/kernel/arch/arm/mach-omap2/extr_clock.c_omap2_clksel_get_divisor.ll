; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_clksel_get_divisor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_clksel_get_divisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap2_clksel_get_divisor(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  %5 = load %struct.clk*, %struct.clk** %3, align 8
  %6 = getelementptr inbounds %struct.clk, %struct.clk* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.clk*, %struct.clk** %3, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @__raw_readl(i32 %13)
  %15 = load %struct.clk*, %struct.clk** %3, align 8
  %16 = getelementptr inbounds %struct.clk, %struct.clk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %14, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.clk*, %struct.clk** %3, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @__ffs(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.clk*, %struct.clk** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @omap2_clksel_to_divisor(%struct.clk* %25, i32 %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %10, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @omap2_clksel_to_divisor(%struct.clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
