; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_dma.c_mga_do_dma_bootstrap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_dma.c_mga_do_dma_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@_DRM_REGISTERS = common dso_local global i32 0, align 4
@_DRM_READ_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to map MMIO region: %d\0A\00", align 1
@SAREA_MAX = common dso_local global i32 0, align 4
@_DRM_SHM = common dso_local global i32 0, align 4
@_DRM_LOCKED = common dso_local global i32 0, align 4
@_DRM_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to map status region: %d\0A\00", align 1
@MINIMAL_CLEANUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.TYPE_7__*)* @mga_do_dma_bootstrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mga_do_dma_bootstrap(%struct.drm_device* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = call i64 @drm_pci_device_is_agp(%struct.drm_device* %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i1 [ false, %2 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %8, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @_DRM_REGISTERS, align 4
  %34 = load i32, i32* @_DRM_READ_ONLY, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = call i32 @drm_addmap(%struct.drm_device* %26, i32 %29, i32 %32, i32 %33, i32 %34, i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %17
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %88

44:                                               ; preds = %17
  %45 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %46 = load i32, i32* @SAREA_MAX, align 4
  %47 = load i32, i32* @_DRM_SHM, align 4
  %48 = load i32, i32* @_DRM_READ_ONLY, align 4
  %49 = load i32, i32* @_DRM_LOCKED, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @_DRM_KERNEL, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = call i32 @drm_addmap(%struct.drm_device* %45, i32 0, i32 %46, i32 %47, i32 %52, i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %44
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %88

62:                                               ; preds = %44
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = call i32 @mga_do_agp_dma_bootstrap(%struct.drm_device* %66, %struct.TYPE_7__* %67)
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %74 = load i32, i32* @MINIMAL_CLEANUP, align 4
  %75 = call i32 @mga_do_cleanup_dma(%struct.drm_device* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %69
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79, %76
  %83 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = call i32 @mga_do_pci_dma_bootstrap(%struct.drm_device* %83, %struct.TYPE_7__* %84)
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %58, %40
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @drm_pci_device_is_agp(%struct.drm_device*) #1

declare dso_local i32 @drm_addmap(%struct.drm_device*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @mga_do_agp_dma_bootstrap(%struct.drm_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @mga_do_cleanup_dma(%struct.drm_device*, i32) #1

declare dso_local i32 @mga_do_pci_dma_bootstrap(%struct.drm_device*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
