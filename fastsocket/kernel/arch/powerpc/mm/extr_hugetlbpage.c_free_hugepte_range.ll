; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_free_hugepte_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_free_hugepte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }
%struct.TYPE_4__ = type { i64 }

@HUGEPTE_CACHE_NUM = common dso_local global i64 0, align 8
@PGF_CACHENUM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmu_gather*, %struct.TYPE_4__*, i32)* @free_hugepte_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_hugepte_range(%struct.mmu_gather* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca %struct.mmu_gather*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32* @hugepd_page(i64 %10)
  store i32* %11, i32** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.mmu_gather*, %struct.mmu_gather** %4, align 8
  %15 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.mmu_gather*, %struct.mmu_gather** %4, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i64, i64* @HUGEPTE_CACHE_NUM, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = sub nsw i64 %21, 1
  %23 = load i32, i32* @PGF_CACHENUM_MASK, align 4
  %24 = call i32 @pgtable_free_cache(i32* %17, i64 %22, i32 %23)
  %25 = call i32 @pgtable_free_tlb(%struct.mmu_gather* %16, i32 %24)
  ret void
}

declare dso_local i32* @hugepd_page(i64) #1

declare dso_local i32 @pgtable_free_tlb(%struct.mmu_gather*, i32) #1

declare dso_local i32 @pgtable_free_cache(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
