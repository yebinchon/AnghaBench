; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tw9910.c_tw9910_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tw9910.c_tw9910_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.soc_camera_device* }
%struct.soc_camera_device = type { i32*, i32 }
%struct.i2c_device_id = type { i32 }
%struct.tw9910_priv = type { i32, %struct.tw9910_video_info* }
%struct.tw9910_video_info = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.soc_camera_link = type { i32, %struct.tw9910_video_info* }

@.str = private unnamed_addr constant [34 x i8] c"TW9910: missing soc-camera data!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_BYTE_DATA\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tw9910_subdev_ops = common dso_local global i32 0, align 4
@tw9910_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tw9910_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw9910_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tw9910_priv*, align 8
  %7 = alloca %struct.tw9910_video_info*, align 8
  %8 = alloca %struct.soc_camera_device*, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca %struct.soc_camera_link*, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.soc_camera_device*, %struct.soc_camera_device** %14, align 8
  store %struct.soc_camera_device* %15, %struct.soc_camera_device** %8, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.i2c_adapter* @to_i2c_adapter(i32 %19)
  store %struct.i2c_adapter* %20, %struct.i2c_adapter** %9, align 8
  %21 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %22 = icmp ne %struct.soc_camera_device* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = call i32 @dev_err(%struct.TYPE_2__* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %91

29:                                               ; preds = %2
  %30 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %31 = call %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device* %30)
  store %struct.soc_camera_link* %31, %struct.soc_camera_link** %10, align 8
  %32 = load %struct.soc_camera_link*, %struct.soc_camera_link** %10, align 8
  %33 = icmp ne %struct.soc_camera_link* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.soc_camera_link*, %struct.soc_camera_link** %10, align 8
  %36 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %35, i32 0, i32 1
  %37 = load %struct.tw9910_video_info*, %struct.tw9910_video_info** %36, align 8
  %38 = icmp ne %struct.tw9910_video_info* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %91

42:                                               ; preds = %34
  %43 = load %struct.soc_camera_link*, %struct.soc_camera_link** %10, align 8
  %44 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %43, i32 0, i32 1
  %45 = load %struct.tw9910_video_info*, %struct.tw9910_video_info** %44, align 8
  store %struct.tw9910_video_info* %45, %struct.tw9910_video_info** %7, align 8
  %46 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %47 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %48 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %42
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = call i32 @dev_err(%struct.TYPE_2__* %52, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %91

56:                                               ; preds = %42
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.tw9910_priv* @kzalloc(i32 16, i32 %57)
  store %struct.tw9910_priv* %58, %struct.tw9910_priv** %6, align 8
  %59 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %60 = icmp ne %struct.tw9910_priv* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %91

64:                                               ; preds = %56
  %65 = load %struct.tw9910_video_info*, %struct.tw9910_video_info** %7, align 8
  %66 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %67 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %66, i32 0, i32 1
  store %struct.tw9910_video_info* %65, %struct.tw9910_video_info** %67, align 8
  %68 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %69 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %68, i32 0, i32 0
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = call i32 @v4l2_i2c_subdev_init(i32* %69, %struct.i2c_client* %70, i32* @tw9910_subdev_ops)
  %72 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %73 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %72, i32 0, i32 0
  store i32* @tw9910_ops, i32** %73, align 8
  %74 = load %struct.soc_camera_link*, %struct.soc_camera_link** %10, align 8
  %75 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %78 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = call i32 @tw9910_video_probe(%struct.soc_camera_device* %79, %struct.i2c_client* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %64
  %85 = load %struct.soc_camera_device*, %struct.soc_camera_device** %8, align 8
  %86 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  %87 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %88 = call i32 @kfree(%struct.tw9910_priv* %87)
  br label %89

89:                                               ; preds = %84, %64
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %61, %50, %39, %23
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.i2c_adapter* @to_i2c_adapter(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device*) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.tw9910_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(i32*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @tw9910_video_probe(%struct.soc_camera_device*, %struct.i2c_client*) #1

declare dso_local i32 @kfree(%struct.tw9910_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
