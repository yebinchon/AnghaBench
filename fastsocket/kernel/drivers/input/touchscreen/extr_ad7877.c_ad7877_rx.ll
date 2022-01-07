; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ad7877.c_ad7877_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ad7877.c_ad7877_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7877 = type { i32*, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@AD7877_SEQ_XPOS = common dso_local global i64 0, align 8
@MAX_12BIT = common dso_local global i32 0, align 4
@AD7877_SEQ_YPOS = common dso_local global i64 0, align 8
@AD7877_SEQ_Z1 = common dso_local global i64 0, align 8
@AD7877_SEQ_Z2 = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad7877*)* @ad7877_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad7877_rx(%struct.ad7877* %0) #0 {
  %2 = alloca %struct.ad7877*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ad7877* %0, %struct.ad7877** %2, align 8
  %9 = load %struct.ad7877*, %struct.ad7877** %2, align 8
  %10 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %9, i32 0, i32 2
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %3, align 8
  %12 = load %struct.ad7877*, %struct.ad7877** %2, align 8
  %13 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @AD7877_SEQ_XPOS, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MAX_12BIT, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ad7877*, %struct.ad7877** %2, align 8
  %21 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @AD7877_SEQ_YPOS, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MAX_12BIT, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.ad7877*, %struct.ad7877** %2, align 8
  %29 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @AD7877_SEQ_Z1, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MAX_12BIT, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load %struct.ad7877*, %struct.ad7877** %2, align 8
  %37 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @AD7877_SEQ_Z2, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAX_12BIT, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %1
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %46, %1
  %50 = phi i1 [ false, %1 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @likely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub i32 %55, %56
  %58 = load i32, i32* %5, align 4
  %59 = mul i32 %57, %58
  %60 = load %struct.ad7877*, %struct.ad7877** %2, align 8
  %61 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = mul i32 %59, %62
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %4, align 4
  %66 = udiv i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = add i32 %67, 2047
  %69 = lshr i32 %68, 12
  store i32 %69, i32* %4, align 4
  %70 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %71 = load i32, i32* @ABS_X, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @input_report_abs(%struct.input_dev* %70, i32 %71, i32 %72)
  %74 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %75 = load i32, i32* @ABS_Y, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @input_report_abs(%struct.input_dev* %74, i32 %75, i32 %76)
  %78 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %79 = load i32, i32* @ABS_PRESSURE, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @input_report_abs(%struct.input_dev* %78, i32 %79, i32 %80)
  %82 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %83 = call i32 @input_sync(%struct.input_dev* %82)
  br label %84

84:                                               ; preds = %54, %49
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
