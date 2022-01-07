; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_lpar.c_pSeries_lpar_hpte_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_lpar.c_pSeries_lpar_hpte_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPTES_PER_GROUP = common dso_local global i32 0, align 4
@H_ANDCOND = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@H_NOT_FOUND = common dso_local global i64 0, align 8
@H_RESOURCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @pSeries_lpar_hpte_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pSeries_lpar_hpte_remove(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %9 = call i32 (...) @mftb()
  %10 = and i32 %9, 7
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %44, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @HPTES_PER_GROUP, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = load i32, i32* @H_ANDCOND, align 4
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %18, %19
  %21 = call i64 @plpar_pte_remove(i32 %17, i64 %20, i32 16, i64* %7, i64* %8)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @H_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %2, align 8
  br label %48

28:                                               ; preds = %16
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @H_NOT_FOUND, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @H_RESOURCE, align 8
  %35 = icmp ne i64 %33, %34
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ false, %28 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load i64, i64* %4, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = and i64 %42, 7
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %12

47:                                               ; preds = %12
  store i64 -1, i64* %2, align 8
  br label %48

48:                                               ; preds = %47, %25
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local i32 @mftb(...) #1

declare dso_local i64 @plpar_pte_remove(i32, i64, i32, i64*, i64*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
