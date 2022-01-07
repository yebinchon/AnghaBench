; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_iommu.c_dma_4u_unmap_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_iommu.c_dma_4u_unmap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.strbuf*, %struct.iommu* }
%struct.strbuf = type { i64 }
%struct.iommu = type { i64, i32, i64, i32* }
%struct.dma_attrs = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@IO_PAGE_MASK = common dso_local global i64 0, align 8
@IO_PAGE_SHIFT = common dso_local global i64 0, align 8
@IOPTE_CONTEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i64, i32, %struct.dma_attrs*)* @dma_4u_unmap_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_4u_unmap_page(%struct.device* %0, i64 %1, i64 %2, i32 %3, %struct.dma_attrs* %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_attrs*, align 8
  %11 = alloca %struct.iommu*, align 8
  %12 = alloca %struct.strbuf*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
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
  br label %118

30:                                               ; preds = %5
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.iommu*, %struct.iommu** %33, align 8
  store %struct.iommu* %34, %struct.iommu** %11, align 8
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.strbuf*, %struct.strbuf** %37, align 8
  store %struct.strbuf* %38, %struct.strbuf** %12, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %39, %40
  %42 = call i64 @IO_PAGE_ALIGN(i64 %41)
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @IO_PAGE_MASK, align 8
  %45 = and i64 %43, %44
  %46 = sub i64 %42, %45
  store i64 %46, i64* %15, align 8
  %47 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %48 = load i64, i64* %15, align 8
  %49 = lshr i64 %48, %47
  store i64 %49, i64* %15, align 8
  %50 = load %struct.iommu*, %struct.iommu** %11, align 8
  %51 = getelementptr inbounds %struct.iommu, %struct.iommu* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.iommu*, %struct.iommu** %11, align 8
  %55 = getelementptr inbounds %struct.iommu, %struct.iommu* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %53, %56
  %58 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %59 = lshr i64 %57, %58
  %60 = getelementptr inbounds i32, i32* %52, i64 %59
  store i32* %60, i32** %13, align 8
  %61 = load i64, i64* @IO_PAGE_MASK, align 8
  %62 = load i64, i64* %7, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %7, align 8
  %64 = load %struct.iommu*, %struct.iommu** %11, align 8
  %65 = getelementptr inbounds %struct.iommu, %struct.iommu* %64, i32 0, i32 1
  %66 = load i64, i64* %14, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  store i64 0, i64* %16, align 8
  %68 = load %struct.iommu*, %struct.iommu** %11, align 8
  %69 = getelementptr inbounds %struct.iommu, %struct.iommu* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %30
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @iopte_val(i32 %74)
  %76 = load i64, i64* @IOPTE_CONTEXT, align 8
  %77 = and i64 %75, %76
  %78 = lshr i64 %77, 47
  store i64 %78, i64* %16, align 8
  br label %79

79:                                               ; preds = %72, %30
  %80 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %81 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %86 = load %struct.iommu*, %struct.iommu** %11, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* %15, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @strbuf_flush(%struct.strbuf* %85, %struct.iommu* %86, i64 %87, i64 %88, i64 %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %79
  store i64 0, i64* %17, align 8
  br label %93

93:                                               ; preds = %103, %92
  %94 = load i64, i64* %17, align 8
  %95 = load i64, i64* %15, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load %struct.iommu*, %struct.iommu** %11, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = load i64, i64* %17, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = call i32 @iopte_make_dummy(%struct.iommu* %98, i32* %101)
  br label %103

103:                                              ; preds = %97
  %104 = load i64, i64* %17, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %17, align 8
  br label %93

106:                                              ; preds = %93
  %107 = load %struct.iommu*, %struct.iommu** %11, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %15, align 8
  %110 = call i32 @iommu_range_free(%struct.iommu* %107, i64 %108, i64 %109)
  %111 = load %struct.iommu*, %struct.iommu** %11, align 8
  %112 = load i64, i64* %16, align 8
  %113 = call i32 @iommu_free_ctx(%struct.iommu* %111, i64 %112)
  %114 = load %struct.iommu*, %struct.iommu** %11, align 8
  %115 = getelementptr inbounds %struct.iommu, %struct.iommu* %114, i32 0, i32 1
  %116 = load i64, i64* %14, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  br label %118

118:                                              ; preds = %106, %29
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @IO_PAGE_ALIGN(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @iopte_val(i32) #1

declare dso_local i32 @strbuf_flush(%struct.strbuf*, %struct.iommu*, i64, i64, i64, i32) #1

declare dso_local i32 @iopte_make_dummy(%struct.iommu*, i32*) #1

declare dso_local i32 @iommu_range_free(%struct.iommu*, i64, i64) #1

declare dso_local i32 @iommu_free_ctx(%struct.iommu*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
