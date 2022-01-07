; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_driver_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_driver_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i8* }
%struct.TYPE_3__ = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RADEON_FAMILY_MASK = common dso_local global i64 0, align 8
@RADEON_HAS_HIERZ = common dso_local global i64 0, align 8
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@RADEON_IS_PCI = common dso_local global i32 0, align 4
@_DRM_REGISTERS = common dso_local global i32 0, align 4
@_DRM_READ_ONLY = common dso_local global i32 0, align 4
@_DRM_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s card detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"AGP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"PCIE\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_driver_load(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.TYPE_3__* @kzalloc(i32 16, i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %122

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = bitcast %struct.TYPE_3__* %16 to i8*
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @RADEON_FAMILY_MASK, align 8
  %25 = and i64 %23, %24
  switch i64 %25, label %32 [
    i64 139, label %26
    i64 131, label %26
    i64 138, label %26
    i64 137, label %26
    i64 136, label %26
    i64 135, label %26
    i64 134, label %26
    i64 130, label %26
    i64 129, label %26
    i64 133, label %26
    i64 128, label %26
    i64 132, label %26
  ]

26:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15
  %27 = load i64, i64* @RADEON_HAS_HIERZ, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = or i64 %30, %27
  store i64 %31, i64* %29, align 8
  br label %33

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32, %26
  %34 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pci_set_master(i32 %36)
  %38 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %39 = call i64 @drm_pci_device_is_agp(%struct.drm_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load i32, i32* @RADEON_IS_AGP, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = or i64 %46, %43
  store i64 %47, i64* %45, align 8
  br label %69

48:                                               ; preds = %33
  %49 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @pci_is_pcie(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i32, i32* @RADEON_IS_PCIE, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = or i64 %59, %56
  store i64 %60, i64* %58, align 8
  br label %68

61:                                               ; preds = %48
  %62 = load i32, i32* @RADEON_IS_PCI, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = or i64 %66, %63
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %61, %54
  br label %69

69:                                               ; preds = %68, %41
  %70 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %71 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %72 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pci_resource_start(i32 %73, i32 2)
  %75 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %76 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @pci_resource_len(i32 %77, i32 2)
  %79 = load i32, i32* @_DRM_REGISTERS, align 4
  %80 = load i32, i32* @_DRM_READ_ONLY, align 4
  %81 = load i32, i32* @_DRM_DRIVER, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = call i32 @drm_addmap(%struct.drm_device* %70, i32 %74, i32 %78, i32 %79, i32 %82, i32* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %69
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %122

90:                                               ; preds = %69
  %91 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %92 = call i32 @drm_vblank_init(%struct.drm_device* %91, i32 2)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %97 = call i32 @radeon_driver_unload(%struct.drm_device* %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %122

99:                                               ; preds = %90
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @RADEON_IS_AGP, align 4
  %104 = sext i32 %103 to i64
  %105 = and i64 %102, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %118

108:                                              ; preds = %99
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* @RADEON_IS_PCIE, align 4
  %113 = sext i32 %112 to i64
  %114 = and i64 %111, %113
  %115 = icmp ne i64 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  br label %118

118:                                              ; preds = %108, %107
  %119 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %107 ], [ %117, %108 ]
  %120 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %119)
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %118, %95, %88, %12
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.TYPE_3__* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_set_master(i32) #1

declare dso_local i64 @drm_pci_device_is_agp(%struct.drm_device*) #1

declare dso_local i64 @pci_is_pcie(i32) #1

declare dso_local i32 @drm_addmap(%struct.drm_device*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @radeon_driver_unload(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
