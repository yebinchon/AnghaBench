; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_fault-armv.c_update_mmu_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_fault-armv.c_update_mmu_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PG_dcache_dirty = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_mmu_cache(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.page*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @pte_pfn(i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @pfn_valid(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %53

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = call %struct.page* @pfn_to_page(i64 %17)
  store %struct.page* %18, %struct.page** %9, align 8
  %19 = load %struct.page*, %struct.page** %9, align 8
  %20 = call %struct.address_space* @page_mapping(%struct.page* %19)
  store %struct.address_space* %20, %struct.address_space** %8, align 8
  %21 = load i32, i32* @PG_dcache_dirty, align 4
  %22 = load %struct.page*, %struct.page** %9, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 0
  %24 = call i64 @test_and_clear_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load %struct.address_space*, %struct.address_space** %8, align 8
  %28 = load %struct.page*, %struct.page** %9, align 8
  %29 = call i32 @__flush_dcache_page(%struct.address_space* %27, %struct.page* %28)
  br label %30

30:                                               ; preds = %26, %16
  %31 = load %struct.address_space*, %struct.address_space** %8, align 8
  %32 = icmp ne %struct.address_space* %31, null
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = call i64 (...) @cache_is_vivt()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.address_space*, %struct.address_space** %8, align 8
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @make_coherent(%struct.address_space* %37, %struct.vm_area_struct* %38, i64 %39, i64 %40)
  br label %52

42:                                               ; preds = %33
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VM_EXEC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 (...) @__flush_icache_all()
  br label %51

51:                                               ; preds = %49, %42
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %15, %52, %30
  ret void
}

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @__flush_dcache_page(%struct.address_space*, %struct.page*) #1

declare dso_local i64 @cache_is_vivt(...) #1

declare dso_local i32 @make_coherent(%struct.address_space*, %struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @__flush_icache_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
