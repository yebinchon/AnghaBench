; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-common.c_tda18271_calc_cal_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-common.c_tda18271_calc_cal_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8* }

@CAL_PLL = common dso_local global i32 0, align 4
@R_CPD = common dso_local global i64 0, align 8
@R_CD1 = common dso_local global i64 0, align 8
@R_CD2 = common dso_local global i64 0, align 8
@R_CD3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tda18271_calc_cal_pll(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tda18271_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.tda18271_priv*, %struct.tda18271_priv** %12, align 8
  store %struct.tda18271_priv* %13, %struct.tda18271_priv** %5, align 8
  %14 = load %struct.tda18271_priv*, %struct.tda18271_priv** %5, align 8
  %15 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %18 = load i32, i32* @CAL_PLL, align 4
  %19 = call i32 @tda18271_lookup_pll_map(%struct.dvb_frontend* %17, i32 %18, i32* %4, i32* %8, i32* %7)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @tda_fail(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %56

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* @R_CPD, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8 %26, i8* %29, align 1
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sdiv i32 %31, 1000
  %33 = mul nsw i32 %30, %32
  %34 = shl i32 %33, 7
  %35 = sdiv i32 %34, 125
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 127, %37
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* @R_CD1, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 %39, i8* %42, align 1
  %43 = load i32, i32* %9, align 4
  %44 = ashr i32 %43, 8
  %45 = and i32 255, %44
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* @R_CD2, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 %46, i8* %49, align 1
  %50 = load i32, i32* %9, align 4
  %51 = and i32 255, %50
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* @R_CD3, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 %52, i8* %55, align 1
  br label %56

56:                                               ; preds = %24, %23
  %57 = load i32, i32* %10, align 4
  ret i32 %57
}

declare dso_local i32 @tda18271_lookup_pll_map(%struct.dvb_frontend*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @tda_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
