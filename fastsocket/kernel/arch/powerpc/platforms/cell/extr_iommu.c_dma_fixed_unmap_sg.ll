; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_iommu.c_dma_fixed_unmap_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_iommu.c_dma_fixed_unmap_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.device*, %struct.scatterlist*, i32, i32, %struct.dma_attrs*)* }
%struct.device = type { i32 }
%struct.scatterlist = type { i32 }
%struct.dma_attrs = type { i32 }

@iommu_fixed_is_weak = common dso_local global i64 0, align 8
@DMA_ATTR_WEAK_ORDERING = common dso_local global i32 0, align 4
@dma_direct_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.scatterlist*, i32, i32, %struct.dma_attrs*)* @dma_fixed_unmap_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_fixed_unmap_sg(%struct.device* %0, %struct.scatterlist* %1, i32 %2, i32 %3, %struct.dma_attrs* %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_attrs*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.dma_attrs* %4, %struct.dma_attrs** %10, align 8
  %11 = load i64, i64* @iommu_fixed_is_weak, align 8
  %12 = load i32, i32* @DMA_ATTR_WEAK_ORDERING, align 4
  %13 = load %struct.dma_attrs*, %struct.dma_attrs** %10, align 8
  %14 = call i64 @dma_get_attr(i32 %12, %struct.dma_attrs* %13)
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load i32 (%struct.device*, %struct.scatterlist*, i32, i32, %struct.dma_attrs*)*, i32 (%struct.device*, %struct.scatterlist*, i32, i32, %struct.dma_attrs*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma_direct_ops, i32 0, i32 0), align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.dma_attrs*, %struct.dma_attrs** %10, align 8
  %23 = call i32 %17(%struct.device* %18, %struct.scatterlist* %19, i32 %20, i32 %21, %struct.dma_attrs* %22)
  br label %32

24:                                               ; preds = %5
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call i32 @cell_get_iommu_table(%struct.device* %25)
  %27 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.dma_attrs*, %struct.dma_attrs** %10, align 8
  %31 = call i32 @iommu_unmap_sg(i32 %26, %struct.scatterlist* %27, i32 %28, i32 %29, %struct.dma_attrs* %30)
  br label %32

32:                                               ; preds = %24, %16
  ret void
}

declare dso_local i64 @dma_get_attr(i32, %struct.dma_attrs*) #1

declare dso_local i32 @iommu_unmap_sg(i32, %struct.scatterlist*, i32, i32, %struct.dma_attrs*) #1

declare dso_local i32 @cell_get_iommu_table(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
