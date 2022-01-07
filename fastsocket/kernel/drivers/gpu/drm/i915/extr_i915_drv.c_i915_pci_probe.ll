; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c_i915_pci_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c_i915_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.intel_device_info = type { i32, i64 }

@i915_preliminary_hw_support = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Preliminary hardware support disabled\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DRIVER_USE_AGP = common dso_local global i32 0, align 4
@DRIVER_REQUIRE_AGP = common dso_local global i32 0, align 4
@driver = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@intel_agp_enabled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"drm/i915 can't work without intel_agp module!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @i915_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.intel_device_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %8 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.intel_device_info*
  store %struct.intel_device_info* %10, %struct.intel_device_info** %6, align 8
  %11 = load %struct.intel_device_info*, %struct.intel_device_info** %6, align 8
  %12 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* @i915_preliminary_hw_support, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %56

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @PCI_FUNC(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %56

32:                                               ; preds = %23
  %33 = load %struct.intel_device_info*, %struct.intel_device_info** %6, align 8
  %34 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 3
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* @DRIVER_USE_AGP, align 4
  %39 = load i32, i32* @DRIVER_REQUIRE_AGP, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @driver, i32 0, i32 0), align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @driver, i32 0, i32 0), align 4
  br label %52

44:                                               ; preds = %32
  %45 = load i32, i32* @intel_agp_enabled, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %37
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %55 = call i32 @drm_get_pci_dev(%struct.pci_dev* %53, %struct.pci_device_id* %54, %struct.TYPE_3__* @driver)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %47, %29, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @PCI_FUNC(i32) #1

declare dso_local i32 @drm_get_pci_dev(%struct.pci_dev*, %struct.pci_device_id*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
