; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_float64_sqrt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_float64_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roundingData = type { i32 }

@float_flag_invalid = common dso_local global i32 0, align 4
@float64_default_nan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float64_sqrt(%struct.roundingData* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.roundingData*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.roundingData* %0, %struct.roundingData** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @extractFloat64Frac(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @extractFloat64Exp(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @extractFloat64Sign(i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 2047
  br i1 %22, label %23, label %42

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @propagateFloat64NaN(i32 %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %144

30:                                               ; preds = %23
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %3, align 4
  br label %144

35:                                               ; preds = %30
  %36 = load i32, i32* @float_flag_invalid, align 4
  %37 = load %struct.roundingData*, %struct.roundingData** %4, align 8
  %38 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @float64_default_nan, align 4
  store i32 %41, i32* %3, align 4
  br label %144

42:                                               ; preds = %2
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %3, align 4
  br label %144

52:                                               ; preds = %45
  %53 = load i32, i32* @float_flag_invalid, align 4
  %54 = load %struct.roundingData*, %struct.roundingData** %4, align 8
  %55 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @float64_default_nan, align 4
  store i32 %58, i32* %3, align 4
  br label %144

59:                                               ; preds = %42
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %144

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @normalizeFloat64Subnormal(i32 %67, i32* %7, i32* %9)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %70, 1023
  %72 = ashr i32 %71, 1
  %73 = add nsw i32 %72, 1022
  store i32 %73, i32* %8, align 4
  %74 = call i32 @LIT64(i32 0)
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = ashr i32 %78, 21
  %80 = call i32 @estimateSqrt32(i32 %77, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = shl i32 %81, 31
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, 1
  %85 = sub nsw i32 9, %84
  %86 = load i32, i32* %9, align 4
  %87 = shl i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @estimateDiv128To64(i32 %88, i32 0, i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %90, %91
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = and i32 %94, 1023
  %96 = icmp sle i32 %95, 5
  br i1 %96, label %97, label %137

97:                                               ; preds = %69
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 2
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i32 @LIT64(i32 -1)
  store i32 %101, i32* %10, align 4
  br label %136

102:                                              ; preds = %97
  %103 = load i32, i32* %9, align 4
  %104 = shl i32 %103, 2
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @mul64To128(i32 %105, i32 %106, i32* %13, i32* %14)
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @sub128(i32 %108, i32 0, i32 %109, i32 %110, i32* %11, i32* %12)
  br label %112

112:                                              ; preds = %116, %102
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %112
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @shortShift128Left(i32 0, i32 %119, i32 1, i32* %13, i32* %14)
  %121 = load i32, i32* %14, align 4
  %122 = or i32 %121, 1
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @add128(i32 %123, i32 %124, i32 %125, i32 %126, i32* %11, i32* %12)
  br label %112

128:                                              ; preds = %112
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %12, align 4
  %131 = or i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %10, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %128, %100
  br label %137

137:                                              ; preds = %136, %69
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @shift64RightJamming(i32 %138, i32 1, i32* %10)
  %140 = load %struct.roundingData*, %struct.roundingData** %4, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @roundAndPackFloat64(%struct.roundingData* %140, i32 0, i32 %141, i32 %142)
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %137, %65, %52, %50, %35, %33, %26
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @extractFloat64Frac(i32) #1

declare dso_local i32 @extractFloat64Exp(i32) #1

declare dso_local i64 @extractFloat64Sign(i32) #1

declare dso_local i32 @propagateFloat64NaN(i32, i32) #1

declare dso_local i32 @normalizeFloat64Subnormal(i32, i32*, i32*) #1

declare dso_local i32 @LIT64(i32) #1

declare dso_local i32 @estimateSqrt32(i32, i32) #1

declare dso_local i32 @estimateDiv128To64(i32, i32, i32) #1

declare dso_local i32 @mul64To128(i32, i32, i32*, i32*) #1

declare dso_local i32 @sub128(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @shortShift128Left(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @add128(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @shift64RightJamming(i32, i32, i32*) #1

declare dso_local i32 @roundAndPackFloat64(%struct.roundingData*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
