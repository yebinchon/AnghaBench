; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_tt_populate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_tt_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32, i64, i32, i32*, i32, i64 }
%struct.radeon_device = type { i32, i32, i32 }
%struct.radeon_ttm_tt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@TTM_PAGE_FLAG_SG = common dso_local global i32 0, align 4
@tt_unpopulated = common dso_local global i64 0, align 8
@tt_unbound = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_tt*)* @radeon_ttm_tt_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_ttm_tt_populate(%struct.ttm_tt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_tt*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ttm_tt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %3, align 8
  %9 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %10 = bitcast %struct.ttm_tt* %9 to i8*
  %11 = bitcast i8* %10 to %struct.radeon_ttm_tt*
  store %struct.radeon_ttm_tt* %11, %struct.radeon_ttm_tt** %5, align 8
  %12 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %13 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TTM_PAGE_FLAG_SG, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %22 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @tt_unpopulated, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %142

27:                                               ; preds = %1
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %32 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %37 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %40 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %5, align 8
  %43 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %47 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @drm_prime_sg_to_page_addr_arrays(i64 %38, i32* %41, i64* %45, i32 %48)
  %50 = load i64, i64* @tt_unbound, align 8
  %51 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %52 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  store i32 0, i32* %2, align 4
  br label %142

53:                                               ; preds = %30, %27
  %54 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %55 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.radeon_device* @radeon_get_rdev(i32 %56)
  store %struct.radeon_device* %57, %struct.radeon_device** %4, align 8
  %58 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %59 = call i32 @ttm_pool_populate(%struct.ttm_tt* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %142

64:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %138, %64
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %68 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %141

71:                                               ; preds = %65
  %72 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %76 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %84 = call i64 @pci_map_page(i32 %74, i32 %81, i32 0, i32 %82, i32 %83)
  %85 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %5, align 8
  %86 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64 %84, i64* %91, align 8
  %92 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %93 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %5, align 8
  %96 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @pci_dma_mapping_error(i32 %94, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %137

105:                                              ; preds = %71
  br label %106

106:                                              ; preds = %110, %105
  %107 = load i32, i32* %6, align 4
  %108 = add i32 %107, -1
  store i32 %108, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %106
  %111 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %112 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %5, align 8
  %115 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @PAGE_SIZE, align 4
  %123 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %124 = call i32 @pci_unmap_page(i32 %113, i64 %121, i32 %122, i32 %123)
  %125 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %5, align 8
  %126 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  store i64 0, i64* %131, align 8
  br label %106

132:                                              ; preds = %106
  %133 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %134 = call i32 @ttm_pool_unpopulate(%struct.ttm_tt* %133)
  %135 = load i32, i32* @EFAULT, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %142

137:                                              ; preds = %71
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %6, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %65

141:                                              ; preds = %65
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %132, %62, %35, %26
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @drm_prime_sg_to_page_addr_arrays(i64, i32*, i64*, i32) #1

declare dso_local %struct.radeon_device* @radeon_get_rdev(i32) #1

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
