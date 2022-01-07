; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c_i915_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c_i915_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"dev: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"DRM not initialized, aborting suspend.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PM_EVENT_PRETHAW = common dso_local global i64 0, align 8
@DRM_SWITCH_POWER_OFF = common dso_local global i64 0, align 8
@PM_EVENT_SUSPEND = common dso_local global i64 0, align 8
@PCI_D3hot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_suspend(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i64 %1, i64* %7, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %9 = icmp ne %struct.drm_device* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.drm_device* %16)
  %18 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %57

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PM_EVENT_PRETHAW, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %57

27:                                               ; preds = %21
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DRM_SWITCH_POWER_OFF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %57

34:                                               ; preds = %27
  %35 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %36 = call i32 @i915_drm_freeze(%struct.drm_device* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %57

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PM_EVENT_SUSPEND, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pci_disable_device(i32 %49)
  %51 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %52 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PCI_D3hot, align 4
  %55 = call i32 @pci_set_power_state(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %46, %41
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %39, %33, %26, %15
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @i915_drm_freeze(%struct.drm_device*) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @pci_set_power_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
