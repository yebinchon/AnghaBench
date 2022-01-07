; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32 }
%struct.v4l2_device = type { i32 }
%struct.cafe_camera = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@I2C_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"funky xfer size %d\0A\00", align 1
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @cafe_smbus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.v4l2_device*, align 8
  %17 = alloca %struct.cafe_camera*, align 8
  %18 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %20 = call %struct.v4l2_device* @i2c_get_adapdata(%struct.i2c_adapter* %19)
  store %struct.v4l2_device* %20, %struct.v4l2_device** %16, align 8
  %21 = load %struct.v4l2_device*, %struct.v4l2_device** %16, align 8
  %22 = call %struct.cafe_camera* @to_cam(%struct.v4l2_device* %21)
  store %struct.cafe_camera* %22, %struct.cafe_camera** %17, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @I2C_SMBUS_BYTE_DATA, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %7
  %29 = load %struct.cafe_camera*, %struct.cafe_camera** %17, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @cam_err(%struct.cafe_camera* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %64

34:                                               ; preds = %7
  %35 = load i8, i8* %12, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.cafe_camera*, %struct.cafe_camera** %17, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %45 = bitcast %union.i2c_smbus_data* %44 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cafe_smbus_write_data(%struct.cafe_camera* %41, i32 %42, i32 %43, i32 %46)
  store i32 %47, i32* %18, align 4
  br label %62

48:                                               ; preds = %34
  %49 = load i8, i8* %12, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @I2C_SMBUS_READ, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.cafe_camera*, %struct.cafe_camera** %17, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %59 = bitcast %union.i2c_smbus_data* %58 to i32*
  %60 = call i32 @cafe_smbus_read_data(%struct.cafe_camera* %55, i32 %56, i32 %57, i32* %59)
  store i32 %60, i32* %18, align 4
  br label %61

61:                                               ; preds = %54, %48
  br label %62

62:                                               ; preds = %61, %40
  %63 = load i32, i32* %18, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %62, %28
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local %struct.v4l2_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local %struct.cafe_camera* @to_cam(%struct.v4l2_device*) #1

declare dso_local i32 @cam_err(%struct.cafe_camera*, i8*, i32) #1

declare dso_local i32 @cafe_smbus_write_data(%struct.cafe_camera*, i32, i32, i32) #1

declare dso_local i32 @cafe_smbus_read_data(%struct.cafe_camera*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
