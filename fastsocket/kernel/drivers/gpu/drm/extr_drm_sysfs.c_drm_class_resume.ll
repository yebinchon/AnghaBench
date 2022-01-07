; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_sysfs.c_drm_class_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_sysfs.c_drm_class_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }
%struct.drm_minor = type { i64, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_device*)* }

@drm_sysfs_device_minor = common dso_local global i32 0, align 4
@DRM_MINOR_LEGACY = common dso_local global i64 0, align 8
@DRIVER_MODESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @drm_class_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_class_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.drm_minor*, align 8
  %5 = alloca %struct.drm_device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, @drm_sysfs_device_minor
  br i1 %9, label %10, label %42

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.drm_minor* @to_drm_minor(%struct.device* %11)
  store %struct.drm_minor* %12, %struct.drm_minor** %4, align 8
  %13 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %14 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %13, i32 0, i32 1
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %17 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DRM_MINOR_LEGACY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %10
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = load i32, i32* @DRIVER_MODESET, align 4
  %24 = call i32 @drm_core_check_feature(%struct.drm_device* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %21
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %30, align 8
  %32 = icmp ne i32 (%struct.drm_device*)* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %37, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %40 = call i32 %38(%struct.drm_device* %39)
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %26, %21, %10
  br label %42

42:                                               ; preds = %41, %1
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.drm_minor* @to_drm_minor(%struct.device*) #1

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
