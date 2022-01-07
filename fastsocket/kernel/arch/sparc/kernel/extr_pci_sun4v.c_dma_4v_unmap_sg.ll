; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_unmap_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_unmap_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_pbm_info*, %struct.iommu* }
%struct.pci_pbm_info = type { i32 }
%struct.iommu = type { i64, i32 }
%struct.scatterlist = type { i64, i32 }
%struct.dma_attrs = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@IO_PAGE_SIZE = common dso_local global i32 0, align 4
@IO_PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.scatterlist*, i32, i32, %struct.dma_attrs*)* @dma_4v_unmap_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_4v_unmap_sg(%struct.device* %0, %struct.scatterlist* %1, i32 %2, i32 %3, %struct.dma_attrs* %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_attrs*, align 8
  %11 = alloca %struct.pci_pbm_info*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca %struct.iommu*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.dma_attrs* %4, %struct.dma_attrs** %10, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @DMA_NONE, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.iommu*, %struct.iommu** %28, align 8
  store %struct.iommu* %29, %struct.iommu** %13, align 8
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %32, align 8
  store %struct.pci_pbm_info* %33, %struct.pci_pbm_info** %11, align 8
  %34 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %11, align 8
  %35 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load %struct.iommu*, %struct.iommu** %13, align 8
  %38 = getelementptr inbounds %struct.iommu, %struct.iommu* %37, i32 0, i32 1
  %39 = load i64, i64* %14, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %41, %struct.scatterlist** %12, align 8
  br label %42

42:                                               ; preds = %87, %5
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %8, align 4
  %45 = icmp ne i32 %43, 0
  br i1 %45, label %46, label %90

46:                                               ; preds = %42
  %47 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %48 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %16, align 8
  %50 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %51 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  br label %90

56:                                               ; preds = %46
  %57 = load i64, i64* %16, align 8
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* @IO_PAGE_SIZE, align 4
  %60 = call i64 @iommu_num_pages(i64 %57, i32 %58, i32 %59)
  store i64 %60, i64* %18, align 8
  %61 = load %struct.iommu*, %struct.iommu** %13, align 8
  %62 = load i64, i64* %16, align 8
  %63 = load i64, i64* %18, align 8
  %64 = call i32 @iommu_range_free(%struct.iommu* %61, i64 %62, i64 %63)
  %65 = load i64, i64* %16, align 8
  %66 = load %struct.iommu*, %struct.iommu** %13, align 8
  %67 = getelementptr inbounds %struct.iommu, %struct.iommu* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub i64 %65, %68
  %70 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %71 = lshr i64 %69, %70
  store i64 %71, i64* %19, align 8
  br label %72

72:                                               ; preds = %75, %56
  %73 = load i64, i64* %18, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4
  %77 = load i64, i64* %19, align 8
  %78 = call i32 @HV_PCI_TSBID(i32 0, i64 %77)
  %79 = load i64, i64* %18, align 8
  %80 = call i64 @pci_sun4v_iommu_demap(i32 %76, i32 %78, i64 %79)
  store i64 %80, i64* %20, align 8
  %81 = load i64, i64* %20, align 8
  %82 = load i64, i64* %19, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %19, align 8
  %84 = load i64, i64* %20, align 8
  %85 = load i64, i64* %18, align 8
  %86 = sub i64 %85, %84
  store i64 %86, i64* %18, align 8
  br label %72

87:                                               ; preds = %72
  %88 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %89 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %88)
  store %struct.scatterlist* %89, %struct.scatterlist** %12, align 8
  br label %42

90:                                               ; preds = %55, %42
  %91 = load %struct.iommu*, %struct.iommu** %13, align 8
  %92 = getelementptr inbounds %struct.iommu, %struct.iommu* %91, i32 0, i32 1
  %93 = load i64, i64* %14, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @iommu_num_pages(i64, i32, i32) #1

declare dso_local i32 @iommu_range_free(%struct.iommu*, i64, i64) #1

declare dso_local i64 @pci_sun4v_iommu_demap(i32, i32, i64) #1

declare dso_local i32 @HV_PCI_TSBID(i32, i64) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
