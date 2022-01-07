; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power7-pmu.c_power7_get_alternatives.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power7-pmu.c_power7_get_alternatives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ALT = common dso_local global i32 0, align 4
@event_alternatives = common dso_local global i64** null, align 8
@PPMU_ONLY_COUNT_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64*)* @power7_get_alternatives to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power7_get_alternatives(i64 %0, i32 %1, i64* %2) #0 {
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
  store i32 1, i32* %9, align 4
  %11 = load i64, i64* %4, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  store i64 %11, i64* %13, align 8
  store i32 1, i32* %9, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @find_alternative(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %47, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MAX_ALT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = load i64**, i64*** @event_alternatives, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64*, i64** %24, i64 %26
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %23
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i64, i64* %10, align 8
  %41 = load i64*, i64** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  store i64 %40, i64* %45, align 8
  br label %46

46:                                               ; preds = %39, %35, %23
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %19

50:                                               ; preds = %19
  br label %64

51:                                               ; preds = %3
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @find_alternative_decode(i64 %52)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i64, i64* %10, align 8
  %58 = load i64*, i64** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  store i64 %57, i64* %62, align 8
  br label %63

63:                                               ; preds = %56, %51
  br label %64

64:                                               ; preds = %63, %50
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @PPMU_ONLY_COUNT_RUN, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %111

69:                                               ; preds = %64
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %106, %69
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %109

75:                                               ; preds = %71
  %76 = load i64*, i64** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  switch i64 %80, label %105 [
    i64 30, label %81
    i64 393460, label %87
    i64 2, label %93
    i64 327930, label %99
  ]

81:                                               ; preds = %75
  %82 = load i64*, i64** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i64, i64* %82, i64 %85
  store i64 393460, i64* %86, align 8
  br label %105

87:                                               ; preds = %75
  %88 = load i64*, i64** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  store i64 30, i64* %92, align 8
  br label %105

93:                                               ; preds = %75
  %94 = load i64*, i64** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i64, i64* %94, i64 %97
  store i64 327930, i64* %98, align 8
  br label %105

99:                                               ; preds = %75
  %100 = load i64*, i64** %6, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i64, i64* %100, i64 %103
  store i64 2, i64* %104, align 8
  br label %105

105:                                              ; preds = %75, %99, %93, %87, %81
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %71

109:                                              ; preds = %71
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %109, %64
  %112 = load i32, i32* %9, align 4
  ret i32 %112
}

declare dso_local i32 @find_alternative(i64) #1

declare dso_local i64 @find_alternative_decode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
