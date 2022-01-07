; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_intel_iommu_unmap_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_intel_iommu_unmap_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { %struct.dmar_domain* }
%struct.dmar_domain = type { i64 }

@VTD_PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*, i64, i64)* @intel_iommu_unmap_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_iommu_unmap_range(%struct.iommu_domain* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dmar_domain*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %9 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %8, i32 0, i32 0
  %10 = load %struct.dmar_domain*, %struct.dmar_domain** %9, align 8
  store %struct.dmar_domain* %10, %struct.dmar_domain** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %37

14:                                               ; preds = %3
  %15 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @VTD_PAGE_SHIFT, align 8
  %18 = lshr i64 %16, %17
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %19, %20
  %22 = sub i64 %21, 1
  %23 = load i64, i64* @VTD_PAGE_SHIFT, align 8
  %24 = lshr i64 %22, %23
  %25 = call i32 @dma_pte_clear_range(%struct.dmar_domain* %15, i64 %18, i64 %24)
  %26 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %27 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %29, %30
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %14
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %36 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %13, %33, %14
  ret void
}

declare dso_local i32 @dma_pte_clear_range(%struct.dmar_domain*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
