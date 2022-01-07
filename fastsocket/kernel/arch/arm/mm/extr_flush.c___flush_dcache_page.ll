; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_flush.c___flush_dcache_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_flush.c___flush_dcache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__flush_dcache_page(%struct.address_space* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %5 = load %struct.page*, %struct.page** %4, align 8
  %6 = call i64 @page_address(%struct.page* %5)
  %7 = call i32 @__cpuc_flush_dcache_page(i64 %6)
  %8 = load %struct.address_space*, %struct.address_space** %3, align 8
  %9 = icmp ne %struct.address_space* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = call i64 (...) @cache_is_vipt_aliasing()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i32 @page_to_pfn(%struct.page* %14)
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = call i32 @flush_pfn_alias(i32 %15, i32 %20)
  br label %22

22:                                               ; preds = %13, %10, %2
  ret void
}

declare dso_local i32 @__cpuc_flush_dcache_page(i64) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @cache_is_vipt_aliasing(...) #1

declare dso_local i32 @flush_pfn_alias(i32, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
