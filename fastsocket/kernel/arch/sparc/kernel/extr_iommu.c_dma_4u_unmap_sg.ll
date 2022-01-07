; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_iommu.c_dma_4u_unmap_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_iommu.c_dma_4u_unmap_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.strbuf*, %struct.iommu* }
%struct.strbuf = type { i64 }
%struct.iommu = type { i64, i32, i32* }
%struct.scatterlist = type { i32, i32 }
%struct.dma_attrs = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@IO_PAGE_SIZE = common dso_local global i32 0, align 4
@IO_PAGE_SHIFT = common dso_local global i64 0, align 8
@IO_PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.scatterlist*, i32, i32, %struct.dma_attrs*)* @dma_4u_unmap_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_4u_unmap_sg(%struct.device* %0, %struct.scatterlist* %1, i32 %2, i32 %3, %struct.dma_attrs* %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_attrs*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca %struct.strbuf*, align 8
  %15 = alloca %struct.iommu*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.dma_attrs* %4, %struct.dma_attrs** %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @DMA_NONE, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.iommu*, %struct.iommu** %29, align 8
  store %struct.iommu* %30, %struct.iommu** %15, align 8
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.strbuf*, %struct.strbuf** %33, align 8
  store %struct.strbuf* %34, %struct.strbuf** %14, align 8
  %35 = load %struct.iommu*, %struct.iommu** %15, align 8
  %36 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %37 = call i64 @fetch_sg_ctx(%struct.iommu* %35, %struct.scatterlist* %36)
  store i64 %37, i64* %12, align 8
  %38 = load %struct.iommu*, %struct.iommu** %15, align 8
  %39 = getelementptr inbounds %struct.iommu, %struct.iommu* %38, i32 0, i32 1
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %42, %struct.scatterlist** %13, align 8
  br label %43

43:                                               ; preds = %110, %5
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %8, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %113

47:                                               ; preds = %43
  %48 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %49 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  %51 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %52 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  br label %113

57:                                               ; preds = %47
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* @IO_PAGE_SIZE, align 4
  %61 = call i64 @iommu_num_pages(i32 %58, i32 %59, i32 %60)
  store i64 %61, i64* %18, align 8
  %62 = load %struct.iommu*, %struct.iommu** %15, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load i64, i64* %18, align 8
  %65 = call i32 @iommu_range_free(%struct.iommu* %62, i32 %63, i64 %64)
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.iommu*, %struct.iommu** %15, align 8
  %69 = getelementptr inbounds %struct.iommu, %struct.iommu* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 %67, %70
  %72 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %73 = lshr i64 %71, %72
  store i64 %73, i64* %19, align 8
  %74 = load %struct.iommu*, %struct.iommu** %15, align 8
  %75 = getelementptr inbounds %struct.iommu, %struct.iommu* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %19, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %20, align 8
  %79 = load i32, i32* @IO_PAGE_MASK, align 4
  %80 = load i32, i32* %16, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %16, align 4
  %82 = load %struct.strbuf*, %struct.strbuf** %14, align 8
  %83 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %57
  %87 = load %struct.strbuf*, %struct.strbuf** %14, align 8
  %88 = load %struct.iommu*, %struct.iommu** %15, align 8
  %89 = load i32, i32* %16, align 4
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @strbuf_flush(%struct.strbuf* %87, %struct.iommu* %88, i32 %89, i64 %90, i64 %91, i32 %92)
  br label %94

94:                                               ; preds = %86, %57
  store i32 0, i32* %21, align 4
  br label %95

95:                                               ; preds = %107, %94
  %96 = load i32, i32* %21, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %18, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load %struct.iommu*, %struct.iommu** %15, align 8
  %102 = load i32*, i32** %20, align 8
  %103 = load i32, i32* %21, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = call i32 @iopte_make_dummy(%struct.iommu* %101, i32* %105)
  br label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %21, align 4
  br label %95

110:                                              ; preds = %95
  %111 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %112 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %111)
  store %struct.scatterlist* %112, %struct.scatterlist** %13, align 8
  br label %43

113:                                              ; preds = %56, %43
  %114 = load %struct.iommu*, %struct.iommu** %15, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @iommu_free_ctx(%struct.iommu* %114, i64 %115)
  %117 = load %struct.iommu*, %struct.iommu** %15, align 8
  %118 = getelementptr inbounds %struct.iommu, %struct.iommu* %117, i32 0, i32 1
  %119 = load i64, i64* %11, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @fetch_sg_ctx(%struct.iommu*, %struct.scatterlist*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @iommu_num_pages(i32, i32, i32) #1

declare dso_local i32 @iommu_range_free(%struct.iommu*, i32, i64) #1

declare dso_local i32 @strbuf_flush(%struct.strbuf*, %struct.iommu*, i32, i64, i64, i32) #1

declare dso_local i32 @iopte_make_dummy(%struct.iommu*, i32*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @iommu_free_ctx(%struct.iommu*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
