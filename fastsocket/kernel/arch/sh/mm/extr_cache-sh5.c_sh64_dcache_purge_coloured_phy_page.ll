; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh5.c_sh64_dcache_purge_coloured_phy_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh5.c_sh64_dcache_purge_coloured_phy_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAGIC_PAGE0_START = common dso_local global i64 0, align 8
@CACHE_OC_SYN_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@L1_CACHE_BYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @sh64_dcache_purge_coloured_phy_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh64_dcache_purge_coloured_phy_page(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @MAGIC_PAGE0_START, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @CACHE_OC_SYN_MASK, align 8
  %11 = and i64 %9, %10
  %12 = add i64 %8, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 (...) @get_asid()
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @sh64_setup_dtlb_cache_slot(i64 %13, i32 %14, i64 %15)
  %17 = load i64, i64* %5, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %25, %2
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i64, i64* %6, align 8
  call void asm sideeffect "ocbp $0, 0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %26) #2, !srcloc !2
  %27 = load i64, i64* @L1_CACHE_BYTES, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %6, align 8
  br label %21

30:                                               ; preds = %21
  %31 = call i32 (...) @sh64_teardown_dtlb_cache_slot()
  ret void
}

declare dso_local i32 @sh64_setup_dtlb_cache_slot(i64, i32, i64) #1

declare dso_local i32 @get_asid(...) #1

declare dso_local i32 @sh64_teardown_dtlb_cache_slot(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 899}
