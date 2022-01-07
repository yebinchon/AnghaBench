; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx1/extr_clock.c_clko_set_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx1/extr_clock.c_clko_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.clk = type { i32*, i32* }

@clko_clocks = common dso_local global %struct.TYPE_4__** null, align 8
@CCM_CSCR = common dso_local global i32 0, align 4
@CCM_CSCR_CLKO_MASK = common dso_local global i32 0, align 4
@CCM_CSCR_CLKO_OFFSET = common dso_local global i32 0, align 4
@_clk_parent_set_rate = common dso_local global i32* null, align 8
@_clk_parent_round_rate = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, %struct.clk*)* @clko_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clko_set_parent(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %8 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @clko_clocks, align 8
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @clko_clocks, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_4__** %9)
  %11 = load %struct.clk*, %struct.clk** %5, align 8
  %12 = call i32 @_clk_can_use_parent(%struct.TYPE_4__** %8, i32 %10, %struct.clk* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %61

17:                                               ; preds = %2
  %18 = load i32, i32* @CCM_CSCR, align 4
  %19 = call i32 @__raw_readl(i32 %18)
  %20 = load i32, i32* @CCM_CSCR_CLKO_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @CCM_CSCR_CLKO_OFFSET, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @CCM_CSCR, align 4
  %30 = call i32 @__raw_writel(i32 %28, i32 %29)
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @clko_clocks, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %17
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @clko_clocks, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %40, i64 %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load i32*, i32** @_clk_parent_set_rate, align 8
  %50 = load %struct.clk*, %struct.clk** %4, align 8
  %51 = getelementptr inbounds %struct.clk, %struct.clk* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load i32*, i32** @_clk_parent_round_rate, align 8
  %53 = load %struct.clk*, %struct.clk** %4, align 8
  %54 = getelementptr inbounds %struct.clk, %struct.clk* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  br label %60

55:                                               ; preds = %39, %17
  %56 = load %struct.clk*, %struct.clk** %4, align 8
  %57 = getelementptr inbounds %struct.clk, %struct.clk* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load %struct.clk*, %struct.clk** %4, align 8
  %59 = getelementptr inbounds %struct.clk, %struct.clk* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %55, %48
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %15
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @_clk_can_use_parent(%struct.TYPE_4__**, i32, %struct.clk*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__**) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
