; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_adv7343.c_adv7343_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_adv7343.c_adv7343_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.adv7343_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"chip found @ 0x%x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ADV7343_SD_MODE_REG1_DEFAULT = common dso_local global i32 0, align 4
@ADV7343_SD_MODE_REG2_DEFAULT = common dso_local global i32 0, align 4
@ADV7343_COMPOSITE_ID = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@adv7343_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adv7343_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7343_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.adv7343_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %11 = call i32 @i2c_check_functionality(%struct.TYPE_2__* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %63

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %20, 1
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @v4l_info(%struct.i2c_client* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %26)
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.adv7343_state* @kzalloc(i32 36, i32 %28)
  store %struct.adv7343_state* %29, %struct.adv7343_state** %6, align 8
  %30 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %31 = icmp eq %struct.adv7343_state* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %16
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %63

35:                                               ; preds = %16
  %36 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %37 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %36, i32 0, i32 0
  store i32 128, i32* %37, align 4
  %38 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %39 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %41 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %40, i32 0, i32 2
  store i32 32, i32* %41, align 4
  %42 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %43 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %42, i32 0, i32 3
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* @ADV7343_SD_MODE_REG1_DEFAULT, align 4
  %45 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %46 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @ADV7343_SD_MODE_REG2_DEFAULT, align 4
  %48 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %49 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @ADV7343_COMPOSITE_ID, align 4
  %51 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %52 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @V4L2_STD_NTSC, align 4
  %54 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %55 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %57 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %56, i32 0, i32 4
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = call i32 @v4l2_i2c_subdev_init(i32* %57, %struct.i2c_client* %58, i32* @adv7343_ops)
  %60 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %61 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %60, i32 0, i32 4
  %62 = call i32 @adv7343_initialize(i32* %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %35, %32, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.adv7343_state* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(i32*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @adv7343_initialize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
