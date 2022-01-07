; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-maps.c_tda18271_lookup_pll_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-maps.c_tda18271_lookup_pll_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tda18271_pll_map*, %struct.tda18271_pll_map* }
%struct.tda18271_pll_map = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"main_pll\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"cal_pll\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s map is not set!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"%s: frequency (%d) out of range\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"(%d) %s: post div = 0x%02x, div = 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tda18271_lookup_pll_map(%struct.dvb_frontend* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.tda18271_priv*, align 8
  %12 = alloca %struct.tda18271_pll_map*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = load %struct.tda18271_priv*, %struct.tda18271_priv** %17, align 8
  store %struct.tda18271_priv* %18, %struct.tda18271_priv** %11, align 8
  store %struct.tda18271_pll_map* null, %struct.tda18271_pll_map** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.tda18271_priv*, %struct.tda18271_priv** %11, align 8
  %20 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %39 [
    i32 128, label %27
    i32 129, label %33
  ]

27:                                               ; preds = %5
  %28 = load %struct.tda18271_priv*, %struct.tda18271_priv** %11, align 8
  %29 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.tda18271_pll_map*, %struct.tda18271_pll_map** %31, align 8
  store %struct.tda18271_pll_map* %32, %struct.tda18271_pll_map** %12, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %40

33:                                               ; preds = %5
  %34 = load %struct.tda18271_priv*, %struct.tda18271_priv** %11, align 8
  %35 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.tda18271_pll_map*, %struct.tda18271_pll_map** %37, align 8
  store %struct.tda18271_pll_map* %38, %struct.tda18271_pll_map** %12, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %40

39:                                               ; preds = %5
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  br label %40

40:                                               ; preds = %39, %33, %27
  %41 = load %struct.tda18271_pll_map*, %struct.tda18271_pll_map** %12, align 8
  %42 = icmp ne %struct.tda18271_pll_map* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %14, align 8
  %45 = call i32 @tda_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %15, align 4
  br label %101

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %76, %48
  %50 = load %struct.tda18271_pll_map*, %struct.tda18271_pll_map** %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.tda18271_pll_map, %struct.tda18271_pll_map* %50, i64 %52
  %54 = getelementptr inbounds %struct.tda18271_pll_map, %struct.tda18271_pll_map* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, 1000
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %49
  %61 = load %struct.tda18271_pll_map*, %struct.tda18271_pll_map** %12, align 8
  %62 = load i32, i32* %13, align 4
  %63 = add i32 %62, 1
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.tda18271_pll_map, %struct.tda18271_pll_map* %61, i64 %64
  %66 = getelementptr inbounds %struct.tda18271_pll_map, %struct.tda18271_pll_map* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load i8*, i8** %14, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @tda_map(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %70, i32 %72)
  %74 = load i32, i32* @ERANGE, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %15, align 4
  br label %79

76:                                               ; preds = %60
  %77 = load i32, i32* %13, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %49

79:                                               ; preds = %69, %49
  %80 = load %struct.tda18271_pll_map*, %struct.tda18271_pll_map** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.tda18271_pll_map, %struct.tda18271_pll_map* %80, i64 %82
  %84 = getelementptr inbounds %struct.tda18271_pll_map, %struct.tda18271_pll_map* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  %87 = load %struct.tda18271_pll_map*, %struct.tda18271_pll_map** %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.tda18271_pll_map, %struct.tda18271_pll_map* %87, i64 %89
  %91 = getelementptr inbounds %struct.tda18271_pll_map, %struct.tda18271_pll_map* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %10, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i8*, i8** %14, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @tda_map(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %94, i8* %95, i32 %97, i32 %99)
  br label %101

101:                                              ; preds = %79, %43
  %102 = load i32, i32* %15, align 4
  ret i32 %102
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tda_warn(i8*, i8*) #1

declare dso_local i32 @tda_map(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
