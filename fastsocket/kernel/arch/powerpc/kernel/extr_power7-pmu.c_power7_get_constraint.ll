; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power7-pmu.c_power7_get_constraint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power7-pmu.c_power7_get_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64*)* @power7_get_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power7_get_constraint(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @PM_PMC_SH, align 4
  %14 = ashr i32 %12, %13
  %15 = load i32, i32* @PM_PMC_MSK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 6
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %60

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %24, 1
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = shl i32 2, %27
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %10, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %10, align 8
  %32 = load i32, i32* %9, align 4
  %33 = shl i32 1, %32
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %11, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %11, align 8
  %37 = load i32, i32* %8, align 4
  %38 = icmp sge i32 %37, 5
  br i1 %38, label %39, label %46

39:                                               ; preds = %23
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 327930
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 393460
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %60

46:                                               ; preds = %42, %39, %23
  br label %47

47:                                               ; preds = %46, %3
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 5
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i64, i64* %10, align 8
  %52 = or i64 %51, 32768
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = or i64 %53, 4096
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i64, i64* %10, align 8
  %57 = load i64*, i64** %6, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64*, i64** %7, align 8
  store i64 %58, i64* %59, align 8
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %45, %22
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
