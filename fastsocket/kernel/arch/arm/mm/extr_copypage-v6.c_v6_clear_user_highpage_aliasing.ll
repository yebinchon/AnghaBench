; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_copypage-v6.c_v6_clear_user_highpage_aliasing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_copypage-v6.c_v6_clear_user_highpage_aliasing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@to_address = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@v6_lock = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i64)* @v6_clear_user_highpage_aliasing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v6_clear_user_highpage_aliasing(%struct.page* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @CACHE_COLOUR(i64 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @to_address, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PAGE_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = add i32 %9, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %6, align 8
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = call i32 @page_address(%struct.page* %15)
  %17 = call i32 @discard_old_kernel_data(i32 %16)
  %18 = call i32 @spin_lock(i32* @v6_lock)
  %19 = load i32, i32* @to_address, align 4
  %20 = call i64 @TOP_PTE(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call i32 @page_to_pfn(%struct.page* %24)
  %26 = load i32, i32* @PAGE_KERNEL, align 4
  %27 = call i32 @pfn_pte(i32 %25, i32 %26)
  %28 = call i32 @set_pte_ext(i64 %23, i32 %27, i32 0)
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @flush_tlb_kernel_page(i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @clear_page(i8* %32)
  %34 = call i32 @spin_unlock(i32* @v6_lock)
  ret void
}

declare dso_local i32 @CACHE_COLOUR(i64) #1

declare dso_local i32 @discard_old_kernel_data(i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_pte_ext(i64, i32, i32) #1

declare dso_local i64 @TOP_PTE(i32) #1

declare dso_local i32 @pfn_pte(i32, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @flush_tlb_kernel_page(i64) #1

declare dso_local i32 @clear_page(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
