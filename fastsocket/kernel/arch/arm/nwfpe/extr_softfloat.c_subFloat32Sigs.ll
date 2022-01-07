; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_subFloat32Sigs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_subFloat32Sigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roundingData = type { i64, i32 }

@float_flag_invalid = common dso_local global i32 0, align 4
@float32_default_nan = common dso_local global i32 0, align 4
@float_round_down = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roundingData*, i32, i32, i32)* @subFloat32Sigs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subFloat32Sigs(%struct.roundingData* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.roundingData*, align 8
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
  store %struct.roundingData* %0, %struct.roundingData** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @extractFloat32Frac(i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @extractFloat32Exp(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @extractFloat32Frac(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @extractFloat32Exp(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %13, align 4
  %29 = shl i32 %28, 7
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = shl i32 %30, 7
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 0, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  br label %117

35:                                               ; preds = %4
  %36 = load i32, i32* %16, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %80

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 255
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = or i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @propagateFloat32NaN(i32 %48, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %157

51:                                               ; preds = %42
  %52 = load i32, i32* @float_flag_invalid, align 4
  %53 = load %struct.roundingData*, %struct.roundingData** %6, align 8
  %54 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* @float32_default_nan, align 4
  store i32 %57, i32* %5, align 4
  br label %157

58:                                               ; preds = %39
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %144

67:                                               ; preds = %62
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %110

72:                                               ; preds = %67
  %73 = load %struct.roundingData*, %struct.roundingData** %6, align 8
  %74 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @float_round_down, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @packFloat32(i32 %78, i32 0, i32 0)
  store i32 %79, i32* %5, align 4
  br label %157

80:                                               ; preds = %38
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 255
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @propagateFloat32NaN(i32 %87, i32 %88)
  store i32 %89, i32* %5, align 4
  br label %157

90:                                               ; preds = %83
  %91 = load i32, i32* %9, align 4
  %92 = xor i32 %91, 1
  %93 = call i32 @packFloat32(i32 %92, i32 255, i32 0)
  store i32 %93, i32* %5, align 4
  br label %157

94:                                               ; preds = %80
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %103

100:                                              ; preds = %94
  %101 = load i32, i32* %13, align 4
  %102 = or i32 %101, 1073741824
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %16, align 4
  %106 = sub nsw i32 0, %105
  %107 = call i32 @shift32RightJamming(i32 %104, i32 %106, i32* %13)
  %108 = load i32, i32* %14, align 4
  %109 = or i32 %108, 1073741824
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %103, %71
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %13, align 4
  %113 = sub nsw i32 %111, %112
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %9, align 4
  %116 = xor i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %149

117:                                              ; preds = %34
  %118 = load i32, i32* %10, align 4
  %119 = icmp eq i32 %118, 255
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @propagateFloat32NaN(i32 %124, i32 %125)
  store i32 %126, i32* %5, align 4
  br label %157

127:                                              ; preds = %120
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %5, align 4
  br label %157

129:                                              ; preds = %117
  %130 = load i32, i32* %11, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %16, align 4
  br label %138

135:                                              ; preds = %129
  %136 = load i32, i32* %14, align 4
  %137 = or i32 %136, 1073741824
  store i32 %137, i32* %14, align 4
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @shift32RightJamming(i32 %139, i32 %140, i32* %14)
  %142 = load i32, i32* %13, align 4
  %143 = or i32 %142, 1073741824
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %138, %66
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %14, align 4
  %147 = sub nsw i32 %145, %146
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %144, %110
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %12, align 4
  %152 = load %struct.roundingData*, %struct.roundingData** %6, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @normalizeRoundAndPackFloat32(%struct.roundingData* %152, i32 %153, i32 %154, i32 %155)
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %149, %127, %123, %90, %86, %72, %51, %47
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @extractFloat32Frac(i32) #1

declare dso_local i32 @extractFloat32Exp(i32) #1

declare dso_local i32 @propagateFloat32NaN(i32, i32) #1

declare dso_local i32 @packFloat32(i32, i32, i32) #1

declare dso_local i32 @shift32RightJamming(i32, i32, i32*) #1

declare dso_local i32 @normalizeRoundAndPackFloat32(%struct.roundingData*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
