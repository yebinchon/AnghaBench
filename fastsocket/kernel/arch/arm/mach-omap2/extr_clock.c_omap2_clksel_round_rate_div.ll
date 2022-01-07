; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_clksel_round_rate_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_clksel_round_rate_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.clksel = type { %struct.clksel_rate* }
%struct.clksel_rate = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"clock: clksel_round_rate_div: %s target_rate %ld\0A\00", align 1
@cpu_mask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"clock: clksel_rate table not sorted for clock %s\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"clock: Could not find divisor for target rate %ld for clock %s parent %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"clock: new_div = %d, new_rate = %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap2_clksel_round_rate_div(%struct.clk* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.clksel*, align 8
  %10 = alloca %struct.clksel_rate*, align 8
  %11 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.clk*, %struct.clk** %5, align 8
  %13 = getelementptr inbounds %struct.clk, %struct.clk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %15)
  %17 = load i32*, i32** %7, align 8
  store i32 1, i32* %17, align 4
  %18 = load %struct.clk*, %struct.clk** %5, align 8
  %19 = load %struct.clk*, %struct.clk** %5, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call %struct.clksel* @omap2_get_clksel_by_parent(%struct.clk* %18, %struct.TYPE_2__* %21)
  store %struct.clksel* %22, %struct.clksel** %9, align 8
  %23 = load %struct.clksel*, %struct.clksel** %9, align 8
  %24 = icmp ne %struct.clksel* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %122

26:                                               ; preds = %3
  %27 = load %struct.clksel*, %struct.clksel** %9, align 8
  %28 = getelementptr inbounds %struct.clksel, %struct.clksel* %27, i32 0, i32 0
  %29 = load %struct.clksel_rate*, %struct.clksel_rate** %28, align 8
  store %struct.clksel_rate* %29, %struct.clksel_rate** %10, align 8
  br label %30

30:                                               ; preds = %74, %26
  %31 = load %struct.clksel_rate*, %struct.clksel_rate** %10, align 8
  %32 = getelementptr inbounds %struct.clksel_rate, %struct.clksel_rate* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %30
  %36 = load %struct.clksel_rate*, %struct.clksel_rate** %10, align 8
  %37 = getelementptr inbounds %struct.clksel_rate, %struct.clksel_rate* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @cpu_mask, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %74

43:                                               ; preds = %35
  %44 = load %struct.clksel_rate*, %struct.clksel_rate** %10, align 8
  %45 = getelementptr inbounds %struct.clksel_rate, %struct.clksel_rate* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.clk*, %struct.clk** %5, align 8
  %51 = getelementptr inbounds %struct.clk, %struct.clk* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.clksel_rate*, %struct.clksel_rate** %10, align 8
  %57 = getelementptr inbounds %struct.clksel_rate, %struct.clksel_rate* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load %struct.clk*, %struct.clk** %5, align 8
  %60 = getelementptr inbounds %struct.clk, %struct.clk* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.clksel_rate*, %struct.clksel_rate** %10, align 8
  %65 = getelementptr inbounds %struct.clksel_rate, %struct.clksel_rate* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = udiv i64 %63, %67
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp ule i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %55
  br label %77

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %73, %42
  %75 = load %struct.clksel_rate*, %struct.clksel_rate** %10, align 8
  %76 = getelementptr inbounds %struct.clksel_rate, %struct.clksel_rate* %75, i32 1
  store %struct.clksel_rate* %76, %struct.clksel_rate** %10, align 8
  br label %30

77:                                               ; preds = %72, %30
  %78 = load %struct.clksel_rate*, %struct.clksel_rate** %10, align 8
  %79 = getelementptr inbounds %struct.clksel_rate, %struct.clksel_rate* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %77
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.clk*, %struct.clk** %5, align 8
  %85 = getelementptr inbounds %struct.clk, %struct.clk* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.clk*, %struct.clk** %5, align 8
  %88 = getelementptr inbounds %struct.clk, %struct.clk* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 %83, i32 %86, i32 %91)
  store i32 -1, i32* %4, align 4
  br label %122

93:                                               ; preds = %77
  %94 = load %struct.clksel_rate*, %struct.clksel_rate** %10, align 8
  %95 = getelementptr inbounds %struct.clksel_rate, %struct.clksel_rate* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.clk*, %struct.clk** %5, align 8
  %101 = getelementptr inbounds %struct.clk, %struct.clk* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.clksel_rate*, %struct.clksel_rate** %10, align 8
  %106 = getelementptr inbounds %struct.clksel_rate, %struct.clksel_rate* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = udiv i64 %104, %108
  %110 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %99, i64 %109)
  %111 = load %struct.clk*, %struct.clk** %5, align 8
  %112 = getelementptr inbounds %struct.clk, %struct.clk* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.clksel_rate*, %struct.clksel_rate** %10, align 8
  %117 = getelementptr inbounds %struct.clksel_rate, %struct.clksel_rate* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = udiv i64 %115, %119
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %93, %82, %25
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local %struct.clksel* @omap2_get_clksel_by_parent(%struct.clk*, %struct.TYPE_2__*) #1

declare dso_local i32 @pr_err(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
