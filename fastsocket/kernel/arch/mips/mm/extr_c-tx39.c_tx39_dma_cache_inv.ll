; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_c-tx39.c_tx39_dma_cache_inv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_c-tx39.c_tx39_dma_cache_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@dcache_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @tx39_dma_cache_inv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx39_dma_cache_inv(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = or i64 %6, %7
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = and i64 %8, %11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %25, %14
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @tx39_blast_dcache_page(i64 %19)
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %18
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %18, label %29

29:                                               ; preds = %25
  br label %43

30:                                               ; preds = %2
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @dcache_size, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 (...) @tx39_blast_dcache()
  br label %42

36:                                               ; preds = %30
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = add i64 %38, %39
  %41 = call i32 @blast_inv_dcache_range(i64 %37, i64 %40)
  br label %42

42:                                               ; preds = %36, %34
  br label %43

43:                                               ; preds = %42, %29
  ret void
}

declare dso_local i32 @tx39_blast_dcache_page(i64) #1

declare dso_local i32 @tx39_blast_dcache(...) #1

declare dso_local i32 @blast_inv_dcache_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
