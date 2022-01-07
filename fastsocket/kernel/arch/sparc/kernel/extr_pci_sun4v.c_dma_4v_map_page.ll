; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_map_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iommu* }
%struct.iommu = type { i64, i32 }
%struct.page = type { i32 }
%struct.dma_attrs = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@IO_PAGE_MASK = common dso_local global i64 0, align 8
@IO_PAGE_SHIFT = common dso_local global i64 0, align 8
@DMA_ERROR_CODE = common dso_local global i64 0, align 8
@HV_PCI_MAP_ATTR_READ = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@HV_PCI_MAP_ATTR_WRITE = common dso_local global i64 0, align 8
@IO_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.page*, i64, i64, i32, %struct.dma_attrs*)* @dma_4v_map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dma_4v_map_page(%struct.device* %0, %struct.page* %1, i64 %2, i64 %3, i32 %4, %struct.dma_attrs* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dma_attrs*, align 8
  %14 = alloca %struct.iommu*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.page* %1, %struct.page** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.dma_attrs* %5, %struct.dma_attrs** %13, align 8
  %25 = load %struct.device*, %struct.device** %8, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.iommu*, %struct.iommu** %27, align 8
  store %struct.iommu* %28, %struct.iommu** %14, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @DMA_NONE, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %6
  br label %135

36:                                               ; preds = %6
  %37 = load %struct.page*, %struct.page** %9, align 8
  %38 = call i64 @page_address(%struct.page* %37)
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %38, %39
  store i64 %40, i64* %17, align 8
  %41 = load i64, i64* %17, align 8
  %42 = load i64, i64* %11, align 8
  %43 = add i64 %41, %42
  %44 = call i64 @IO_PAGE_ALIGN(i64 %43)
  %45 = load i64, i64* %17, align 8
  %46 = load i64, i64* @IO_PAGE_MASK, align 8
  %47 = and i64 %45, %46
  %48 = sub i64 %44, %47
  store i64 %48, i64* %16, align 8
  %49 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %50 = load i64, i64* %16, align 8
  %51 = lshr i64 %50, %49
  store i64 %51, i64* %16, align 8
  %52 = load %struct.iommu*, %struct.iommu** %14, align 8
  %53 = getelementptr inbounds %struct.iommu, %struct.iommu* %52, i32 0, i32 1
  %54 = load i64, i64* %15, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.device*, %struct.device** %8, align 8
  %57 = load %struct.iommu*, %struct.iommu** %14, align 8
  %58 = load i64, i64* %16, align 8
  %59 = call i64 @iommu_range_alloc(%struct.device* %56, %struct.iommu* %57, i64 %58, i32* null)
  store i64 %59, i64* %23, align 8
  %60 = load %struct.iommu*, %struct.iommu** %14, align 8
  %61 = getelementptr inbounds %struct.iommu, %struct.iommu* %60, i32 0, i32 1
  %62 = load i64, i64* %15, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i64, i64* %23, align 8
  %65 = load i64, i64* @DMA_ERROR_CODE, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %36
  br label %135

71:                                               ; preds = %36
  %72 = load %struct.iommu*, %struct.iommu** %14, align 8
  %73 = getelementptr inbounds %struct.iommu, %struct.iommu* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %23, align 8
  %76 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %77 = shl i64 %75, %76
  %78 = add i64 %74, %77
  store i64 %78, i64* %20, align 8
  %79 = load i64, i64* %20, align 8
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* @IO_PAGE_MASK, align 8
  %82 = xor i64 %81, -1
  %83 = and i64 %80, %82
  %84 = or i64 %79, %83
  store i64 %84, i64* %21, align 8
  %85 = load i64, i64* %17, align 8
  %86 = load i64, i64* @IO_PAGE_MASK, align 8
  %87 = and i64 %85, %86
  %88 = call i64 @__pa(i64 %87)
  store i64 %88, i64* %19, align 8
  %89 = load i64, i64* @HV_PCI_MAP_ATTR_READ, align 8
  store i64 %89, i64* %22, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @DMA_TO_DEVICE, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %71
  %94 = load i64, i64* @HV_PCI_MAP_ATTR_WRITE, align 8
  %95 = load i64, i64* %22, align 8
  %96 = or i64 %95, %94
  store i64 %96, i64* %22, align 8
  br label %97

97:                                               ; preds = %93, %71
  %98 = load i64, i64* %15, align 8
  %99 = call i32 @local_irq_save(i64 %98)
  %100 = load %struct.device*, %struct.device** %8, align 8
  %101 = load i64, i64* %22, align 8
  %102 = load i64, i64* %23, align 8
  %103 = call i32 @iommu_batch_start(%struct.device* %100, i64 %101, i64 %102)
  store i64 0, i64* %18, align 8
  br label %104

104:                                              ; preds = %118, %97
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* %16, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %104
  %109 = load i64, i64* %19, align 8
  %110 = call i64 @iommu_batch_add(i64 %109)
  store i64 %110, i64* %24, align 8
  %111 = load i64, i64* %24, align 8
  %112 = icmp slt i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %142

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %18, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %18, align 8
  %121 = load i64, i64* @IO_PAGE_SIZE, align 8
  %122 = load i64, i64* %19, align 8
  %123 = add i64 %122, %121
  store i64 %123, i64* %19, align 8
  br label %104

124:                                              ; preds = %104
  %125 = call i64 (...) @iommu_batch_end()
  %126 = icmp slt i64 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %142

131:                                              ; preds = %124
  %132 = load i64, i64* %15, align 8
  %133 = call i32 @local_irq_restore(i64 %132)
  %134 = load i64, i64* %21, align 8
  store i64 %134, i64* %7, align 8
  br label %155

135:                                              ; preds = %70, %35
  %136 = call i64 (...) @printk_ratelimit()
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = call i32 @WARN_ON(i32 1)
  br label %140

140:                                              ; preds = %138, %135
  %141 = load i64, i64* @DMA_ERROR_CODE, align 8
  store i64 %141, i64* %7, align 8
  br label %155

142:                                              ; preds = %130, %116
  %143 = load %struct.iommu*, %struct.iommu** %14, align 8
  %144 = getelementptr inbounds %struct.iommu, %struct.iommu* %143, i32 0, i32 1
  %145 = call i32 @spin_lock(i32* %144)
  %146 = load %struct.iommu*, %struct.iommu** %14, align 8
  %147 = load i64, i64* %20, align 8
  %148 = load i64, i64* %16, align 8
  %149 = call i32 @iommu_range_free(%struct.iommu* %146, i64 %147, i64 %148)
  %150 = load %struct.iommu*, %struct.iommu** %14, align 8
  %151 = getelementptr inbounds %struct.iommu, %struct.iommu* %150, i32 0, i32 1
  %152 = load i64, i64* %15, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32* %151, i64 %152)
  %154 = load i64, i64* @DMA_ERROR_CODE, align 8
  store i64 %154, i64* %7, align 8
  br label %155

155:                                              ; preds = %142, %140, %131
  %156 = load i64, i64* %7, align 8
  ret i64 %156
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @IO_PAGE_ALIGN(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @iommu_range_alloc(%struct.device*, %struct.iommu*, i64, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @__pa(i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @iommu_batch_start(%struct.device*, i64, i64) #1

declare dso_local i64 @iommu_batch_add(i64) #1

declare dso_local i64 @iommu_batch_end(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iommu_range_free(%struct.iommu*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
