; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bt856.c_bt856_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bt856.c_bt856_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.bt856 = type { i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"chip found @ 0x%x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bt856_ops = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bt856_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt856_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.bt856*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %12 = call i32 @i2c_check_functionality(%struct.TYPE_2__* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %80

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 %21, 1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @v4l_info(%struct.i2c_client* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27)
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.bt856* @kzalloc(i32 8, i32 %29)
  store %struct.bt856* %30, %struct.bt856** %6, align 8
  %31 = load %struct.bt856*, %struct.bt856** %6, align 8
  %32 = icmp eq %struct.bt856* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %80

36:                                               ; preds = %17
  %37 = load %struct.bt856*, %struct.bt856** %6, align 8
  %38 = getelementptr inbounds %struct.bt856, %struct.bt856* %37, i32 0, i32 1
  store %struct.v4l2_subdev* %38, %struct.v4l2_subdev** %7, align 8
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %39, %struct.i2c_client* %40, i32* @bt856_ops)
  %42 = load i32, i32* @V4L2_STD_NTSC, align 4
  %43 = load %struct.bt856*, %struct.bt856** %6, align 8
  %44 = getelementptr inbounds %struct.bt856, %struct.bt856* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.bt856*, %struct.bt856** %6, align 8
  %46 = call i32 @bt856_write(%struct.bt856* %45, i32 220, i32 24)
  %47 = load %struct.bt856*, %struct.bt856** %6, align 8
  %48 = call i32 @bt856_write(%struct.bt856* %47, i32 218, i32 0)
  %49 = load %struct.bt856*, %struct.bt856** %6, align 8
  %50 = call i32 @bt856_write(%struct.bt856* %49, i32 222, i32 0)
  %51 = load %struct.bt856*, %struct.bt856** %6, align 8
  %52 = call i32 @bt856_setbit(%struct.bt856* %51, i32 220, i32 3, i32 1)
  %53 = load %struct.bt856*, %struct.bt856** %6, align 8
  %54 = call i32 @bt856_setbit(%struct.bt856* %53, i32 220, i32 4, i32 1)
  %55 = load %struct.bt856*, %struct.bt856** %6, align 8
  %56 = getelementptr inbounds %struct.bt856, %struct.bt856* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @V4L2_STD_NTSC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %36
  %62 = load %struct.bt856*, %struct.bt856** %6, align 8
  %63 = call i32 @bt856_setbit(%struct.bt856* %62, i32 220, i32 2, i32 0)
  br label %67

64:                                               ; preds = %36
  %65 = load %struct.bt856*, %struct.bt856** %6, align 8
  %66 = call i32 @bt856_setbit(%struct.bt856* %65, i32 220, i32 2, i32 1)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.bt856*, %struct.bt856** %6, align 8
  %69 = call i32 @bt856_setbit(%struct.bt856* %68, i32 220, i32 1, i32 1)
  %70 = load %struct.bt856*, %struct.bt856** %6, align 8
  %71 = call i32 @bt856_setbit(%struct.bt856* %70, i32 222, i32 4, i32 0)
  %72 = load %struct.bt856*, %struct.bt856** %6, align 8
  %73 = call i32 @bt856_setbit(%struct.bt856* %72, i32 222, i32 3, i32 1)
  %74 = load i64, i64* @debug, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.bt856*, %struct.bt856** %6, align 8
  %78 = call i32 @bt856_dump(%struct.bt856* %77)
  br label %79

79:                                               ; preds = %76, %67
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %33, %14
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.bt856* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @bt856_write(%struct.bt856*, i32, i32) #1

declare dso_local i32 @bt856_setbit(%struct.bt856*, i32, i32, i32) #1

declare dso_local i32 @bt856_dump(%struct.bt856*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
