; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.iommu* }
%struct.iommu = type { i32, i64 }
%struct.page = type { i32 }

@MAX_ORDER = common dso_local global i64 0, align 8
@IO_PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@DMA_ERROR_CODE = common dso_local global i64 0, align 8
@HV_PCI_MAP_ATTR_READ = common dso_local global i32 0, align 4
@HV_PCI_MAP_ATTR_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i64, i64*, i32)* @dma_4v_alloc_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dma_4v_alloc_coherent(%struct.device* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.iommu*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @IO_PAGE_ALIGN(i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @get_order(i64 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @MAX_ORDER, align 8
  %27 = icmp uge i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %153

32:                                               ; preds = %4
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %35 = lshr i64 %33, %34
  store i64 %35, i64* %13, align 8
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i64, i64* %11, align 8
  %43 = call %struct.page* @alloc_pages_node(i32 %40, i32 %41, i64 %42)
  store %struct.page* %43, %struct.page** %16, align 8
  %44 = load %struct.page*, %struct.page** %16, align 8
  %45 = icmp ne %struct.page* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  store i8* null, i8** %5, align 8
  br label %153

51:                                               ; preds = %32
  %52 = load %struct.page*, %struct.page** %16, align 8
  %53 = call i64 @page_address(%struct.page* %52)
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load i64, i64* @PAGE_SIZE, align 8
  %57 = load i64, i64* %11, align 8
  %58 = shl i64 %56, %57
  %59 = call i32 @memset(i8* %55, i32 0, i64 %58)
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = getelementptr inbounds %struct.device, %struct.device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load %struct.iommu*, %struct.iommu** %62, align 8
  store %struct.iommu* %63, %struct.iommu** %15, align 8
  %64 = load %struct.iommu*, %struct.iommu** %15, align 8
  %65 = getelementptr inbounds %struct.iommu, %struct.iommu* %64, i32 0, i32 0
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load %struct.iommu*, %struct.iommu** %15, align 8
  %70 = load i64, i64* %13, align 8
  %71 = call i64 @iommu_range_alloc(%struct.device* %68, %struct.iommu* %69, i64 %70, i32* null)
  store i64 %71, i64* %18, align 8
  %72 = load %struct.iommu*, %struct.iommu** %15, align 8
  %73 = getelementptr inbounds %struct.iommu, %struct.iommu* %72, i32 0, i32 0
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i64, i64* %18, align 8
  %77 = load i64, i64* @DMA_ERROR_CODE, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %51
  br label %149

83:                                               ; preds = %51
  %84 = load %struct.iommu*, %struct.iommu** %15, align 8
  %85 = getelementptr inbounds %struct.iommu, %struct.iommu* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %18, align 8
  %88 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %89 = shl i64 %87, %88
  %90 = add nsw i64 %86, %89
  %91 = load i64*, i64** %8, align 8
  store i64 %90, i64* %91, align 8
  %92 = load i64, i64* %12, align 8
  %93 = inttoptr i64 %92 to i8*
  store i8* %93, i8** %17, align 8
  %94 = load i64, i64* %12, align 8
  %95 = call i64 @__pa(i64 %94)
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @local_irq_save(i64 %96)
  %98 = load %struct.device*, %struct.device** %6, align 8
  %99 = load i32, i32* @HV_PCI_MAP_ATTR_READ, align 4
  %100 = load i32, i32* @HV_PCI_MAP_ATTR_WRITE, align 4
  %101 = or i32 %99, %100
  %102 = load i64, i64* %18, align 8
  %103 = call i32 @iommu_batch_start(%struct.device* %98, i32 %101, i64 %102)
  store i64 0, i64* %14, align 8
  br label %104

104:                                              ; preds = %122, %83
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* %13, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %104
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* @PAGE_SIZE, align 8
  %112 = mul i64 %110, %111
  %113 = add i64 %109, %112
  %114 = call i64 @iommu_batch_add(i64 %113)
  store i64 %114, i64* %20, align 8
  %115 = load i64, i64* %20, align 8
  %116 = icmp slt i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %108
  br label %136

121:                                              ; preds = %108
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %14, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %14, align 8
  br label %104

125:                                              ; preds = %104
  %126 = call i64 (...) @iommu_batch_end()
  %127 = icmp slt i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %136

132:                                              ; preds = %125
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @local_irq_restore(i64 %133)
  %135 = load i8*, i8** %17, align 8
  store i8* %135, i8** %5, align 8
  br label %153

136:                                              ; preds = %131, %120
  %137 = load %struct.iommu*, %struct.iommu** %15, align 8
  %138 = getelementptr inbounds %struct.iommu, %struct.iommu* %137, i32 0, i32 0
  %139 = call i32 @spin_lock(i32* %138)
  %140 = load %struct.iommu*, %struct.iommu** %15, align 8
  %141 = load i64*, i64** %8, align 8
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %13, align 8
  %144 = call i32 @iommu_range_free(%struct.iommu* %140, i64 %142, i64 %143)
  %145 = load %struct.iommu*, %struct.iommu** %15, align 8
  %146 = getelementptr inbounds %struct.iommu, %struct.iommu* %145, i32 0, i32 0
  %147 = load i64, i64* %10, align 8
  %148 = call i32 @spin_unlock_irqrestore(i32* %146, i64 %147)
  br label %149

149:                                              ; preds = %136, %82
  %150 = load i64, i64* %12, align 8
  %151 = load i64, i64* %11, align 8
  %152 = call i32 @free_pages(i64 %150, i64 %151)
  store i8* null, i8** %5, align 8
  br label %153

153:                                              ; preds = %149, %132, %50, %31
  %154 = load i8*, i8** %5, align 8
  ret i8* %154
}

declare dso_local i64 @IO_PAGE_ALIGN(i64) #1

declare dso_local i64 @get_order(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i64) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @iommu_range_alloc(%struct.device*, %struct.iommu*, i64, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @__pa(i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @iommu_batch_start(%struct.device*, i32, i64) #1

declare dso_local i64 @iommu_batch_add(i64) #1

declare dso_local i64 @iommu_batch_end(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iommu_range_free(%struct.iommu*, i64, i64) #1

declare dso_local i32 @free_pages(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
