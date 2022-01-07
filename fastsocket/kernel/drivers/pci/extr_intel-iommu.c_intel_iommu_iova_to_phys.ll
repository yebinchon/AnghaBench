; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_intel_iommu_iova_to_phys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_intel_iommu_iova_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { %struct.dmar_domain* }
%struct.dmar_domain = type { i32 }
%struct.dma_pte = type { i32 }

@VTD_PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, i64)* @intel_iommu_iova_to_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_iommu_iova_to_phys(%struct.iommu_domain* %0, i64 %1) #0 {
  %3 = alloca %struct.iommu_domain*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dmar_domain*, align 8
  %6 = alloca %struct.dma_pte*, align 8
  %7 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %9 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %8, i32 0, i32 0
  %10 = load %struct.dmar_domain*, %struct.dmar_domain** %9, align 8
  store %struct.dmar_domain* %10, %struct.dmar_domain** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @VTD_PAGE_SHIFT, align 8
  %14 = lshr i64 %12, %13
  %15 = call %struct.dma_pte* @pfn_to_dma_pte(%struct.dmar_domain* %11, i64 %14)
  store %struct.dma_pte* %15, %struct.dma_pte** %6, align 8
  %16 = load %struct.dma_pte*, %struct.dma_pte** %6, align 8
  %17 = icmp ne %struct.dma_pte* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.dma_pte*, %struct.dma_pte** %6, align 8
  %20 = call i32 @dma_pte_addr(%struct.dma_pte* %19)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %7, align 4
  ret i32 %22
}

declare dso_local %struct.dma_pte* @pfn_to_dma_pte(%struct.dmar_domain*, i64) #1

declare dso_local i32 @dma_pte_addr(%struct.dma_pte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
