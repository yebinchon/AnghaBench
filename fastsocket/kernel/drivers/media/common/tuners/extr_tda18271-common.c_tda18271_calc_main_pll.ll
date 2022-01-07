; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-common.c_tda18271_calc_main_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-common.c_tda18271_calc_main_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8*, i32 }

@MAIN_PLL = common dso_local global i32 0, align 4
@R_MPD = common dso_local global i64 0, align 8
@R_MD1 = common dso_local global i64 0, align 8
@R_MD2 = common dso_local global i64 0, align 8
@R_MD3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tda18271_calc_main_pll(%struct.dvb_frontend* %0, i32 %1) #0 {
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
  %18 = load i32, i32* @MAIN_PLL, align 4
  %19 = call i32 @tda18271_lookup_pll_map(%struct.dvb_frontend* %17, i32 %18, i32* %4, i32* %8, i32* %7)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @tda_fail(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %77

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = and i32 119, %25
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* @R_MPD, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 %27, i8* %30, align 1
  %31 = load %struct.tda18271_priv*, %struct.tda18271_priv** %5, align 8
  %32 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %50 [
    i32 129, label %34
    i32 128, label %42
  ]

34:                                               ; preds = %24
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* @R_MPD, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, -9
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %37, align 1
  br label %50

42:                                               ; preds = %24
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* @R_MPD, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, 8
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %45, align 1
  br label %50

50:                                               ; preds = %24, %42, %34
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sdiv i32 %52, 1000
  %54 = mul nsw i32 %51, %53
  %55 = shl i32 %54, 7
  %56 = sdiv i32 %55, 125
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = ashr i32 %57, 16
  %59 = and i32 127, %58
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* @R_MD1, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 %60, i8* %63, align 1
  %64 = load i32, i32* %9, align 4
  %65 = ashr i32 %64, 8
  %66 = and i32 255, %65
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* @R_MD2, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8 %67, i8* %70, align 1
  %71 = load i32, i32* %9, align 4
  %72 = and i32 255, %71
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* @R_MD3, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8 %73, i8* %76, align 1
  br label %77

77:                                               ; preds = %50, %23
  %78 = load i32, i32* %10, align 4
  ret i32 %78
}

declare dso_local i32 @tda18271_lookup_pll_map(%struct.dvb_frontend*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @tda_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
