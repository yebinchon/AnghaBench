; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache.c___update_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache.c___update_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PG_dcache_dirty = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__update_cache(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @pte_pfn(i32 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0, i32 0), align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %45

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  %18 = call %struct.page* @pfn_to_page(i64 %17)
  store %struct.page* %18, %struct.page** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @pfn_valid(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %16
  %23 = load i32, i32* @PG_dcache_dirty, align 4
  %24 = load %struct.page*, %struct.page** %7, align 8
  %25 = getelementptr inbounds %struct.page, %struct.page* %24, i32 0, i32 0
  %26 = call i32 @test_and_clear_bit(i32 %23, i32* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = load %struct.page*, %struct.page** %7, align 8
  %31 = call i64 @page_address(%struct.page* %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @PAGE_MASK, align 8
  %35 = and i64 %33, %34
  %36 = call i64 @pages_do_alias(i64 %32, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load i64, i64* %10, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = call i32 @__flush_purge_region(i8* %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %29
  br label %44

44:                                               ; preds = %43, %22
  br label %45

45:                                               ; preds = %15, %44, %16
  ret void
}

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @pfn_valid(i64) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @pages_do_alias(i64, i64) #1

declare dso_local i32 @__flush_purge_region(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
