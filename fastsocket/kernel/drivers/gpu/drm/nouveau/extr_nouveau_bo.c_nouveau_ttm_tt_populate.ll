; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_ttm_tt_populate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_ttm_tt_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32, i64, i32, i32*, i32, i64 }
%struct.ttm_dma_tt = type { i64* }
%struct.nouveau_drm = type { %struct.TYPE_2__, %struct.drm_device* }
%struct.TYPE_2__ = type { i64 }
%struct.drm_device = type { i32, i32 }

@TTM_PAGE_FLAG_SG = common dso_local global i32 0, align 4
@tt_unpopulated = common dso_local global i64 0, align 8
@tt_unbound = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_tt*)* @nouveau_ttm_tt_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_ttm_tt_populate(%struct.ttm_tt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_tt*, align 8
  %4 = alloca %struct.ttm_dma_tt*, align 8
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %3, align 8
  %10 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %11 = bitcast %struct.ttm_tt* %10 to i8*
  %12 = bitcast i8* %11 to %struct.ttm_dma_tt*
  store %struct.ttm_dma_tt* %12, %struct.ttm_dma_tt** %4, align 8
  %13 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %14 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @TTM_PAGE_FLAG_SG, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %23 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @tt_unpopulated, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %141

28:                                               ; preds = %1
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %33 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %38 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %41 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %44 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %47 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @drm_prime_sg_to_page_addr_arrays(i64 %39, i32* %42, i64* %45, i32 %48)
  %50 = load i64, i64* @tt_unbound, align 8
  %51 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %52 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  store i32 0, i32* %2, align 4
  br label %141

53:                                               ; preds = %31, %28
  %54 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %55 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.nouveau_drm* @nouveau_bdev(i32 %56)
  store %struct.nouveau_drm* %57, %struct.nouveau_drm** %5, align 8
  %58 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %59 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %58, i32 0, i32 1
  %60 = load %struct.drm_device*, %struct.drm_device** %59, align 8
  store %struct.drm_device* %60, %struct.drm_device** %6, align 8
  %61 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %62 = call i32 @ttm_pool_populate(%struct.ttm_tt* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %141

67:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %137, %67
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %71 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %140

74:                                               ; preds = %68
  %75 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %76 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %79 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PAGE_SIZE, align 4
  %86 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %87 = call i64 @pci_map_page(i32 %77, i32 %84, i32 0, i32 %85, i32 %86)
  %88 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %89 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  store i64 %87, i64* %93, align 8
  %94 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %95 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %98 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @pci_dma_mapping_error(i32 %96, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %136

106:                                              ; preds = %74
  br label %107

107:                                              ; preds = %111, %106
  %108 = load i32, i32* %7, align 4
  %109 = add i32 %108, -1
  store i32 %109, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %107
  %112 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %113 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %116 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @PAGE_SIZE, align 4
  %123 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %124 = call i32 @pci_unmap_page(i32 %114, i64 %121, i32 %122, i32 %123)
  %125 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %126 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  store i64 0, i64* %130, align 8
  br label %107

131:                                              ; preds = %107
  %132 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %133 = call i32 @ttm_pool_unpopulate(%struct.ttm_tt* %132)
  %134 = load i32, i32* @EFAULT, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %141

136:                                              ; preds = %74
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %7, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %68

140:                                              ; preds = %68
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %131, %65, %36, %27
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @drm_prime_sg_to_page_addr_arrays(i64, i32*, i64*, i32) #1

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local i32 @ttm_pool_populate(%struct.ttm_tt*) #1

declare dso_local i64 @pci_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i64) #1

declare dso_local i32 @pci_unmap_page(i32, i64, i32, i32) #1

declare dso_local i32 @ttm_pool_unpopulate(%struct.ttm_tt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
