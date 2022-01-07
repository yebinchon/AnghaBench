; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power5-pmu.c_power5_get_alternatives.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power5-pmu.c_power5_get_alternatives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ALT = common dso_local global i32 0, align 4
@event_alternatives = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64*)* @power5_get_alternatives to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power5_get_alternatives(i64 %0, i32 %1, i64* %2) #0 {
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
  %53 = call i64 @find_alternative_bdecode(i64 %52)
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
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local i32 @find_alternative(i64) #1

declare dso_local i64 @find_alternative_bdecode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
