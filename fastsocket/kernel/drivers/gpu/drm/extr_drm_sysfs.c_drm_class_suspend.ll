; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_sysfs.c_drm_class_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_sysfs.c_drm_class_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }
%struct.drm_minor = type { i64, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_device*, i32)* }

@drm_sysfs_device_minor = common dso_local global i32 0, align 4
@DRM_MINOR_LEGACY = common dso_local global i64 0, align 8
@DRIVER_MODESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @drm_class_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_class_suspend(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_minor*, align 8
  %7 = alloca %struct.drm_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, @drm_sysfs_device_minor
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.drm_minor* @to_drm_minor(%struct.device* %13)
  store %struct.drm_minor* %14, %struct.drm_minor** %6, align 8
  %15 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %16 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %15, i32 0, i32 1
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %7, align 8
  %18 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %19 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DRM_MINOR_LEGACY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %12
  %24 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %25 = load i32, i32* @DRIVER_MODESET, align 4
  %26 = call i32 @drm_core_check_feature(%struct.drm_device* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %23
  %29 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)** %32, align 8
  %34 = icmp ne i32 (%struct.drm_device*, i32)* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)** %39, align 8
  %41 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 %40(%struct.drm_device* %41, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %28, %23, %12
  br label %45

45:                                               ; preds = %44, %2
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.drm_minor* @to_drm_minor(%struct.device*) #1

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
