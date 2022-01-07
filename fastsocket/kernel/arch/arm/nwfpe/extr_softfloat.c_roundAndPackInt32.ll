; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_roundAndPackInt32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_roundAndPackInt32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roundingData = type { i64, i32 }

@float_round_nearest_even = common dso_local global i64 0, align 8
@float_round_to_zero = common dso_local global i64 0, align 8
@float_round_up = common dso_local global i64 0, align 8
@float_round_down = common dso_local global i64 0, align 8
@float_flag_invalid = common dso_local global i32 0, align 4
@float_flag_inexact = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roundingData*, i32, i32)* @roundAndPackInt32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roundAndPackInt32(%struct.roundingData* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.roundingData*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.roundingData* %0, %struct.roundingData** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %14 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @float_round_nearest_even, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %9, align 4
  store i64 64, i64* %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @float_round_to_zero, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i64 0, i64* %10, align 8
  br label %43

27:                                               ; preds = %22
  store i64 127, i64* %10, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @float_round_up, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i64 0, i64* %10, align 8
  br label %35

35:                                               ; preds = %34, %30
  br label %42

36:                                               ; preds = %27
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @float_round_down, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i64 0, i64* %10, align 8
  br label %41

41:                                               ; preds = %40, %36
  br label %42

42:                                               ; preds = %41, %35
  br label %43

43:                                               ; preds = %42, %26
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 127
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %11, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %10, align 8
  %51 = add nsw i64 %49, %50
  %52 = ashr i64 %51, 7
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %7, align 4
  %54 = load i64, i64* %11, align 8
  %55 = xor i64 %54, 64
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %44
  %67 = load i32, i32* %12, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %66, %44
  %70 = load i32, i32* %7, align 4
  %71 = ashr i32 %70, 32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %6, align 4
  %81 = xor i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %76, %69
  %84 = load i32, i32* @float_flag_invalid, align 4
  %85 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %86 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 -2147483648, i32 2147483647
  store i32 %92, i32* %4, align 4
  br label %104

93:                                               ; preds = %76, %73
  %94 = load i64, i64* %11, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i32, i32* @float_flag_inexact, align 4
  %98 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %99 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %96, %93
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %83
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
