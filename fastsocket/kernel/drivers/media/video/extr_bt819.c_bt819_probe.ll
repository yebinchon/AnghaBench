; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bt819.c_bt819_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bt819.c_bt819_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.bt819 = type { i32, i32, i32, i64, i64, i64, i32, i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bt819_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"bt819a\00", align 1
@V4L2_IDENT_BT819A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"bt817a\00", align 1
@V4L2_IDENT_BT817A = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"bt815a\00", align 1
@V4L2_IDENT_BT815A = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"unknown chip version 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s found @ 0x%x (%s)\0A\00", align 1
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"init status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bt819_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt819_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bt819*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %15 = call i32 @i2c_check_functionality(%struct.TYPE_2__* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %95

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.bt819* @kzalloc(i32 56, i32 %21)
  store %struct.bt819* %22, %struct.bt819** %8, align 8
  %23 = load %struct.bt819*, %struct.bt819** %8, align 8
  %24 = icmp eq %struct.bt819* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %95

28:                                               ; preds = %20
  %29 = load %struct.bt819*, %struct.bt819** %8, align 8
  %30 = getelementptr inbounds %struct.bt819, %struct.bt819* %29, i32 0, i32 8
  store %struct.v4l2_subdev* %30, %struct.v4l2_subdev** %9, align 8
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %31, %struct.i2c_client* %32, i32* @bt819_ops)
  %34 = load %struct.bt819*, %struct.bt819** %8, align 8
  %35 = call i32 @bt819_read(%struct.bt819* %34, i32 23)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 240
  switch i32 %37, label %50 [
    i32 112, label %38
    i32 96, label %42
    i32 32, label %46
  ]

38:                                               ; preds = %28
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %39 = load i32, i32* @V4L2_IDENT_BT819A, align 4
  %40 = load %struct.bt819*, %struct.bt819** %8, align 8
  %41 = getelementptr inbounds %struct.bt819, %struct.bt819* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 4
  br label %57

42:                                               ; preds = %28
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %43 = load i32, i32* @V4L2_IDENT_BT817A, align 4
  %44 = load %struct.bt819*, %struct.bt819** %8, align 8
  %45 = getelementptr inbounds %struct.bt819, %struct.bt819* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 4
  br label %57

46:                                               ; preds = %28
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  %47 = load i32, i32* @V4L2_IDENT_BT815A, align 4
  %48 = load %struct.bt819*, %struct.bt819** %8, align 8
  %49 = getelementptr inbounds %struct.bt819, %struct.bt819* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  br label %57

50:                                               ; preds = %28
  %51 = load i32, i32* @debug, align 4
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @v4l2_dbg(i32 1, i32 %51, %struct.v4l2_subdev* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %95

57:                                               ; preds = %46, %42, %38
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 %62, 1
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @v4l_info(%struct.i2c_client* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %59, i32 %63, i32 %68)
  %70 = load i32, i32* @V4L2_STD_NTSC, align 4
  %71 = load %struct.bt819*, %struct.bt819** %8, align 8
  %72 = getelementptr inbounds %struct.bt819, %struct.bt819* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load %struct.bt819*, %struct.bt819** %8, align 8
  %74 = getelementptr inbounds %struct.bt819, %struct.bt819* %73, i32 0, i32 5
  store i64 0, i64* %74, align 8
  %75 = load %struct.bt819*, %struct.bt819** %8, align 8
  %76 = getelementptr inbounds %struct.bt819, %struct.bt819* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.bt819*, %struct.bt819** %8, align 8
  %78 = getelementptr inbounds %struct.bt819, %struct.bt819* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load %struct.bt819*, %struct.bt819** %8, align 8
  %80 = getelementptr inbounds %struct.bt819, %struct.bt819* %79, i32 0, i32 1
  store i32 216, i32* %80, align 4
  %81 = load %struct.bt819*, %struct.bt819** %8, align 8
  %82 = getelementptr inbounds %struct.bt819, %struct.bt819* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.bt819*, %struct.bt819** %8, align 8
  %84 = getelementptr inbounds %struct.bt819, %struct.bt819* %83, i32 0, i32 2
  store i32 254, i32* %84, align 8
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %86 = call i32 @bt819_init(%struct.v4l2_subdev* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %57
  %90 = load i32, i32* @debug, align 4
  %91 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @v4l2_dbg(i32 1, i32 %90, %struct.v4l2_subdev* %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %89, %57
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %50, %25, %17
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_2__*, i32) #1

declare dso_local %struct.bt819* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @bt819_read(%struct.bt819*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i8*, i32, i32) #1

declare dso_local i32 @bt819_init(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
