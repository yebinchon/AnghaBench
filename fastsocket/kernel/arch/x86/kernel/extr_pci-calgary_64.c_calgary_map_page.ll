; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pci-calgary_64.c_calgary_map_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pci-calgary_64.c_calgary_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }
%struct.dma_attrs = type { i32 }
%struct.iommu_table = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.page*, i64, i64, i32, %struct.dma_attrs*)* @calgary_map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calgary_map_page(%struct.device* %0, %struct.page* %1, i64 %2, i64 %3, i32 %4, %struct.dma_attrs* %5) #0 {
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dma_attrs*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.iommu_table*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.dma_attrs* %5, %struct.dma_attrs** %12, align 8
  %17 = load %struct.page*, %struct.page** %8, align 8
  %18 = call i8* @page_address(%struct.page* %17)
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr i8, i8* %18, i64 %19
  store i8* %20, i8** %13, align 8
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = call %struct.iommu_table* @find_iommu_table(%struct.device* %21)
  store %struct.iommu_table* %22, %struct.iommu_table** %16, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = ptrtoint i8* %23 to i64
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = call i32 @iommu_num_pages(i64 %25, i64 %26, i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = load %struct.iommu_table*, %struct.iommu_table** %16, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @iommu_alloc(%struct.device* %29, %struct.iommu_table* %30, i8* %31, i32 %32, i32 %33)
  ret i32 %34
}

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local %struct.iommu_table* @find_iommu_table(%struct.device*) #1

declare dso_local i32 @iommu_num_pages(i64, i64, i32) #1

declare dso_local i32 @iommu_alloc(%struct.device*, %struct.iommu_table*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
