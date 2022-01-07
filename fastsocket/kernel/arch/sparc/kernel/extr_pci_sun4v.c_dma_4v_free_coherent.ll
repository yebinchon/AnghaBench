; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_free_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_free_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_pbm_info*, %struct.iommu* }
%struct.pci_pbm_info = type { i32 }
%struct.iommu = type { i64, i32 }

@IO_PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i8*, i64)* @dma_4v_free_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_4v_free_coherent(%struct.device* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pci_pbm_info*, align 8
  %10 = alloca %struct.iommu*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @IO_PAGE_ALIGN(i64 %17)
  %19 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %20 = lshr i64 %18, %19
  store i64 %20, i64* %13, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.iommu*, %struct.iommu** %23, align 8
  store %struct.iommu* %24, %struct.iommu** %10, align 8
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %27, align 8
  store %struct.pci_pbm_info* %28, %struct.pci_pbm_info** %9, align 8
  %29 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %9, align 8
  %30 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %15, align 4
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.iommu*, %struct.iommu** %10, align 8
  %34 = getelementptr inbounds %struct.iommu, %struct.iommu* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %32, %35
  %37 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %38 = lshr i64 %36, %37
  store i64 %38, i64* %14, align 8
  %39 = load %struct.iommu*, %struct.iommu** %10, align 8
  %40 = getelementptr inbounds %struct.iommu, %struct.iommu* %39, i32 0, i32 1
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.iommu*, %struct.iommu** %10, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @iommu_range_free(%struct.iommu* %43, i64 %44, i64 %45)
  br label %47

47:                                               ; preds = %59, %4
  %48 = load i32, i32* %15, align 4
  %49 = load i64, i64* %14, align 8
  %50 = call i32 @HV_PCI_TSBID(i32 0, i64 %49)
  %51 = load i64, i64* %13, align 8
  %52 = call i64 @pci_sun4v_iommu_demap(i32 %48, i32 %50, i64 %51)
  store i64 %52, i64* %16, align 8
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* %14, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* %16, align 8
  %57 = load i64, i64* %13, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %13, align 8
  br label %59

59:                                               ; preds = %47
  %60 = load i64, i64* %13, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %47, label %62

62:                                               ; preds = %59
  %63 = load %struct.iommu*, %struct.iommu** %10, align 8
  %64 = getelementptr inbounds %struct.iommu, %struct.iommu* %63, i32 0, i32 1
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @get_order(i64 %67)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = icmp ult i64 %69, 10
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load i8*, i8** %7, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @free_pages(i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %71, %62
  ret void
}

declare dso_local i64 @IO_PAGE_ALIGN(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iommu_range_free(%struct.iommu*, i64, i64) #1

declare dso_local i64 @pci_sun4v_iommu_demap(i32, i32, i64) #1

declare dso_local i32 @HV_PCI_TSBID(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @get_order(i64) #1

declare dso_local i32 @free_pages(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
