; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/mm/extr_cache.c__flush_cache_copyback_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/mm/extr_cache.c__flush_cache_copyback_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCCR_ICACHE_INV = common dso_local global i64 0, align 8
@MCCR_DCACHE_CB = common dso_local global i64 0, align 8
@MCCR = common dso_local global i64* null, align 8
@MCCR_IIV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_flush_cache_copyback_all() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @MCCR_ICACHE_INV, align 8
  %3 = load i64, i64* @MCCR_DCACHE_CB, align 8
  %4 = or i64 %2, %3
  %5 = load i64*, i64** @MCCR, align 8
  store i64 %4, i64* %5, align 8
  br label %6

6:                                                ; preds = %12, %0
  %7 = load i64*, i64** @MCCR, align 8
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* @MCCR_IIV, align 8
  %10 = and i64 %8, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %6

13:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
