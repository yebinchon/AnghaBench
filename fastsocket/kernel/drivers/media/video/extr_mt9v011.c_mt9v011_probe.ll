; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v011.c_mt9v011_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v011.c_mt9v011_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.mt9v011 = type { i32, i32, i32, i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@I2C_FUNC_SMBUS_READ_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mt9v011_ops = common dso_local global i32 0, align 4
@R00_MT9V011_CHIP_VERSION = common dso_local global i32 0, align 4
@MT9V011_VERSION = common dso_local global i64 0, align 8
@MT9V011_REV_B_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"*** unknown micron chip detected (0x%04x).\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"chip found @ 0x%02x (%s - chip version 0x%04x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mt9v011_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v011_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mt9v011*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE, align 4
  %13 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE_DATA, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @i2c_check_functionality(%struct.TYPE_2__* %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %73

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mt9v011* @kzalloc(i32 20, i32 %21)
  store %struct.mt9v011* %22, %struct.mt9v011** %7, align 8
  %23 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %24 = icmp ne %struct.mt9v011* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %73

28:                                               ; preds = %20
  %29 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %30 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %29, i32 0, i32 4
  store %struct.v4l2_subdev* %30, %struct.v4l2_subdev** %8, align 8
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %31, %struct.i2c_client* %32, i32* @mt9v011_ops)
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %35 = load i32, i32* @R00_MT9V011_CHIP_VERSION, align 4
  %36 = call i64 @mt9v011_read(%struct.v4l2_subdev* %34, i32 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @MT9V011_VERSION, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %28
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @MT9V011_REV_B_VERSION, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @v4l2_info(%struct.v4l2_subdev* %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %49 = call i32 @kfree(%struct.mt9v011* %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %73

52:                                               ; preds = %40, %28
  %53 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %54 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %53, i32 0, i32 0
  store i32 36, i32* %54, align 4
  %55 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %56 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %55, i32 0, i32 1
  store i32 640, i32* %56, align 4
  %57 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %58 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %57, i32 0, i32 2
  store i32 480, i32* %58, align 4
  %59 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %60 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %59, i32 0, i32 3
  store i32 27000000, i32* %60, align 4
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = shl i32 %64, 1
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @v4l_info(%struct.i2c_client* %61, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %70, i64 %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %52, %44, %25, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_2__*, i32) #1

declare dso_local %struct.mt9v011* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i64 @mt9v011_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i64) #1

declare dso_local i32 @kfree(%struct.mt9v011*) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
