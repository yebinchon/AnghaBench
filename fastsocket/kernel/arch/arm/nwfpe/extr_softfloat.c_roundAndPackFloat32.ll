; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_roundAndPackFloat32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_roundAndPackFloat32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roundingData = type { i64, i32 }

@float_round_nearest_even = common dso_local global i64 0, align 8
@float_round_to_zero = common dso_local global i64 0, align 8
@float_round_up = common dso_local global i64 0, align 8
@float_round_down = common dso_local global i64 0, align 8
@float_flag_overflow = common dso_local global i32 0, align 4
@float_flag_inexact = common dso_local global i32 0, align 4
@float_detect_tininess = common dso_local global i64 0, align 8
@float_tininess_before_rounding = common dso_local global i64 0, align 8
@float_flag_underflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.roundingData*, i32, i32, i32)* @roundAndPackFloat32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @roundAndPackFloat32(%struct.roundingData* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.roundingData*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.roundingData* %0, %struct.roundingData** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.roundingData*, %struct.roundingData** %6, align 8
  %16 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @float_round_nearest_even, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %11, align 4
  store i64 64, i64* %12, align 8
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @float_round_to_zero, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i64 0, i64* %12, align 8
  br label %45

29:                                               ; preds = %24
  store i64 127, i64* %12, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @float_round_up, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i64 0, i64* %12, align 8
  br label %37

37:                                               ; preds = %36, %32
  br label %44

38:                                               ; preds = %29
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @float_round_down, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i64 0, i64* %12, align 8
  br label %43

43:                                               ; preds = %42, %38
  br label %44

44:                                               ; preds = %43, %37
  br label %45

45:                                               ; preds = %44, %28
  br label %46

46:                                               ; preds = %45, %4
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 127
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %13, align 8
  %50 = load i32, i32* %8, align 4
  %51 = icmp sle i32 253, %50
  br i1 %51, label %52, label %118

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 253, %53
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 253
  br i1 %57, label %58, label %79

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %12, align 8
  %62 = add nsw i64 %60, %61
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %58, %52
  %65 = load i32, i32* @float_flag_overflow, align 4
  %66 = load i32, i32* @float_flag_inexact, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.roundingData*, %struct.roundingData** %6, align 8
  %69 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i64 @packFloat32(i32 %72, i32 255, i32 0)
  %74 = load i64, i64* %12, align 8
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %73, %77
  store i64 %78, i64* %5, align 8
  br label %151

79:                                               ; preds = %58, %55
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %117

82:                                               ; preds = %79
  %83 = load i64, i64* @float_detect_tininess, align 8
  %84 = load i64, i64* @float_tininess_before_rounding, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %95, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, -1
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %12, align 8
  %93 = add nsw i64 %91, %92
  %94 = icmp slt i64 %93, 2147483648
  br label %95

95:                                               ; preds = %89, %86, %82
  %96 = phi i1 [ true, %86 ], [ true, %82 ], [ %94, %89 ]
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = sub nsw i32 0, %99
  %101 = call i32 @shift32RightJamming(i32 %98, i32 %100, i32* %9)
  store i32 0, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = and i32 %102, 127
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %13, align 8
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %95
  %108 = load i64, i64* %13, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, i32* @float_flag_underflow, align 4
  %112 = load %struct.roundingData*, %struct.roundingData** %6, align 8
  %113 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %110, %107, %95
  br label %117

117:                                              ; preds = %116, %79
  br label %118

118:                                              ; preds = %117, %46
  %119 = load i64, i64* %13, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* @float_flag_inexact, align 4
  %123 = load %struct.roundingData*, %struct.roundingData** %6, align 8
  %124 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %118
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %12, align 8
  %131 = add nsw i64 %129, %130
  %132 = ashr i64 %131, 7
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %9, align 4
  %134 = load i64, i64* %13, align 8
  %135 = xor i64 %134, 64
  %136 = icmp eq i64 %135, 0
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %11, align 4
  %139 = and i32 %137, %138
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %9, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %127
  store i32 0, i32* %8, align 4
  br label %146

146:                                              ; preds = %145, %127
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %9, align 4
  %150 = call i64 @packFloat32(i32 %147, i32 %148, i32 %149)
  store i64 %150, i64* %5, align 8
  br label %151

151:                                              ; preds = %146, %64
  %152 = load i64, i64* %5, align 8
  ret i64 %152
}

declare dso_local i64 @packFloat32(i32, i32, i32) #1

declare dso_local i32 @shift32RightJamming(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
