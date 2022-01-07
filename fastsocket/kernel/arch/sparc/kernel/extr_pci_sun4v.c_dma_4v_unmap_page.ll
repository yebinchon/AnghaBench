; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_unmap_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_unmap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_pbm_info*, %struct.iommu* }
%struct.pci_pbm_info = type { i32 }
%struct.iommu = type { i64, i32 }
%struct.dma_attrs = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@IO_PAGE_MASK = common dso_local global i64 0, align 8
@IO_PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i64, i32, %struct.dma_attrs*)* @dma_4v_unmap_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_4v_unmap_page(%struct.device* %0, i64 %1, i64 %2, i32 %3, %struct.dma_attrs* %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_attrs*, align 8
  %11 = alloca %struct.pci_pbm_info*, align 8
  %12 = alloca %struct.iommu*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.dma_attrs* %4, %struct.dma_attrs** %10, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @DMA_NONE, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = call i64 (...) @printk_ratelimit()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @WARN_ON(i32 1)
  br label %29

29:                                               ; preds = %27, %24
  br label %91

30:                                               ; preds = %5
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.iommu*, %struct.iommu** %33, align 8
  store %struct.iommu* %34, %struct.iommu** %12, align 8
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %37, align 8
  store %struct.pci_pbm_info* %38, %struct.pci_pbm_info** %11, align 8
  %39 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %11, align 8
  %40 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %16, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %42, %43
  %45 = call i64 @IO_PAGE_ALIGN(i64 %44)
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @IO_PAGE_MASK, align 8
  %48 = and i64 %46, %47
  %49 = sub i64 %45, %48
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %51 = load i64, i64* %14, align 8
  %52 = lshr i64 %51, %50
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* @IO_PAGE_MASK, align 8
  %54 = load i64, i64* %7, align 8
  %55 = and i64 %54, %53
  store i64 %55, i64* %7, align 8
  %56 = load %struct.iommu*, %struct.iommu** %12, align 8
  %57 = getelementptr inbounds %struct.iommu, %struct.iommu* %56, i32 0, i32 1
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.iommu*, %struct.iommu** %12, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %14, align 8
  %63 = call i32 @iommu_range_free(%struct.iommu* %60, i64 %61, i64 %62)
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.iommu*, %struct.iommu** %12, align 8
  %66 = getelementptr inbounds %struct.iommu, %struct.iommu* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %64, %67
  %69 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %70 = lshr i64 %68, %69
  store i64 %70, i64* %15, align 8
  br label %71

71:                                               ; preds = %83, %30
  %72 = load i32, i32* %16, align 4
  %73 = load i64, i64* %15, align 8
  %74 = call i32 @HV_PCI_TSBID(i32 0, i64 %73)
  %75 = load i64, i64* %14, align 8
  %76 = call i64 @pci_sun4v_iommu_demap(i32 %72, i32 %74, i64 %75)
  store i64 %76, i64* %17, align 8
  %77 = load i64, i64* %17, align 8
  %78 = load i64, i64* %15, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %15, align 8
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* %14, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %14, align 8
  br label %83

83:                                               ; preds = %71
  %84 = load i64, i64* %14, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %71, label %86

86:                                               ; preds = %83
  %87 = load %struct.iommu*, %struct.iommu** %12, align 8
  %88 = getelementptr inbounds %struct.iommu, %struct.iommu* %87, i32 0, i32 1
  %89 = load i64, i64* %13, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  br label %91

91:                                               ; preds = %86, %29
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @IO_PAGE_ALIGN(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iommu_range_free(%struct.iommu*, i64, i64) #1

declare dso_local i64 @pci_sun4v_iommu_demap(i32, i32, i64) #1

declare dso_local i32 @HV_PCI_TSBID(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
