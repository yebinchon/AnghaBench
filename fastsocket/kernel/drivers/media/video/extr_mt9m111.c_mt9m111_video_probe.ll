; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_video_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_video_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.mt9m111 = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@CHIP_VERSION = common dso_local global i32 0, align 4
@V4L2_IDENT_MT9M111 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Detected a MT9M111/MT9M131 chip ID %x\0A\00", align 1
@V4L2_IDENT_MT9M112 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Detected a MT9M112 chip ID %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"No MT9M111/MT9M112/MT9M131 chip detected register read %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.i2c_client*)* @mt9m111_video_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_video_probe(%struct.soc_camera_device* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.mt9m111*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %10 = call %struct.mt9m111* @to_mt9m111(%struct.i2c_client* %9)
  store %struct.mt9m111* %10, %struct.mt9m111** %6, align 8
  %11 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %12 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %18 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_4__* @to_soc_camera_host(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %25 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %16, %2
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %71

31:                                               ; preds = %16
  %32 = load %struct.mt9m111*, %struct.mt9m111** %6, align 8
  %33 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.mt9m111*, %struct.mt9m111** %6, align 8
  %35 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.mt9m111*, %struct.mt9m111** %6, align 8
  %37 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %36, i32 0, i32 2
  store i32 1, i32* %37, align 4
  %38 = load %struct.mt9m111*, %struct.mt9m111** %6, align 8
  %39 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %38, i32 0, i32 3
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* @CHIP_VERSION, align 4
  %41 = call i32 @reg_read(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  switch i32 %42, label %59 [
    i32 5178, label %43
    i32 5260, label %51
  ]

43:                                               ; preds = %31
  %44 = load i32, i32* @V4L2_IDENT_MT9M111, align 4
  %45 = load %struct.mt9m111*, %struct.mt9m111** %6, align 8
  %46 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @dev_info(i32* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %66

51:                                               ; preds = %31
  %52 = load i32, i32* @V4L2_IDENT_MT9M112, align 4
  %53 = load %struct.mt9m111*, %struct.mt9m111** %6, align 8
  %54 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @dev_info(i32* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %66

59:                                               ; preds = %31
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %69

66:                                               ; preds = %51, %43
  %67 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %68 = call i32 @mt9m111_init(%struct.i2c_client* %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %28
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.mt9m111* @to_mt9m111(%struct.i2c_client*) #1

declare dso_local %struct.TYPE_4__* @to_soc_camera_host(i32) #1

declare dso_local i32 @reg_read(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mt9m111_init(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
