; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_addFloat64Sigs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_addFloat64Sigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roundingData = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roundingData*, i32, i32, i32)* @addFloat64Sigs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addFloat64Sigs(%struct.roundingData* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %29 = shl i32 %28, 9
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = shl i32 %30, 9
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 0, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 2047
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @propagateFloat64NaN(i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %151

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %5, align 4
  br label %151

46:                                               ; preds = %34
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %16, align 4
  br label %56

52:                                               ; preds = %46
  %53 = call i32 @LIT64(i32 0)
  %54 = load i32, i32* %14, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %16, align 4
  %59 = call i32 @shift64RightJamming(i32 %57, i32 %58, i32* %14)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %12, align 4
  br label %125

61:                                               ; preds = %4
  %62 = load i32, i32* %16, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %65, 2047
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @propagateFloat64NaN(i32 %71, i32 %72)
  store i32 %73, i32* %5, align 4
  br label %151

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @packFloat64(i32 %75, i32 2047, i32 0)
  store i32 %76, i32* %5, align 4
  br label %151

77:                                               ; preds = %64
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %16, align 4
  br label %87

83:                                               ; preds = %77
  %84 = call i32 @LIT64(i32 0)
  %85 = load i32, i32* %13, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %83, %80
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %16, align 4
  %90 = sub nsw i32 0, %89
  %91 = call i32 @shift64RightJamming(i32 %88, i32 %90, i32* %13)
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %12, align 4
  br label %124

93:                                               ; preds = %61
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 2047
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = or i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @propagateFloat64NaN(i32 %102, i32 %103)
  store i32 %104, i32* %5, align 4
  br label %151

105:                                              ; preds = %96
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %5, align 4
  br label %151

107:                                              ; preds = %93
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %112, %113
  %115 = ashr i32 %114, 9
  %116 = call i32 @packFloat64(i32 %111, i32 0, i32 %115)
  store i32 %116, i32* %5, align 4
  br label %151

117:                                              ; preds = %107
  %118 = call i32 @LIT64(i32 0)
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %120, %121
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %12, align 4
  br label %145

124:                                              ; preds = %87
  br label %125

125:                                              ; preds = %124, %56
  %126 = call i32 @LIT64(i32 0)
  %127 = load i32, i32* %13, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %129, %130
  %132 = shl i32 %131, 1
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %125
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %139, %140
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %144

144:                                              ; preds = %138, %125
  br label %145

145:                                              ; preds = %144, %117
  %146 = load %struct.roundingData*, %struct.roundingData** %6, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @roundAndPackFloat64(%struct.roundingData* %146, i32 %147, i32 %148, i32 %149)
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %145, %110, %105, %101, %74, %70, %44, %40
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @extractFloat64Frac(i32) #1

declare dso_local i32 @extractFloat64Exp(i32) #1

declare dso_local i32 @propagateFloat64NaN(i32, i32) #1

declare dso_local i32 @LIT64(i32) #1

declare dso_local i32 @shift64RightJamming(i32, i32, i32*) #1

declare dso_local i32 @packFloat64(i32, i32, i32) #1

declare dso_local i32 @roundAndPackFloat64(%struct.roundingData*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
