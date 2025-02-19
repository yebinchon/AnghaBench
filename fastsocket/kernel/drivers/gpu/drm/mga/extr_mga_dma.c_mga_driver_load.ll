; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_dma.c_mga_driver_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_dma.c_mga_driver_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32*, i32, i8* }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MGA_DEFAULT_USEC_TIMEOUT = common dso_local global i32 0, align 4
@_DRM_STAT_IRQ = common dso_local global i32 0, align 4
@_DRM_STAT_PRIMARY = common dso_local global i32 0, align 4
@_DRM_STAT_SECONDARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mga_driver_load(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.TYPE_3__* @kzalloc(i32 24, i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %70

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = bitcast %struct.TYPE_3__* %16 to i8*
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @MGA_DEFAULT_USEC_TIMEOUT, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pci_set_master(i32 %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pci_resource_start(i32 %32, i32 1)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pci_resource_len(i32 %38, i32 1)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 3
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* @_DRM_STAT_IRQ, align 4
  %47 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 6
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @_DRM_STAT_PRIMARY, align 4
  %52 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %53 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 7
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* @_DRM_STAT_SECONDARY, align 4
  %57 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %58 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 8
  store i32 %56, i32* %60, align 4
  %61 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %62 = call i32 @drm_vblank_init(%struct.drm_device* %61, i32 1)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %15
  %66 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %67 = call i32 @mga_driver_unload(%struct.drm_device* %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %65, %12
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_3__* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_set_master(i32) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @mga_driver_unload(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
