; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power8-pmu.c_power8_get_alternatives.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power8-pmu.c_power8_get_alternatives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ALT = common dso_local global i32 0, align 4
@event_alternatives = common dso_local global i64** null, align 8
@PPMU_ONLY_COUNT_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64*)* @power8_get_alternatives to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power8_get_alternatives(i64 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %9, align 4
  %11 = load i64, i64* %4, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = load i32, i32* %9, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %9, align 4
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i64, i64* %12, i64 %15
  store i64 %11, i64* %16, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @find_alternative(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %50, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MAX_ALT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load i64**, i64*** @event_alternatives, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64*, i64** %27, i64 %29
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %26
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i64, i64* %10, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  store i64 %43, i64* %48, align 8
  br label %49

49:                                               ; preds = %42, %38, %26
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %22

53:                                               ; preds = %22
  br label %54

54:                                               ; preds = %53, %3
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @PPMU_ONLY_COUNT_RUN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %101

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %96, %59
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %99

65:                                               ; preds = %61
  %66 = load i64*, i64** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  switch i64 %70, label %95 [
    i64 30, label %71
    i64 393460, label %77
    i64 2, label %83
    i64 327930, label %89
  ]

71:                                               ; preds = %65
  %72 = load i64*, i64** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  store i64 393460, i64* %76, align 8
  br label %95

77:                                               ; preds = %65
  %78 = load i64*, i64** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i64, i64* %78, i64 %81
  store i64 30, i64* %82, align 8
  br label %95

83:                                               ; preds = %65
  %84 = load i64*, i64** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  store i64 327930, i64* %88, align 8
  br label %95

89:                                               ; preds = %65
  %90 = load i64*, i64** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i64, i64* %90, i64 %93
  store i64 2, i64* %94, align 8
  br label %95

95:                                               ; preds = %65, %89, %83, %77, %71
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %61

99:                                               ; preds = %61
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %99, %54
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

declare dso_local i32 @find_alternative(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
