; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-maps.c_tda18271_lookup_thermometer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-maps.c_tda18271_lookup_thermometer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i32, i32 }
%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8* }

@tda18271_thermometer = common dso_local global %struct.TYPE_2__* null, align 8
@R_TM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"(%d) tm = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tda18271_lookup_thermometer(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda18271_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.tda18271_priv*, %struct.tda18271_priv** %8, align 8
  store %struct.tda18271_priv* %9, %struct.tda18271_priv** %3, align 8
  %10 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %11 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %39, %1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda18271_thermometer, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 4
  %20 = zext i8 %19 to i32
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* @R_TM, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 15
  %27 = icmp slt i32 %20, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %13
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda18271_thermometer, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 4
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %42

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %13

42:                                               ; preds = %38, %13
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* @R_TM, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 32
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda18271_thermometer, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %5, align 4
  br label %64

57:                                               ; preds = %42
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda18271_thermometer, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %57, %50
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @tda_map(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @tda_map(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
