; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_dma-coherent.c___dma_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_dma-coherent.c___dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.device = type { i32 }

@__GFP_COMP = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.device*, i64, i32*, i32)* @__dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @__dma_alloc(%struct.device* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @__GFP_COMP, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %9, align 4
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @PAGE_ALIGN(i64 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @get_order(i64 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call %struct.page* @alloc_pages(i32 %22, i32 %23)
  store %struct.page* %24, %struct.page** %10, align 8
  %25 = load %struct.page*, %struct.page** %10, align 8
  %26 = icmp ne %struct.page* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store %struct.page* null, %struct.page** %5, align 8
  br label %61

28:                                               ; preds = %4
  %29 = load %struct.page*, %struct.page** %10, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @split_page(%struct.page* %29, i32 %30)
  %32 = load %struct.page*, %struct.page** %10, align 8
  %33 = call i32 @page_to_phys(%struct.page* %32)
  %34 = call i32 @phys_to_virt(i32 %33)
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @invalidate_dcache_region(i32 %34, i64 %35)
  %37 = load %struct.page*, %struct.page** %10, align 8
  %38 = call i32 @page_to_bus(%struct.page* %37)
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.page*, %struct.page** %10, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @PAGE_SHIFT, align 8
  %43 = lshr i64 %41, %42
  %44 = getelementptr inbounds %struct.page, %struct.page* %40, i64 %43
  store %struct.page* %44, %struct.page** %11, align 8
  %45 = load %struct.page*, %struct.page** %10, align 8
  %46 = load i32, i32* %13, align 4
  %47 = shl i32 1, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.page, %struct.page* %45, i64 %48
  store %struct.page* %49, %struct.page** %12, align 8
  br label %50

50:                                               ; preds = %54, %28
  %51 = load %struct.page*, %struct.page** %11, align 8
  %52 = load %struct.page*, %struct.page** %12, align 8
  %53 = icmp ult %struct.page* %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.page*, %struct.page** %11, align 8
  %56 = call i32 @__free_page(%struct.page* %55)
  %57 = load %struct.page*, %struct.page** %11, align 8
  %58 = getelementptr inbounds %struct.page, %struct.page* %57, i32 1
  store %struct.page* %58, %struct.page** %11, align 8
  br label %50

59:                                               ; preds = %50
  %60 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %60, %struct.page** %5, align 8
  br label %61

61:                                               ; preds = %59, %27
  %62 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %62
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @split_page(%struct.page*, i32) #1

declare dso_local i32 @invalidate_dcache_region(i32, i64) #1

declare dso_local i32 @phys_to_virt(i32) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i32 @page_to_bus(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
