; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9t031.c_mt9t031_video_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9t031.c_mt9t031_video_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.mt9t031 = type { i32, i32, i32 }
%struct.video_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@MT9T031_CHIP_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"write: %d\0A\00", align 1
@MT9T031_CHIP_VERSION = common dso_local global i32 0, align 4
@V4L2_IDENT_MT9T031 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"No MT9T031 chip detected, register read %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Detected a MT9T031 chip ID %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to initialise the camera\0A\00", align 1
@mt9t031_dev_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mt9t031_video_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t031_video_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.mt9t031*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.mt9t031* @to_mt9t031(%struct.i2c_client* %8)
  store %struct.mt9t031* %9, %struct.mt9t031** %4, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = call %struct.video_device* @soc_camera_i2c_to_vdev(%struct.i2c_client* %10)
  store %struct.video_device* %11, %struct.video_device** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = load i32, i32* @MT9T031_CHIP_ENABLE, align 4
  %14 = call i32 @reg_write(%struct.i2c_client* %12, i32 %13, i32 1)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = load i32, i32* @MT9T031_CHIP_VERSION, align 4
  %21 = call i32 @reg_read(%struct.i2c_client* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %27 [
    i32 5665, label %23
  ]

23:                                               ; preds = %1
  %24 = load i32, i32* @V4L2_IDENT_MT9T031, align 4
  %25 = load %struct.mt9t031*, %struct.mt9t031** %4, align 8
  %26 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  br label %34

27:                                               ; preds = %1
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %57

34:                                               ; preds = %23
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dev_info(i32* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = call i32 @mt9t031_idle(%struct.i2c_client* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = call i32 (i32*, i8*, ...) @dev_err(i32* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %51

47:                                               ; preds = %34
  %48 = load %struct.video_device*, %struct.video_device** %5, align 8
  %49 = getelementptr inbounds %struct.video_device, %struct.video_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32* @mt9t031_dev_type, i32** %50, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.mt9t031*, %struct.mt9t031** %4, align 8
  %53 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %52, i32 0, i32 0
  store i32 255, i32* %53, align 4
  %54 = load %struct.mt9t031*, %struct.mt9t031** %4, align 8
  %55 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %54, i32 0, i32 1
  store i32 64, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %27
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.mt9t031* @to_mt9t031(%struct.i2c_client*) #1

declare dso_local %struct.video_device* @soc_camera_i2c_to_vdev(%struct.i2c_client*) #1

declare dso_local i32 @reg_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @reg_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @mt9t031_idle(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
