; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_htab.c_iSeries_hpte_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_htab.c_iSeries_hpte_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPTES_PER_GROUP = common dso_local global i32 0, align 4
@HPTE_V_BOLTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @iSeries_hpte_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iSeries_hpte_remove(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = call i32 (...) @mftb()
  %8 = and i32 %7, 7
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @iSeries_hlock(i64 %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %39, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @HPTES_PER_GROUP, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = add i64 %17, %18
  %20 = call i64 @iSeries_hpte_getword0(i64 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @HPTE_V_BOLTED, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %16
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %26, %27
  %29 = call i32 @HvCallHpt_invalidateSetSwBitsGet(i64 %28, i32 0, i32 0)
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @iSeries_hunlock(i64 %30)
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %2, align 8
  br label %45

34:                                               ; preds = %16
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = and i64 %37, 7
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %12

42:                                               ; preds = %12
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @iSeries_hunlock(i64 %43)
  store i64 -1, i64* %2, align 8
  br label %45

45:                                               ; preds = %42, %25
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

declare dso_local i32 @mftb(...) #1

declare dso_local i32 @iSeries_hlock(i64) #1

declare dso_local i64 @iSeries_hpte_getword0(i64) #1

declare dso_local i32 @HvCallHpt_invalidateSetSwBitsGet(i64, i32, i32) #1

declare dso_local i32 @iSeries_hunlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
