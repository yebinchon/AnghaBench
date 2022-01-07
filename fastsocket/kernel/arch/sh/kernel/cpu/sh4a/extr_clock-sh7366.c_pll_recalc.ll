; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4a/extr_clock-sh7366.c_pll_recalc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4a/extr_clock-sh7366.c_pll_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PLLCR = common dso_local global i32 0, align 4
@FRQCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @pll_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pll_recalc(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  store i64 1, i64* %3, align 8
  store i64 1, i64* %4, align 8
  %5 = load i32, i32* @PLLCR, align 4
  %6 = call i32 @__raw_readl(i32 %5)
  %7 = and i32 %6, 16384
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @FRQCR, align 4
  %11 = call i32 @__raw_readl(i32 %10)
  %12 = ashr i32 %11, 24
  %13 = and i32 %12, 31
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %3, align 8
  br label %17

16:                                               ; preds = %1
  store i64 2, i64* %4, align 8
  br label %17

17:                                               ; preds = %16, %9
  %18 = load %struct.clk*, %struct.clk** %2, align 8
  %19 = getelementptr inbounds %struct.clk, %struct.clk* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = mul i64 %22, %23
  %25 = load i64, i64* %4, align 8
  %26 = udiv i64 %24, %25
  ret i64 %26
}

declare dso_local i32 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
