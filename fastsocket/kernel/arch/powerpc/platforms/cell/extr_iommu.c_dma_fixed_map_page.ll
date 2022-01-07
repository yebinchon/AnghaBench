; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_iommu.c_dma_fixed_map_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_iommu.c_dma_fixed_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.device*, %struct.page*, i64, i64, i32, %struct.dma_attrs*)* }
%struct.device = type { i32 }
%struct.page = type { i32 }
%struct.dma_attrs = type { i32 }

@iommu_fixed_is_weak = common dso_local global i64 0, align 8
@DMA_ATTR_WEAK_ORDERING = common dso_local global i32 0, align 4
@dma_direct_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.page*, i64, i64, i32, %struct.dma_attrs*)* @dma_fixed_map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_fixed_map_page(%struct.device* %0, %struct.page* %1, i64 %2, i64 %3, i32 %4, %struct.dma_attrs* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dma_attrs*, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.page* %1, %struct.page** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.dma_attrs* %5, %struct.dma_attrs** %13, align 8
  %14 = load i64, i64* @iommu_fixed_is_weak, align 8
  %15 = load i32, i32* @DMA_ATTR_WEAK_ORDERING, align 4
  %16 = load %struct.dma_attrs*, %struct.dma_attrs** %13, align 8
  %17 = call i64 @dma_get_attr(i32 %15, %struct.dma_attrs* %16)
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %6
  %20 = load i32 (%struct.device*, %struct.page*, i64, i64, i32, %struct.dma_attrs*)*, i32 (%struct.device*, %struct.page*, i64, i64, i32, %struct.dma_attrs*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma_direct_ops, i32 0, i32 0), align 8
  %21 = load %struct.device*, %struct.device** %8, align 8
  %22 = load %struct.page*, %struct.page** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.dma_attrs*, %struct.dma_attrs** %13, align 8
  %27 = call i32 %20(%struct.device* %21, %struct.page* %22, i64 %23, i64 %24, i32 %25, %struct.dma_attrs* %26)
  store i32 %27, i32* %7, align 4
  br label %40

28:                                               ; preds = %6
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = load %struct.device*, %struct.device** %8, align 8
  %31 = call i32 @cell_get_iommu_table(%struct.device* %30)
  %32 = load %struct.page*, %struct.page** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.device*, %struct.device** %8, align 8
  %36 = call i32 @device_to_mask(%struct.device* %35)
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.dma_attrs*, %struct.dma_attrs** %13, align 8
  %39 = call i32 @iommu_map_page(%struct.device* %29, i32 %31, %struct.page* %32, i64 %33, i64 %34, i32 %36, i32 %37, %struct.dma_attrs* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %28, %19
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i64 @dma_get_attr(i32, %struct.dma_attrs*) #1

declare dso_local i32 @iommu_map_page(%struct.device*, i32, %struct.page*, i64, i64, i32, i32, %struct.dma_attrs*) #1

declare dso_local i32 @cell_get_iommu_table(%struct.device*) #1

declare dso_local i32 @device_to_mask(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
