; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_srmmu.c_srmmu_nocache_calcsize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_srmmu.c_srmmu_nocache_calcsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SRMMU_NOCACHE_ALCRATIO = common dso_local global i64 0, align 8
@SRMMU_MIN_NOCACHE_PAGES = common dso_local global i32 0, align 4
@SRMMU_MAX_NOCACHE_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@srmmu_nocache_size = common dso_local global i32 0, align 4
@SRMMU_NOCACHE_VADDR = common dso_local global i64 0, align 8
@srmmu_nocache_end = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @srmmu_nocache_calcsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srmmu_nocache_calcsize() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @probe_memory()
  %4 = sdiv i32 %3, 1024
  %5 = sext i32 %4 to i64
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @SRMMU_NOCACHE_ALCRATIO, align 8
  %8 = udiv i64 %6, %7
  %9 = udiv i64 %8, 1024
  %10 = mul i64 %9, 256
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @SRMMU_MIN_NOCACHE_PAGES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = load i32, i32* @SRMMU_MIN_NOCACHE_PAGES, align 4
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %0
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @SRMMU_MAX_NOCACHE_PAGES, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @SRMMU_MAX_NOCACHE_PAGES, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* @srmmu_nocache_size, align 4
  %27 = load i64, i64* @SRMMU_NOCACHE_VADDR, align 8
  %28 = load i32, i32* @srmmu_nocache_size, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  store i64 %30, i64* @srmmu_nocache_end, align 8
  ret void
}

declare dso_local i32 @probe_memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
