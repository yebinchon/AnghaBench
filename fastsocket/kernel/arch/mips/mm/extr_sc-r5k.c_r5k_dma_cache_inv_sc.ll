; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_sc-r5k.c_r5k_dma_cache_inv_sc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_sc-r5k.c_r5k_dma_cache_inv_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scache_size = common dso_local global i64 0, align 8
@SC_PAGE = common dso_local global i32 0, align 4
@R5K_Page_Invalidate_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @r5k_dma_cache_inv_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r5k_dma_cache_inv_sc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @scache_size, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (...) @blast_r5000_scache()
  br label %44

16:                                               ; preds = %2
  %17 = load i64, i64* %3, align 8
  %18 = load i32, i32* @SC_PAGE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = xor i32 %19, -1
  %21 = sext i32 %20 to i64
  %22 = and i64 %17, %21
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %23, %24
  %26 = sub i64 %25, 1
  %27 = load i32, i32* @SC_PAGE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = xor i32 %28, -1
  %30 = sext i32 %29 to i64
  %31 = and i64 %26, %30
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %36, %16
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ule i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, i32* @R5K_Page_Invalidate_S, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @cache_op(i32 %37, i64 %38)
  %40 = load i32, i32* @SC_PAGE, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %6, align 8
  br label %32

44:                                               ; preds = %14, %32
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blast_r5000_scache(...) #1

declare dso_local i32 @cache_op(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
