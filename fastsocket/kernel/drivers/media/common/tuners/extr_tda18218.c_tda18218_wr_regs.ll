; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18218.c_tda18218_wr_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18218.c_tda18218_wr_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda18218_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"i2c wr failed ret:%d reg:%02x len:%d\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda18218_priv*, i32, i32*, i32)* @tda18218_wr_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18218_wr_regs(%struct.tda18218_priv* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.tda18218_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [1 x %struct.i2c_msg], align 16
  store %struct.tda18218_priv* %0, %struct.tda18218_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 1, %18
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %17, i64 0, i64 0
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 3
  %28 = load %struct.tda18218_priv*, %struct.tda18218_priv** %5, align 8
  %29 = getelementptr inbounds %struct.tda18218_priv, %struct.tda18218_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %27, align 8
  %33 = load %struct.tda18218_priv*, %struct.tda18218_priv** %5, align 8
  %34 = getelementptr inbounds %struct.tda18218_priv, %struct.tda18218_priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %16, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %16, align 4
  %44 = srem i32 %42, %43
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %90, %4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %50, %46
  %54 = phi i1 [ false, %46 ], [ %52, %50 ]
  br i1 %54, label %55, label %93

55:                                               ; preds = %53
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, 1
  %64 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %17, i64 0, i64 0
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %16, align 4
  %69 = mul nsw i32 %67, %68
  %70 = add nsw i32 %66, %69
  %71 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %70, i32* %71, align 16
  %72 = getelementptr inbounds i32, i32* %22, i64 1
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %16, align 4
  %76 = mul nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @memcpy(i32* %72, i32* %78, i32 %79)
  %81 = load %struct.tda18218_priv*, %struct.tda18218_priv** %5, align 8
  %82 = getelementptr inbounds %struct.tda18218_priv, %struct.tda18218_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %17, i64 0, i64 0
  %85 = call i32 @i2c_transfer(i32 %83, %struct.i2c_msg* %84, i32 1)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %61
  br label %93

89:                                               ; preds = %61
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %46

93:                                               ; preds = %88, %53
  %94 = load i32, i32* %9, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 0, i32* %9, align 4
  br label %104

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* @EREMOTEIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %97, %96
  %105 = load i32, i32* %9, align 4
  %106 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %106)
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i32 @warn(i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
