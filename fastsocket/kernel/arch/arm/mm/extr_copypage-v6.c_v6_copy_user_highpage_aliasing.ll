; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_copypage-v6.c_v6_copy_user_highpage_aliasing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_copypage-v6.c_v6_copy_user_highpage_aliasing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PG_dcache_dirty = common dso_local global i32 0, align 4
@v6_lock = common dso_local global i32 0, align 4
@from_address = common dso_local global i64 0, align 8
@PAGE_KERNEL = common dso_local global i32 0, align 4
@to_address = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.page*, i64)* @v6_copy_user_highpage_aliasing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v6_copy_user_highpage_aliasing(%struct.page* %0, %struct.page* %1, i64 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @CACHE_COLOUR(i64 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @PG_dcache_dirty, align 4
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = call i64 @test_and_clear_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = call i32 @page_mapping(%struct.page* %18)
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = call i32 @__flush_dcache_page(i32 %19, %struct.page* %20)
  br label %22

22:                                               ; preds = %17, %3
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = call i32 @page_address(%struct.page* %23)
  %25 = call i32 @discard_old_kernel_data(i32 %24)
  %26 = call i32 @spin_lock(i32* @v6_lock)
  %27 = load i64, i64* @from_address, align 8
  %28 = call i64 @TOP_PTE(i64 %27)
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = call i32 @page_to_pfn(%struct.page* %32)
  %34 = load i32, i32* @PAGE_KERNEL, align 4
  %35 = call i32 @pfn_pte(i32 %33, i32 %34)
  %36 = call i32 @set_pte_ext(i64 %31, i32 %35, i32 0)
  %37 = load i64, i64* @to_address, align 8
  %38 = call i64 @TOP_PTE(i64 %37)
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = call i32 @page_to_pfn(%struct.page* %42)
  %44 = load i32, i32* @PAGE_KERNEL, align 4
  %45 = call i32 @pfn_pte(i32 %43, i32 %44)
  %46 = call i32 @set_pte_ext(i64 %41, i32 %45, i32 0)
  %47 = load i64, i64* @from_address, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @PAGE_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = add i64 %47, %51
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* @to_address, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PAGE_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = zext i32 %56 to i64
  %58 = add i64 %53, %57
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @flush_tlb_kernel_page(i64 %59)
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @flush_tlb_kernel_page(i64 %61)
  %63 = load i64, i64* %9, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load i64, i64* %8, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @copy_page(i8* %64, i8* %66)
  %68 = call i32 @spin_unlock(i32* @v6_lock)
  ret void
}

declare dso_local i32 @CACHE_COLOUR(i64) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @__flush_dcache_page(i32, %struct.page*) #1

declare dso_local i32 @page_mapping(%struct.page*) #1

declare dso_local i32 @discard_old_kernel_data(i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_pte_ext(i64, i32, i32) #1

declare dso_local i64 @TOP_PTE(i64) #1

declare dso_local i32 @pfn_pte(i32, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @flush_tlb_kernel_page(i64) #1

declare dso_local i32 @copy_page(i8*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
