; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9t031.c_mt9t031_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9t031.c_mt9t031_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.soc_camera_device* }
%struct.soc_camera_device = type { i32* }
%struct.i2c_device_id = type { i32 }
%struct.mt9t031 = type { i32, i32, i32, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.i2c_adapter = type { i32 }
%struct.soc_camera_link = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"MT9T031 driver needs platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mt9t031_ops = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mt9t031_subdev_ops = common dso_local global i32 0, align 4
@MT9T031_COLUMN_SKIP = common dso_local global i32 0, align 4
@MT9T031_ROW_SKIP = common dso_local global i32 0, align 4
@MT9T031_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9T031_MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mt9t031_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t031_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mt9t031*, align 8
  %7 = alloca %struct.soc_camera_device*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.soc_camera_link*, align 8
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
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %24 = call %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device* %23)
  store %struct.soc_camera_link* %24, %struct.soc_camera_link** %10, align 8
  %25 = load %struct.soc_camera_link*, %struct.soc_camera_link** %10, align 8
  %26 = icmp ne %struct.soc_camera_link* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = call i32 @dev_err(%struct.TYPE_4__* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %103

33:                                               ; preds = %22
  %34 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %35 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %34, i32 0, i32 0
  store i32* @mt9t031_ops, i32** %35, align 8
  br label %36

36:                                               ; preds = %33, %2
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %38 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %39 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %43 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %42, i32 0, i32 0
  %44 = call i32 @dev_warn(i32* %43, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %103

47:                                               ; preds = %36
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.mt9t031* @kzalloc(i32 48, i32 %48)
  store %struct.mt9t031* %49, %struct.mt9t031** %6, align 8
  %50 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %51 = icmp ne %struct.mt9t031* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %103

55:                                               ; preds = %47
  %56 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %57 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %56, i32 0, i32 5
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = call i32 @v4l2_i2c_subdev_init(i32* %57, %struct.i2c_client* %58, i32* @mt9t031_subdev_ops)
  %60 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %61 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @MT9T031_COLUMN_SKIP, align 4
  %63 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %64 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @MT9T031_ROW_SKIP, align 4
  %67 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %68 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @MT9T031_MAX_WIDTH, align 4
  %71 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %72 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @MT9T031_MAX_HEIGHT, align 4
  %75 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %76 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %79 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %81 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %83 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %82, i32 0, i32 2
  store i32 1, i32* %83, align 8
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = call i32 @mt9t031_idle(%struct.i2c_client* %84)
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = call i32 @mt9t031_video_probe(%struct.i2c_client* %86)
  store i32 %87, i32* %9, align 4
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = call i32 @mt9t031_disable(%struct.i2c_client* %88)
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %55
  %93 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %94 = icmp ne %struct.soc_camera_device* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %97 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %96, i32 0, i32 0
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %100 = call i32 @kfree(%struct.mt9t031* %99)
  br label %101

101:                                              ; preds = %98, %55
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %52, %41, %27
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.i2c_adapter* @to_i2c_adapter(i32) #1

declare dso_local %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.mt9t031* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(i32*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @mt9t031_idle(%struct.i2c_client*) #1

declare dso_local i32 @mt9t031_video_probe(%struct.i2c_client*) #1

declare dso_local i32 @mt9t031_disable(%struct.i2c_client*) #1

declare dso_local i32 @kfree(%struct.mt9t031*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
