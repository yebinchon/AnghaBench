; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_cache.c___flush_dcache_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_cache.c___flush_dcache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__flush_dcache_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = call %struct.address_space* @page_mapping(%struct.page* %5)
  store %struct.address_space* %6, %struct.address_space** %3, align 8
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = call i64 @PageHighMem(%struct.page* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.address_space*, %struct.address_space** %3, align 8
  %13 = icmp ne %struct.address_space* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.address_space*, %struct.address_space** %3, align 8
  %16 = call i32 @mapping_mapped(%struct.address_space* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load %struct.page*, %struct.page** %2, align 8
  %20 = call i32 @SetPageDcacheDirty(%struct.page* %19)
  br label %26

21:                                               ; preds = %14, %11
  %22 = load %struct.page*, %struct.page** %2, align 8
  %23 = call i64 @page_address(%struct.page* %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @flush_data_cache_page(i64 %24)
  br label %26

26:                                               ; preds = %21, %18, %10
  ret void
}

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i32 @mapping_mapped(%struct.address_space*) #1

declare dso_local i32 @SetPageDcacheDirty(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @flush_data_cache_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
