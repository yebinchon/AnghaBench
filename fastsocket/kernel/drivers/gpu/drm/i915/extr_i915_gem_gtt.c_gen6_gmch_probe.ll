; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen6_gmch_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen6_gmch_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Unknown GMADR size (%lx)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SNB_GMCH_CTRL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to map the gtt page table\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Scratch setup failed\0A\00", align 1
@gen6_ggtt_clear_range = common dso_local global i32 0, align 4
@gen6_ggtt_insert_entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i64*, i64*, i64*, i64*)* @gen6_gmch_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen6_gmch_probe(%struct.drm_device* %0, i64* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.drm_i915_private*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 1
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %18, align 8
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %12, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @pci_resource_start(i32 %22, i32 2)
  %24 = load i64*, i64** %10, align 8
  store i64 %23, i64* %24, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @pci_resource_len(i32 %27, i32 2)
  %29 = load i64*, i64** %11, align 8
  store i64 %28, i64* %29, align 8
  %30 = load i64*, i64** %11, align 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %31, 67108864
  br i1 %32, label %37, label %33

33:                                               ; preds = %5
  %34 = load i64*, i64** %11, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %35, 536870912
  br i1 %36, label %37, label %45

37:                                               ; preds = %33, %5
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ENXIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %122

45:                                               ; preds = %33
  %46 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @DMA_BIT_MASK(i32 40)
  %50 = call i32 @pci_set_dma_mask(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %45
  %53 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %54 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @DMA_BIT_MASK(i32 40)
  %57 = call i32 @pci_set_consistent_dma_mask(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %45
  %59 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %60 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SNB_GMCH_CTRL, align 4
  %63 = call i32 @pci_read_config_word(i32 %61, i32 %62, i32* %15)
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @gen6_get_total_gtt_size(i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %67 = call i64 @IS_GEN7(%struct.drm_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %58
  %70 = load i32, i32* %15, align 4
  %71 = call i64 @gen7_get_stolen_size(i32 %70)
  %72 = load i64*, i64** %9, align 8
  store i64 %71, i64* %72, align 8
  br label %77

73:                                               ; preds = %58
  %74 = load i32, i32* %15, align 4
  %75 = call i64 @gen6_get_stolen_size(i32 %74)
  %76 = load i64*, i64** %9, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %14, align 4
  %79 = zext i32 %78 to i64
  %80 = udiv i64 %79, 4
  %81 = load i32, i32* @PAGE_SHIFT, align 4
  %82 = zext i32 %81 to i64
  %83 = shl i64 %80, %82
  %84 = load i64*, i64** %8, align 8
  store i64 %83, i64* %84, align 8
  %85 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %86 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @pci_resource_start(i32 %87, i32 0)
  %89 = add nsw i64 %88, 2097152
  store i64 %89, i64* %13, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @ioremap_wc(i64 %90, i32 %91)
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %94 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 4
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %97 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %77
  %102 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %122

105:                                              ; preds = %77
  %106 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %107 = call i32 @setup_scratch_page(%struct.drm_device* %106)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %105
  %113 = load i32, i32* @gen6_ggtt_clear_range, align 4
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %115 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* @gen6_ggtt_insert_entries, align 4
  %118 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %119 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* %16, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %112, %101, %37
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i64 @pci_resource_len(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @pci_set_dma_mask(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(i32, i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @gen6_get_total_gtt_size(i32) #1

declare dso_local i64 @IS_GEN7(%struct.drm_device*) #1

declare dso_local i64 @gen7_get_stolen_size(i32) #1

declare dso_local i64 @gen6_get_stolen_size(i32) #1

declare dso_local i32 @ioremap_wc(i64, i32) #1

declare dso_local i32 @setup_scratch_page(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
