; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_clksel_recalc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_clksel_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"clock: recalc'ing clksel clk %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"clock: new clock rate is %ld (div %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @omap2_clksel_recalc(%struct.clk* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.clk*, %struct.clk** %3, align 8
  %7 = getelementptr inbounds %struct.clk, %struct.clk* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load %struct.clk*, %struct.clk** %3, align 8
  %12 = call i64 @omap2_clksel_get_divisor(%struct.clk* %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.clk*, %struct.clk** %3, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %2, align 8
  br label %31

19:                                               ; preds = %1
  %20 = load %struct.clk*, %struct.clk** %3, align 8
  %21 = getelementptr inbounds %struct.clk, %struct.clk* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = udiv i64 %24, %25
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %27, i64 %28)
  %30 = load i64, i64* %4, align 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %19, %15
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i64 @omap2_clksel_get_divisor(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
