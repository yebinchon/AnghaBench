; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tvp5150 = type { i32, i32, i32, i32, i64, i32, i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@I2C_FUNC_SMBUS_READ_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tvp5150_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"chip found @ 0x%02x (%s)\0A\00", align 1
@TVP5150_MSB_DEV_ID = common dso_local global i32 0, align 4
@TVP5150_LSB_DEV_ID = common dso_local global i32 0, align 4
@TVP5150_ROM_MAJOR_VER = common dso_local global i32 0, align 4
@TVP5150_ROM_MINOR_VER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"tvp%02x%02xam1 detected.\0A\00", align 1
@TVP5150_REV_SELECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"tvp%02x%02xa detected.\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"*** unknown tvp%02x%02x chip detected.\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"*** Rom ver is %d.%d\0A\00", align 1
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@TVP5150_COMPOSITE1 = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tvp5150_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tvp5150*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE, align 4
  %16 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE_DATA, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @i2c_check_functionality(%struct.TYPE_2__* %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %117

23:                                               ; preds = %2
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.tvp5150* @kzalloc(i32 40, i32 %24)
  store %struct.tvp5150* %25, %struct.tvp5150** %6, align 8
  %26 = load %struct.tvp5150*, %struct.tvp5150** %6, align 8
  %27 = icmp ne %struct.tvp5150* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %117

31:                                               ; preds = %23
  %32 = load %struct.tvp5150*, %struct.tvp5150** %6, align 8
  %33 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %32, i32 0, i32 7
  store %struct.v4l2_subdev* %33, %struct.v4l2_subdev** %7, align 8
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %34, %struct.i2c_client* %35, i32* @tvp5150_ops)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 %40, 1
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @v4l_info(%struct.i2c_client* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %46)
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %49 = load i32, i32* @TVP5150_MSB_DEV_ID, align 4
  %50 = call i32 @tvp5150_read(%struct.v4l2_subdev* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %52 = load i32, i32* @TVP5150_LSB_DEV_ID, align 4
  %53 = call i32 @tvp5150_read(%struct.v4l2_subdev* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %55 = load i32, i32* @TVP5150_ROM_MAJOR_VER, align 4
  %56 = call i32 @tvp5150_read(%struct.v4l2_subdev* %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %58 = load i32, i32* @TVP5150_ROM_MINOR_VER, align 4
  %59 = call i32 @tvp5150_read(%struct.v4l2_subdev* %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %73

62:                                               ; preds = %31
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @v4l2_info(%struct.v4l2_subdev* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %71 = load i32, i32* @TVP5150_REV_SELECT, align 4
  %72 = call i32 @tvp5150_write(%struct.v4l2_subdev* %70, i32 %71, i32 0)
  br label %94

73:                                               ; preds = %62, %31
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %77, 33
  br i1 %78, label %79, label %84

79:                                               ; preds = %76, %73
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @v4l2_info(%struct.v4l2_subdev* %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82)
  br label %93

84:                                               ; preds = %76
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @v4l2_info(%struct.v4l2_subdev* %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @v4l2_info(%struct.v4l2_subdev* %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %84, %79
  br label %94

94:                                               ; preds = %93, %65
  %95 = load i32, i32* @V4L2_STD_ALL, align 4
  %96 = load %struct.tvp5150*, %struct.tvp5150** %6, align 8
  %97 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @TVP5150_COMPOSITE1, align 4
  %99 = load %struct.tvp5150*, %struct.tvp5150** %6, align 8
  %100 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  %101 = load %struct.tvp5150*, %struct.tvp5150** %6, align 8
  %102 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load %struct.tvp5150*, %struct.tvp5150** %6, align 8
  %104 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %103, i32 0, i32 1
  store i32 128, i32* %104, align 4
  %105 = load %struct.tvp5150*, %struct.tvp5150** %6, align 8
  %106 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %105, i32 0, i32 2
  store i32 128, i32* %106, align 8
  %107 = load %struct.tvp5150*, %struct.tvp5150** %6, align 8
  %108 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %107, i32 0, i32 4
  store i64 0, i64* %108, align 8
  %109 = load %struct.tvp5150*, %struct.tvp5150** %6, align 8
  %110 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %109, i32 0, i32 3
  store i32 128, i32* %110, align 4
  %111 = load i32, i32* @debug, align 4
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %113, label %116

113:                                              ; preds = %94
  %114 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %115 = call i32 @tvp5150_log_status(%struct.v4l2_subdev* %114)
  br label %116

116:                                              ; preds = %113, %94
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %28, %20
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_2__*, i32) #1

declare dso_local %struct.tvp5150* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local i32 @tvp5150_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i32, i32) #1

declare dso_local i32 @tvp5150_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @tvp5150_log_status(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
