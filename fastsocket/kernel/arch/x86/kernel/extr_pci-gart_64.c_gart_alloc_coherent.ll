; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pci-gart_64.c_gart_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pci-gart_64.c_gart_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }

@force_iommu = common dso_local global i64 0, align 8
@GFP_DMA = common dso_local global i32 0, align 4
@__GFP_DMA = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@__GFP_DMA32 = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@bad_dma_address = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i64, i64*, i32)* @gart_alloc_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gart_alloc_coherent(%struct.device* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.page*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* @force_iommu, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @GFP_DMA, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %64, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @__GFP_DMA, align 4
  %22 = load i32, i32* @__GFP_HIGHMEM, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @__GFP_DMA32, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @__GFP_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @get_order(i64 %32)
  %34 = call %struct.page* @alloc_pages(i32 %31, i64 %33)
  store %struct.page* %34, %struct.page** %12, align 8
  %35 = load %struct.page*, %struct.page** %12, align 8
  %36 = icmp ne %struct.page* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %20
  store i8* null, i8** %5, align 8
  br label %71

38:                                               ; preds = %20
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @get_order(i64 %39)
  %41 = shl i64 1, %40
  %42 = sub i64 %41, 1
  store i64 %42, i64* %11, align 8
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load %struct.page*, %struct.page** %12, align 8
  %45 = call i32 @page_to_phys(%struct.page* %44)
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @dma_map_area(%struct.device* %43, i32 %45, i64 %46, i32 %47, i64 %48)
  store i64 %49, i64* %10, align 8
  %50 = call i32 (...) @flush_gart()
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @bad_dma_address, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %38
  %55 = load i64, i64* %10, align 8
  %56 = load i64*, i64** %8, align 8
  store i64 %55, i64* %56, align 8
  %57 = load %struct.page*, %struct.page** %12, align 8
  %58 = call i8* @page_address(%struct.page* %57)
  store i8* %58, i8** %5, align 8
  br label %71

59:                                               ; preds = %38
  %60 = load %struct.page*, %struct.page** %12, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @get_order(i64 %61)
  %63 = call i32 @__free_pages(%struct.page* %60, i64 %62)
  br label %70

64:                                               ; preds = %15, %4
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64*, i64** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i8* @dma_generic_alloc_coherent(%struct.device* %65, i64 %66, i64* %67, i32 %68)
  store i8* %69, i8** %5, align 8
  br label %71

70:                                               ; preds = %59
  store i8* null, i8** %5, align 8
  br label %71

71:                                               ; preds = %70, %64, %54, %37
  %72 = load i8*, i8** %5, align 8
  ret i8* %72
}

declare dso_local %struct.page* @alloc_pages(i32, i64) #1

declare dso_local i64 @get_order(i64) #1

declare dso_local i64 @dma_map_area(%struct.device*, i32, i64, i32, i64) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i32 @flush_gart(...) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @__free_pages(%struct.page*, i64) #1

declare dso_local i8* @dma_generic_alloc_coherent(%struct.device*, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
