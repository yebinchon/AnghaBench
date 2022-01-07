; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pci-calgary_64.c_calgary_unmap_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pci-calgary_64.c_calgary_unmap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_attrs = type { i32 }
%struct.iommu_table = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, i64, i32, %struct.dma_attrs*)* @calgary_unmap_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calgary_unmap_page(%struct.device* %0, i32 %1, i64 %2, i32 %3, %struct.dma_attrs* %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_attrs*, align 8
  %11 = alloca %struct.iommu_table*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.dma_attrs* %4, %struct.dma_attrs** %10, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.iommu_table* @find_iommu_table(%struct.device* %13)
  store %struct.iommu_table* %14, %struct.iommu_table** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = call i32 @iommu_num_pages(i32 %15, i64 %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.iommu_table*, %struct.iommu_table** %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @iommu_free(%struct.iommu_table* %19, i32 %20, i32 %21)
  ret void
}

declare dso_local %struct.iommu_table* @find_iommu_table(%struct.device*) #1

declare dso_local i32 @iommu_num_pages(i32, i64, i32) #1

declare dso_local i32 @iommu_free(%struct.iommu_table*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
