; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_sysfs.c_drm_sysfs_device_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_sysfs.c_drm_sysfs_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_minor = type { i64, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@drm_class = common dso_local global i32 0, align 4
@drm_sysfs_device_release = common dso_local global i32 0, align 4
@drm_sysfs_device_minor = common dso_local global i32 0, align 4
@DRM_MINOR_CONTROL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"controlD%d\00", align 1
@DRM_MINOR_RENDER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"renderD%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"card%d\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"device add failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_sysfs_device_add(%struct.drm_minor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_minor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.drm_minor* %0, %struct.drm_minor** %3, align 8
  %6 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %7 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %6, i32 0, i32 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %12 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @drm_class, align 4
  %15 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %16 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* @drm_sysfs_device_release, align 4
  %19 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %20 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 4
  %22 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %23 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %26 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 8
  %28 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %29 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32* @drm_sysfs_device_minor, i32** %30, align 8
  %31 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %32 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DRM_MINOR_CONTROL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %46

37:                                               ; preds = %1
  %38 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %39 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DRM_MINOR_RENDER, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %45

44:                                               ; preds = %37
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %45

45:                                               ; preds = %44, %43
  br label %46

46:                                               ; preds = %45, %36
  %47 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %48 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %47, i32 0, i32 1
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %51 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_set_name(%struct.TYPE_5__* %48, i8* %49, i32 %52)
  %54 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %55 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %54, i32 0, i32 1
  %56 = call i32 @device_register(%struct.TYPE_5__* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %63

62:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %62
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_5__*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
