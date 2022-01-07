; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_driver_load_kms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_driver_load_kms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_3__*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.radeon_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RADEON_IS_AGP = common dso_local global i64 0, align 8
@RADEON_IS_PCIE = common dso_local global i64 0, align 8
@RADEON_IS_PCI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Fatal error during GPU init\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Fatal error during modeset init\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Error during ACPI methods call\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_driver_load_kms(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.radeon_device* @kzalloc(i32 4, i32 %9)
  store %struct.radeon_device* %10, %struct.radeon_device** %6, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %12 = icmp eq %struct.radeon_device* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %94

16:                                               ; preds = %2
  %17 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %18 = bitcast %struct.radeon_device* %17 to i8*
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %22 = call i64 @drm_pci_device_is_agp(%struct.drm_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i64, i64* @RADEON_IS_AGP, align 8
  %26 = load i64, i64* %5, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %5, align 8
  br label %43

28:                                               ; preds = %16
  %29 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i64 @pci_is_pcie(%struct.TYPE_3__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i64, i64* @RADEON_IS_PCIE, align 8
  %36 = load i64, i64* %5, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %5, align 8
  br label %42

38:                                               ; preds = %28
  %39 = load i64, i64* @RADEON_IS_PCI, align 8
  %40 = load i64, i64* %5, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %24
  %44 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %45 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %46 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @radeon_device_init(%struct.radeon_device* %44, %struct.drm_device* %45, %struct.TYPE_3__* %48, i64 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %86

59:                                               ; preds = %43
  %60 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %61 = call i32 @radeon_modeset_init(%struct.radeon_device* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %66 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %70
  %74 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %75 = call i32 @radeon_acpi_init(%struct.radeon_device* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %80 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = call i32 @dev_dbg(i32* %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %78, %73
  br label %85

85:                                               ; preds = %84, %70
  br label %86

86:                                               ; preds = %85, %53
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %91 = call i32 @radeon_driver_unload_kms(%struct.drm_device* %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %13
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.radeon_device* @kzalloc(i32, i32) #1

declare dso_local i64 @drm_pci_device_is_agp(%struct.drm_device*) #1

declare dso_local i64 @pci_is_pcie(%struct.TYPE_3__*) #1

declare dso_local i32 @radeon_device_init(%struct.radeon_device*, %struct.drm_device*, %struct.TYPE_3__*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @radeon_modeset_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_acpi_init(%struct.radeon_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @radeon_driver_unload_kms(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
