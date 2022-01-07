; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c__dpll_test_fint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c__dpll_test_fint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.TYPE_2__*, %struct.dpll_data* }
%struct.TYPE_2__ = type { i32 }
%struct.dpll_data = type { i32, i32 }

@DPLL_FINT_BAND1_MIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"rejecting n=%d due to Fint failure, lowering max_divider\0A\00", align 1
@DPLL_FINT_UNDERFLOW = common dso_local global i32 0, align 4
@DPLL_FINT_BAND1_MAX = common dso_local global i64 0, align 8
@DPLL_FINT_BAND2_MIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"rejecting n=%d due to Fint failure\0A\00", align 1
@DPLL_FINT_INVALID = common dso_local global i32 0, align 4
@DPLL_FINT_BAND2_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"rejecting n=%d due to Fint failure, boosting min_divider\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i32)* @_dpll_test_fint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpll_test_fint(%struct.clk* %0, i32 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpll_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.clk*, %struct.clk** %3, align 8
  %9 = getelementptr inbounds %struct.clk, %struct.clk* %8, i32 0, i32 1
  %10 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  store %struct.dpll_data* %10, %struct.dpll_data** %5, align 8
  %11 = load %struct.clk*, %struct.clk** %3, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  %18 = sdiv i32 %15, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @DPLL_FINT_BAND1_MIN, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %28 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @DPLL_FINT_UNDERFLOW, align 4
  store i32 %29, i32* %7, align 4
  br label %55

30:                                               ; preds = %2
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @DPLL_FINT_BAND1_MAX, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @DPLL_FINT_BAND2_MIN, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @DPLL_FINT_INVALID, align 4
  store i32 %41, i32* %7, align 4
  br label %54

42:                                               ; preds = %34, %30
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @DPLL_FINT_BAND2_MAX, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %51 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @DPLL_FINT_INVALID, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %46, %42
  br label %54

54:                                               ; preds = %53, %38
  br label %55

55:                                               ; preds = %54, %23
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
