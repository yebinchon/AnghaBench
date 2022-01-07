; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_device_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_int_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.omap24xxcam_device* }
%struct.omap24xxcam_device = type { i32, %struct.video_device*, %struct.v4l2_int_device* }
%struct.video_device = type { i32, i32*, i32*, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@dev_attr_streaming = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not register sysfs entry\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"could not allocate video device struct\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@video_device_release = common dso_local global i32 0, align 4
@CAM_NAME = common dso_local global i32 0, align 4
@omap24xxcam_fops = common dso_local global i32 0, align 4
@omap24xxcam_ioctl_fops = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@video_nr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"could not register V4L device\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"registered device video%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_int_device*)* @omap24xxcam_device_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap24xxcam_device_register(%struct.v4l2_int_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_int_device*, align 8
  %4 = alloca %struct.omap24xxcam_device*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_int_device* %0, %struct.v4l2_int_device** %3, align 8
  %7 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %3, align 8
  %8 = getelementptr inbounds %struct.v4l2_int_device, %struct.v4l2_int_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %13, align 8
  store %struct.omap24xxcam_device* %14, %struct.omap24xxcam_device** %4, align 8
  %15 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %16 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %15, i32 0, i32 2
  %17 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %16, align 8
  %18 = icmp ne %struct.v4l2_int_device* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %107

22:                                               ; preds = %1
  %23 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %3, align 8
  %24 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %25 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %24, i32 0, i32 2
  store %struct.v4l2_int_device* %23, %struct.v4l2_int_device** %25, align 8
  %26 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %27 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @device_create_file(i32 %28, i32* @dev_attr_streaming)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %33 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %103

38:                                               ; preds = %22
  %39 = call %struct.video_device* (...) @video_device_alloc()
  %40 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %41 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %40, i32 0, i32 1
  store %struct.video_device* %39, %struct.video_device** %41, align 8
  store %struct.video_device* %39, %struct.video_device** %5, align 8
  %42 = load %struct.video_device*, %struct.video_device** %5, align 8
  %43 = icmp ne %struct.video_device* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %46 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %103

51:                                               ; preds = %38
  %52 = load i32, i32* @video_device_release, align 4
  %53 = load %struct.video_device*, %struct.video_device** %5, align 8
  %54 = getelementptr inbounds %struct.video_device, %struct.video_device* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %56 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.video_device*, %struct.video_device** %5, align 8
  %59 = getelementptr inbounds %struct.video_device, %struct.video_device* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.video_device*, %struct.video_device** %5, align 8
  %61 = getelementptr inbounds %struct.video_device, %struct.video_device* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CAM_NAME, align 4
  %64 = call i32 @strlcpy(i32 %62, i32 %63, i32 4)
  %65 = load %struct.video_device*, %struct.video_device** %5, align 8
  %66 = getelementptr inbounds %struct.video_device, %struct.video_device* %65, i32 0, i32 2
  store i32* @omap24xxcam_fops, i32** %66, align 8
  %67 = load %struct.video_device*, %struct.video_device** %5, align 8
  %68 = getelementptr inbounds %struct.video_device, %struct.video_device* %67, i32 0, i32 0
  store i32 -1, i32* %68, align 8
  %69 = load %struct.video_device*, %struct.video_device** %5, align 8
  %70 = getelementptr inbounds %struct.video_device, %struct.video_device* %69, i32 0, i32 1
  store i32* @omap24xxcam_ioctl_fops, i32** %70, align 8
  %71 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %72 = call i32 @omap24xxcam_hwinit(%struct.omap24xxcam_device* %71)
  %73 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %74 = call i32 @omap24xxcam_sensor_init(%struct.omap24xxcam_device* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %51
  br label %103

78:                                               ; preds = %51
  %79 = load %struct.video_device*, %struct.video_device** %5, align 8
  %80 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %81 = load i32, i32* @video_nr, align 4
  %82 = call i64 @video_register_device(%struct.video_device* %79, i32 %80, i32 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %86 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.video_device*, %struct.video_device** %5, align 8
  %90 = getelementptr inbounds %struct.video_device, %struct.video_device* %89, i32 0, i32 0
  store i32 -1, i32* %90, align 8
  %91 = load i32, i32* @EBUSY, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %103

93:                                               ; preds = %78
  %94 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %95 = call i32 @omap24xxcam_poweron_reset(%struct.omap24xxcam_device* %94)
  %96 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %97 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.video_device*, %struct.video_device** %5, align 8
  %100 = getelementptr inbounds %struct.video_device, %struct.video_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @dev_info(i32 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  store i32 0, i32* %2, align 4
  br label %107

103:                                              ; preds = %84, %77, %44, %31
  %104 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %3, align 8
  %105 = call i32 @omap24xxcam_device_unregister(%struct.v4l2_int_device* %104)
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %103, %93, %19
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i64 @device_create_file(i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.video_device* @video_device_alloc(...) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @omap24xxcam_hwinit(%struct.omap24xxcam_device*) #1

declare dso_local i32 @omap24xxcam_sensor_init(%struct.omap24xxcam_device*) #1

declare dso_local i64 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @omap24xxcam_poweron_reset(%struct.omap24xxcam_device*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @omap24xxcam_device_unregister(%struct.v4l2_int_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
