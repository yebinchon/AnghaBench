; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_subFloat64Sigs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_subFloat64Sigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roundingData = type { i64, i32 }

@float_flag_invalid = common dso_local global i32 0, align 4
@float64_default_nan = common dso_local global i32 0, align 4
@float_round_down = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roundingData*, i32, i32, i32)* @subFloat64Sigs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subFloat64Sigs(%struct.roundingData* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = call i32 @extractFloat64Frac(i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @extractFloat64Exp(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @extractFloat64Frac(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @extractFloat64Exp(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %13, align 4
  %29 = shl i32 %28, 10
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = shl i32 %30, 10
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 0, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  br label %119

35:                                               ; preds = %4
  %36 = load i32, i32* %16, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %80

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 2047
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
  %50 = call i32 @propagateFloat64NaN(i32 %48, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %161

51:                                               ; preds = %42
  %52 = load i32, i32* @float_flag_invalid, align 4
  %53 = load %struct.roundingData*, %struct.roundingData** %6, align 8
  %54 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* @float64_default_nan, align 4
  store i32 %57, i32* %5, align 4
  br label %161

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
  br label %148

67:                                               ; preds = %62
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %112

72:                                               ; preds = %67
  %73 = load %struct.roundingData*, %struct.roundingData** %6, align 8
  %74 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @float_round_down, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @packFloat64(i32 %78, i32 0, i32 0)
  store i32 %79, i32* %5, align 4
  br label %161

80:                                               ; preds = %38
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 2047
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @propagateFloat64NaN(i32 %87, i32 %88)
  store i32 %89, i32* %5, align 4
  br label %161

90:                                               ; preds = %83
  %91 = load i32, i32* %9, align 4
  %92 = xor i32 %91, 1
  %93 = call i32 @packFloat64(i32 %92, i32 2047, i32 0)
  store i32 %93, i32* %5, align 4
  br label %161

94:                                               ; preds = %80
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %104

100:                                              ; preds = %94
  %101 = call i32 @LIT64(i32 0)
  %102 = load i32, i32* %13, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %100, %97
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %16, align 4
  %107 = sub nsw i32 0, %106
  %108 = call i32 @shift64RightJamming(i32 %105, i32 %107, i32* %13)
  %109 = call i32 @LIT64(i32 0)
  %110 = load i32, i32* %14, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %104, %71
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %13, align 4
  %115 = sub nsw i32 %113, %114
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %9, align 4
  %118 = xor i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %153

119:                                              ; preds = %34
  %120 = load i32, i32* %10, align 4
  %121 = icmp eq i32 %120, 2047
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @propagateFloat64NaN(i32 %126, i32 %127)
  store i32 %128, i32* %5, align 4
  br label %161

129:                                              ; preds = %122
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %5, align 4
  br label %161

131:                                              ; preds = %119
  %132 = load i32, i32* %11, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %16, align 4
  br label %141

137:                                              ; preds = %131
  %138 = call i32 @LIT64(i32 0)
  %139 = load i32, i32* %14, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %14, align 4
  br label %141

141:                                              ; preds = %137, %134
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %16, align 4
  %144 = call i32 @shift64RightJamming(i32 %142, i32 %143, i32* %14)
  %145 = call i32 @LIT64(i32 0)
  %146 = load i32, i32* %13, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %141, %66
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %14, align 4
  %151 = sub nsw i32 %149, %150
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %148, %112
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %12, align 4
  %156 = load %struct.roundingData*, %struct.roundingData** %6, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @normalizeRoundAndPackFloat64(%struct.roundingData* %156, i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %153, %129, %125, %90, %86, %72, %51, %47
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @extractFloat64Frac(i32) #1

declare dso_local i32 @extractFloat64Exp(i32) #1

declare dso_local i32 @propagateFloat64NaN(i32, i32) #1

declare dso_local i32 @packFloat64(i32, i32, i32) #1

declare dso_local i32 @LIT64(i32) #1

declare dso_local i32 @shift64RightJamming(i32, i32, i32*) #1

declare dso_local i32 @normalizeRoundAndPackFloat64(%struct.roundingData*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
