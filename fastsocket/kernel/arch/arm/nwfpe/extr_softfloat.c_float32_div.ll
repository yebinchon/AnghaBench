; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_float32_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_float32_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roundingData = type { i32 }

@float_flag_invalid = common dso_local global i32 0, align 4
@float32_default_nan = common dso_local global i32 0, align 4
@float_flag_divbyzero = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float32_div(%struct.roundingData* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.roundingData*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.roundingData* %0, %struct.roundingData** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @extractFloat32Frac(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @extractFloat32Exp(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @extractFloat32Sign(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @extractFloat32Frac(i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @extractFloat32Exp(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @extractFloat32Sign(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = xor i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 255
  br i1 %34, label %35, label %62

35:                                               ; preds = %3
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @propagateFloat32NaN(i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %163

42:                                               ; preds = %35
  %43 = load i32, i32* %12, align 4
  %44 = icmp eq i32 %43, 255
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @propagateFloat32NaN(i32 %49, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %163

52:                                               ; preds = %45
  %53 = load i32, i32* @float_flag_invalid, align 4
  %54 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %55 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @float32_default_nan, align 4
  store i32 %58, i32* %4, align 4
  br label %163

59:                                               ; preds = %42
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @packFloat32(i32 %60, i32 255, i32 0)
  store i32 %61, i32* %4, align 4
  br label %163

62:                                               ; preds = %3
  %63 = load i32, i32* %12, align 4
  %64 = icmp eq i32 %63, 255
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @propagateFloat32NaN(i32 %69, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %163

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @packFloat32(i32 %73, i32 0, i32 0)
  store i32 %74, i32* %4, align 4
  br label %163

75:                                               ; preds = %62
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %104

78:                                               ; preds = %75
  %79 = load i32, i32* %15, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %14, align 4
  %84 = or i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i32, i32* @float_flag_invalid, align 4
  %88 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %89 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* @float32_default_nan, align 4
  store i32 %92, i32* %4, align 4
  br label %163

93:                                               ; preds = %81
  %94 = load i32, i32* @float_flag_divbyzero, align 4
  %95 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %96 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @packFloat32(i32 %99, i32 255, i32 0)
  store i32 %100, i32* %4, align 4
  br label %163

101:                                              ; preds = %78
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @normalizeFloat32Subnormal(i32 %102, i32* %12, i32* %15)
  br label %104

104:                                              ; preds = %101, %75
  %105 = load i32, i32* %11, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load i32, i32* %14, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @packFloat32(i32 %111, i32 0, i32 0)
  store i32 %112, i32* %4, align 4
  br label %163

113:                                              ; preds = %107
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @normalizeFloat32Subnormal(i32 %114, i32* %11, i32* %14)
  br label %116

116:                                              ; preds = %113, %104
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = sub nsw i32 %117, %118
  %120 = add nsw i32 %119, 125
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %14, align 4
  %122 = or i32 %121, 8388608
  %123 = shl i32 %122, 7
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %15, align 4
  %125 = or i32 %124, 8388608
  %126 = shl i32 %125, 8
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %128, %129
  %131 = icmp sle i32 %127, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %116
  %133 = load i32, i32* %14, align 4
  %134 = ashr i32 %133, 1
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %132, %116
  %138 = load i32, i32* %14, align 4
  %139 = shl i32 %138, 32
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @do_div(i32 %140, i32 %141)
  %143 = load i32, i32* %17, align 4
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = and i32 %144, 63
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %137
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %16, align 4
  %150 = mul nsw i32 %148, %149
  %151 = load i32, i32* %14, align 4
  %152 = shl i32 %151, 32
  %153 = icmp ne i32 %150, %152
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %16, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %16, align 4
  br label %157

157:                                              ; preds = %147, %137
  %158 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %16, align 4
  %162 = call i32 @roundAndPackFloat32(%struct.roundingData* %158, i32 %159, i32 %160, i32 %161)
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %157, %110, %93, %86, %72, %68, %59, %52, %48, %38
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @extractFloat32Frac(i32) #1

declare dso_local i32 @extractFloat32Exp(i32) #1

declare dso_local i32 @extractFloat32Sign(i32) #1

declare dso_local i32 @propagateFloat32NaN(i32, i32) #1

declare dso_local i32 @packFloat32(i32, i32, i32) #1

declare dso_local i32 @normalizeFloat32Subnormal(i32, i32*, i32*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @roundAndPackFloat32(%struct.roundingData*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
