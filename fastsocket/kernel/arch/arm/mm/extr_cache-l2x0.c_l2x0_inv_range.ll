; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_cache-l2x0.c_l2x0_inv_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_cache-l2x0.c_l2x0_inv_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@L2X0_CLEAN_INV_LINE_PA = common dso_local global i32 0, align 4
@L2X0_INV_LINE_PA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @l2x0_inv_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2x0_inv_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %8 = sub nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = and i64 %6, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %14 = sub nsw i32 %13, 1
  %15 = xor i32 %14, -1
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %3, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i32, i32* @L2X0_CLEAN_INV_LINE_PA, align 4
  %21 = call i32 @sync_writel(i64 %19, i32 %20, i32 1)
  %22 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %12, %2
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = and i64 %27, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = xor i32 %35, -1
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %4, align 8
  %39 = and i64 %38, %37
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* @L2X0_CLEAN_INV_LINE_PA, align 4
  %42 = call i32 @sync_writel(i64 %40, i32 %41, i32 1)
  br label %43

43:                                               ; preds = %33, %26
  %44 = load i64, i64* %3, align 8
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %53, %43
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i64, i64* %5, align 8
  %51 = load i32, i32* @L2X0_INV_LINE_PA, align 4
  %52 = call i32 @sync_writel(i64 %50, i32 %51, i32 1)
  br label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %5, align 8
  br label %45

58:                                               ; preds = %45
  %59 = call i32 (...) @cache_sync()
  ret void
}

declare dso_local i32 @sync_writel(i64, i32, i32) #1

declare dso_local i32 @cache_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
