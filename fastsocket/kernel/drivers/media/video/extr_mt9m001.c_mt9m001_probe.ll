; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m001.c_mt9m001_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m001.c_mt9m001_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.soc_camera_device* }
%struct.soc_camera_device = type { i32* }
%struct.i2c_device_id = type { i32 }
%struct.mt9m001 = type { i32, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.i2c_adapter = type { i32 }
%struct.soc_camera_link = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"MT9M001: missing soc-camera data!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"MT9M001 driver needs platform data\0A\00", align 1
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mt9m001_subdev_ops = common dso_local global i32 0, align 4
@mt9m001_ops = common dso_local global i32 0, align 4
@MT9M001_COLUMN_SKIP = common dso_local global i32 0, align 4
@MT9M001_ROW_SKIP = common dso_local global i32 0, align 4
@MT9M001_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9M001_MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mt9m001_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m001_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mt9m001*, align 8
  %7 = alloca %struct.soc_camera_device*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca %struct.soc_camera_link*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.soc_camera_device*, %struct.soc_camera_device** %13, align 8
  store %struct.soc_camera_device* %14, %struct.soc_camera_device** %7, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.i2c_adapter* @to_i2c_adapter(i32 %18)
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %8, align 8
  %20 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %21 = icmp ne %struct.soc_camera_device* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = call i32 @dev_err(%struct.TYPE_4__* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %97

28:                                               ; preds = %2
  %29 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %30 = call %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device* %29)
  store %struct.soc_camera_link* %30, %struct.soc_camera_link** %9, align 8
  %31 = load %struct.soc_camera_link*, %struct.soc_camera_link** %9, align 8
  %32 = icmp ne %struct.soc_camera_link* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call i32 @dev_err(%struct.TYPE_4__* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %97

39:                                               ; preds = %28
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %41 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %42 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %46 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %45, i32 0, i32 0
  %47 = call i32 @dev_warn(i32* %46, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %97

50:                                               ; preds = %39
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.mt9m001* @kzalloc(i32 40, i32 %51)
  store %struct.mt9m001* %52, %struct.mt9m001** %6, align 8
  %53 = load %struct.mt9m001*, %struct.mt9m001** %6, align 8
  %54 = icmp ne %struct.mt9m001* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %97

58:                                               ; preds = %50
  %59 = load %struct.mt9m001*, %struct.mt9m001** %6, align 8
  %60 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %59, i32 0, i32 3
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = call i32 @v4l2_i2c_subdev_init(i32* %60, %struct.i2c_client* %61, i32* @mt9m001_subdev_ops)
  %63 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %64 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %63, i32 0, i32 0
  store i32* @mt9m001_ops, i32** %64, align 8
  %65 = load %struct.mt9m001*, %struct.mt9m001** %6, align 8
  %66 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @MT9M001_COLUMN_SKIP, align 4
  %68 = load %struct.mt9m001*, %struct.mt9m001** %6, align 8
  %69 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @MT9M001_ROW_SKIP, align 4
  %72 = load %struct.mt9m001*, %struct.mt9m001** %6, align 8
  %73 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @MT9M001_MAX_WIDTH, align 4
  %76 = load %struct.mt9m001*, %struct.mt9m001** %6, align 8
  %77 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @MT9M001_MAX_HEIGHT, align 4
  %80 = load %struct.mt9m001*, %struct.mt9m001** %6, align 8
  %81 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = load %struct.mt9m001*, %struct.mt9m001** %6, align 8
  %84 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = call i32 @mt9m001_video_probe(%struct.soc_camera_device* %85, %struct.i2c_client* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %58
  %91 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %92 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  %93 = load %struct.mt9m001*, %struct.mt9m001** %6, align 8
  %94 = call i32 @kfree(%struct.mt9m001* %93)
  br label %95

95:                                               ; preds = %90, %58
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %55, %44, %33, %22
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.i2c_adapter* @to_i2c_adapter(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device*) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.mt9m001* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(i32*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @mt9m001_video_probe(%struct.soc_camera_device*, %struct.i2c_client*) #1

declare dso_local i32 @kfree(%struct.mt9m001*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
