; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_iommu.c_iommu_unmap_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_iommu.c_iommu_unmap_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.iommu_table*)* }
%struct.iommu_table = type { i32 }
%struct.scatterlist = type { i32, i32 }
%struct.dma_attrs = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@IOMMU_PAGE_SIZE = common dso_local global i32 0, align 4
@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iommu_unmap_sg(%struct.iommu_table* %0, %struct.scatterlist* %1, i32 %2, i32 %3, %struct.dma_attrs* %4) #0 {
  %6 = alloca %struct.iommu_table*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_attrs*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iommu_table* %0, %struct.iommu_table** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.dma_attrs* %4, %struct.dma_attrs** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @DMA_NONE, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %20 = icmp ne %struct.iommu_table* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %57

22:                                               ; preds = %5
  %23 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %23, %struct.scatterlist** %11, align 8
  br label %24

24:                                               ; preds = %37, %22
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %30 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %33 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %50

37:                                               ; preds = %28
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %40 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IOMMU_PAGE_SIZE, align 4
  %43 = call i32 @iommu_num_pages(i32 %38, i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @__iommu_free(%struct.iommu_table* %44, i32 %45, i32 %46)
  %48 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %49 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %48)
  store %struct.scatterlist* %49, %struct.scatterlist** %11, align 8
  br label %24

50:                                               ; preds = %36, %24
  %51 = load i32 (%struct.iommu_table*)*, i32 (%struct.iommu_table*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %52 = icmp ne i32 (%struct.iommu_table*)* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32 (%struct.iommu_table*)*, i32 (%struct.iommu_table*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %55 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %56 = call i32 %54(%struct.iommu_table* %55)
  br label %57

57:                                               ; preds = %21, %53, %50
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iommu_num_pages(i32, i32, i32) #1

declare dso_local i32 @__iommu_free(%struct.iommu_table*, i32, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
