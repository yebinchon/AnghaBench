; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_flink_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_flink_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_gem_flink = type { i8*, i32 }
%struct.drm_gem_object = type { i64 }

@DRIVER_GEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_flink_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_gem_flink*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_gem_flink*
  store %struct.drm_gem_flink* %12, %struct.drm_gem_flink** %8, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DRIVER_GEM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %98

24:                                               ; preds = %3
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %27 = load %struct.drm_gem_flink*, %struct.drm_gem_flink** %8, align 8
  %28 = getelementptr inbounds %struct.drm_gem_flink, %struct.drm_gem_flink* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device* %25, %struct.drm_file* %26, i32 %29)
  store %struct.drm_gem_object* %30, %struct.drm_gem_object** %9, align 8
  %31 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %32 = icmp eq %struct.drm_gem_object* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %98

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %74, %36
  %38 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 1
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i64 @idr_pre_get(i32* %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %94

46:                                               ; preds = %37
  %47 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %51 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %83, label %54

54:                                               ; preds = %46
  %55 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 1
  %57 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %58 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %59 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %58, i32 0, i32 0
  %60 = call i32 @idr_get_new_above(i32* %56, %struct.drm_gem_object* %57, i32 1, i64* %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %62 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.drm_gem_flink*, %struct.drm_gem_flink** %8, align 8
  %66 = getelementptr inbounds %struct.drm_gem_flink, %struct.drm_gem_flink* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %68 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @EAGAIN, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %54
  br label %37

75:                                               ; preds = %54
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %94

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %82 = call i32 @drm_gem_object_reference(%struct.drm_gem_object* %81)
  br label %93

83:                                               ; preds = %46
  %84 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %85 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = load %struct.drm_gem_flink*, %struct.drm_gem_flink** %8, align 8
  %89 = getelementptr inbounds %struct.drm_gem_flink, %struct.drm_gem_flink* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %91 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock(i32* %91)
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %83, %80
  br label %94

94:                                               ; preds = %93, %78, %43
  %95 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %96 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %94, %33, %21
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i64 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_get_new_above(i32*, %struct.drm_gem_object*, i32, i64*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @drm_gem_object_reference(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
