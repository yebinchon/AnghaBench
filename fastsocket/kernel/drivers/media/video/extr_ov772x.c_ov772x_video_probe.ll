; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov772x.c_ov772x_video_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov772x.c_ov772x_video_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ov772x_priv = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@PID = common dso_local global i32 0, align 4
@VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ov7720\00", align 1
@V4L2_IDENT_OV7720 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ov7725\00", align 1
@V4L2_IDENT_OV7725 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Product ID error %x:%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"%s Product ID %0x:%0x Manufacturer ID %x:%x\0A\00", align 1
@MIDH = common dso_local global i32 0, align 4
@MIDL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.i2c_client*)* @ov772x_video_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov772x_video_probe(%struct.soc_camera_device* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.ov772x_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %11 = call %struct.ov772x_priv* @to_ov772x(%struct.i2c_client* %10)
  store %struct.ov772x_priv* %11, %struct.ov772x_priv** %6, align 8
  %12 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %13 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %19 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_4__* @to_soc_camera_host(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %26 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %17, %2
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %71

32:                                               ; preds = %17
  %33 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %34 = load i32, i32* @PID, align 4
  %35 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %37 = load i32, i32* @VER, align 4
  %38 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @VERSION(i32 %39, i32 %40)
  switch i32 %41, label %50 [
    i32 129, label %42
    i32 128, label %46
  ]

42:                                               ; preds = %32
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %43 = load i32, i32* @V4L2_IDENT_OV7720, align 4
  %44 = load %struct.ov772x_priv*, %struct.ov772x_priv** %6, align 8
  %45 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %58

46:                                               ; preds = %32
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %47 = load i32, i32* @V4L2_IDENT_OV7725, align 4
  %48 = load %struct.ov772x_priv*, %struct.ov772x_priv** %6, align 8
  %49 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %58

50:                                               ; preds = %32
  %51 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %71

58:                                               ; preds = %46, %42
  %59 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %65 = load i32, i32* @MIDH, align 4
  %66 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %64, i32 %65)
  %67 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %68 = load i32, i32* @MIDL, align 4
  %69 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %67, i32 %68)
  %70 = call i32 @dev_info(i32* %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %61, i32 %62, i32 %63, i32 %66, i32 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %58, %50, %29
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.ov772x_priv* @to_ov772x(%struct.i2c_client*) #1

declare dso_local %struct.TYPE_4__* @to_soc_camera_host(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @VERSION(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
