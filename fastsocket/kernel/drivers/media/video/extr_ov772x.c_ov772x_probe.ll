; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov772x.c_ov772x_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov772x.c_ov772x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.soc_camera_device* }
%struct.soc_camera_device = type { i32* }
%struct.i2c_device_id = type { i32 }
%struct.ov772x_priv = type { i32, i32 }
%struct.i2c_adapter = type { %struct.TYPE_2__ }
%struct.soc_camera_link = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"OV772X: missing soc-camera data!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_BYTE_DATA\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ov772x_subdev_ops = common dso_local global i32 0, align 4
@ov772x_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ov772x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov772x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ov772x_priv*, align 8
  %7 = alloca %struct.soc_camera_device*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca %struct.soc_camera_link*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.soc_camera_device*, %struct.soc_camera_device** %13, align 8
  store %struct.soc_camera_device* %14, %struct.soc_camera_device** %7, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.i2c_adapter* @to_i2c_adapter(i32 %18)
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %8, align 8
  %20 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %21 = icmp ne %struct.soc_camera_device* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = call i32 @dev_err(%struct.TYPE_2__* %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %84

28:                                               ; preds = %2
  %29 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %30 = call %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device* %29)
  store %struct.soc_camera_link* %30, %struct.soc_camera_link** %9, align 8
  %31 = load %struct.soc_camera_link*, %struct.soc_camera_link** %9, align 8
  %32 = icmp ne %struct.soc_camera_link* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.soc_camera_link*, %struct.soc_camera_link** %9, align 8
  %35 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %84

41:                                               ; preds = %33
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %43 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %44 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %48 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %47, i32 0, i32 0
  %49 = call i32 @dev_err(%struct.TYPE_2__* %48, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %84

52:                                               ; preds = %41
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.ov772x_priv* @kzalloc(i32 8, i32 %53)
  store %struct.ov772x_priv* %54, %struct.ov772x_priv** %6, align 8
  %55 = load %struct.ov772x_priv*, %struct.ov772x_priv** %6, align 8
  %56 = icmp ne %struct.ov772x_priv* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %84

60:                                               ; preds = %52
  %61 = load %struct.soc_camera_link*, %struct.soc_camera_link** %9, align 8
  %62 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ov772x_priv*, %struct.ov772x_priv** %6, align 8
  %65 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ov772x_priv*, %struct.ov772x_priv** %6, align 8
  %67 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %66, i32 0, i32 0
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = call i32 @v4l2_i2c_subdev_init(i32* %67, %struct.i2c_client* %68, i32* @ov772x_subdev_ops)
  %70 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %71 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %70, i32 0, i32 0
  store i32* @ov772x_ops, i32** %71, align 8
  %72 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = call i32 @ov772x_video_probe(%struct.soc_camera_device* %72, %struct.i2c_client* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %60
  %78 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %79 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %78, i32 0, i32 0
  store i32* null, i32** %79, align 8
  %80 = load %struct.ov772x_priv*, %struct.ov772x_priv** %6, align 8
  %81 = call i32 @kfree(%struct.ov772x_priv* %80)
  br label %82

82:                                               ; preds = %77, %60
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %57, %46, %38, %22
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.i2c_adapter* @to_i2c_adapter(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device*) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.ov772x_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(i32*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @ov772x_video_probe(%struct.soc_camera_device*, %struct.i2c_client*) #1

declare dso_local i32 @kfree(%struct.ov772x_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
