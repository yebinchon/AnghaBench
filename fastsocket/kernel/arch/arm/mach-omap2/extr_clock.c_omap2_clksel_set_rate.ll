; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_clksel_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_clksel_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap2_clksel_set_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.clk*, %struct.clk** %4, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %75

17:                                               ; preds = %2
  %18 = load %struct.clk*, %struct.clk** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @omap2_clksel_round_rate_div(%struct.clk* %18, i64 %19, i64* %9)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %75

27:                                               ; preds = %17
  %28 = load %struct.clk*, %struct.clk** %4, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @omap2_divisor_to_clksel(%struct.clk* %28, i64 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %75

36:                                               ; preds = %27
  %37 = load %struct.clk*, %struct.clk** %4, align 8
  %38 = getelementptr inbounds %struct.clk, %struct.clk* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @__raw_readl(i32 %39)
  store i64 %40, i64* %6, align 8
  %41 = load %struct.clk*, %struct.clk** %4, align 8
  %42 = getelementptr inbounds %struct.clk, %struct.clk* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = xor i64 %43, -1
  %45 = load i64, i64* %6, align 8
  %46 = and i64 %45, %44
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.clk*, %struct.clk** %4, align 8
  %49 = getelementptr inbounds %struct.clk, %struct.clk* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @__ffs(i64 %50)
  %52 = shl i64 %47, %51
  %53 = load i64, i64* %6, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.clk*, %struct.clk** %4, align 8
  %57 = getelementptr inbounds %struct.clk, %struct.clk* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @__raw_writel(i64 %55, i32 %58)
  %60 = load %struct.clk*, %struct.clk** %4, align 8
  %61 = getelementptr inbounds %struct.clk, %struct.clk* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @__raw_readl(i32 %62)
  store i64 %63, i64* %6, align 8
  %64 = load %struct.clk*, %struct.clk** %4, align 8
  %65 = getelementptr inbounds %struct.clk, %struct.clk* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = udiv i64 %68, %69
  %71 = load %struct.clk*, %struct.clk** %4, align 8
  %72 = getelementptr inbounds %struct.clk, %struct.clk* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.clk*, %struct.clk** %4, align 8
  %74 = call i32 @_omap2xxx_clk_commit(%struct.clk* %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %36, %33, %24, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @omap2_clksel_round_rate_div(%struct.clk*, i64, i64*) #1

declare dso_local i64 @omap2_divisor_to_clksel(%struct.clk*, i64) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i64 @__ffs(i64) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @_omap2xxx_clk_commit(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
