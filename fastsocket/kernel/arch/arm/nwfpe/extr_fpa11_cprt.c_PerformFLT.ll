; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_fpa11_cprt.c_PerformFLT.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_fpa11_cprt.c_PerformFLT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.roundingData = type { i64, i32, i32 }

@MASK_ROUNDING_PRECISION = common dso_local global i32 0, align 4
@typeSingle = common dso_local global i32 0, align 4
@typeDouble = common dso_local global i32 0, align 4
@typeExtended = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PerformFLT(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.roundingData, align 8
  store i32 %0, i32* %3, align 4
  %6 = call %struct.TYPE_5__* (...) @GET_FPA11()
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @SetRoundingMode(i32 %7)
  %9 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %5, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @SetRoundingPrecision(i32 %10)
  %12 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %5, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %5, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @MASK_ROUNDING_PRECISION, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %55 [
    i32 128, label %17
    i32 130, label %36
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* @typeSingle, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @getFn(i32 %22)
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %18, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @getRd(i32 %25)
  %27 = call i32 @readRegister(i32 %26)
  %28 = call i32 @int32_to_float32(%struct.roundingData* %5, i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @getFn(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 %28, i32* %35, align 4
  br label %56

36:                                               ; preds = %1
  %37 = load i32, i32* @typeDouble, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @getFn(i32 %41)
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @getRd(i32 %44)
  %46 = call i32 @readRegister(i32 %45)
  %47 = call i32 @int32_to_float64(i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i64 @getFn(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %47, i32* %54, align 4
  br label %56

55:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

56:                                               ; preds = %36, %17
  %57 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %5, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %5, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @float_raise(i64 %62)
  br label %64

64:                                               ; preds = %60, %56
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %55
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_5__* @GET_FPA11(...) #1

declare dso_local i32 @SetRoundingMode(i32) #1

declare dso_local i32 @SetRoundingPrecision(i32) #1

declare dso_local i64 @getFn(i32) #1

declare dso_local i32 @int32_to_float32(%struct.roundingData*, i32) #1

declare dso_local i32 @readRegister(i32) #1

declare dso_local i32 @getRd(i32) #1

declare dso_local i32 @int32_to_float64(i32) #1

declare dso_local i32 @float_raise(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
