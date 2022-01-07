; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_dm355evm_msp.c_dm355evm_msp_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_dm355evm_msp.c_dm355evm_msp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"TVP5146\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"imager\00", align 1
@msp430 = common dso_local global %struct.i2c_client* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@DM355EVM_MSP_FIRMREV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"firmware v.%02X, %s as video-in\0A\00", align 1
@MSP_VIDEO_IMAGER = common dso_local global i32 0, align 4
@DM355EVM_MSP_VIDEO_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"error %d muxing %s as video-in\0A\00", align 1
@msp_led_cache = common dso_local global i32 0, align 4
@DM355EVM_MSP_LED = common dso_local global i32 0, align 4
@dm355evm_power_off = common dso_local global i32 0, align 4
@pm_power_off = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @dm355evm_msp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm355evm_msp_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = call i64 (...) @msp_has_tvp()
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %11, i8** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** @msp430, align 8
  %13 = icmp ne %struct.i2c_client* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %62

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** @msp430, align 8
  %19 = load i32, i32* @DM355EVM_MSP_FIRMREV, align 4
  %20 = call i32 @dm355evm_msp_read(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %58

24:                                               ; preds = %17
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %6, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @dev_info(i32* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %27, i8* %28)
  %30 = call i64 (...) @msp_has_tvp()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @MSP_VIDEO_IMAGER, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ 0, %32 ], [ %34, %33 ]
  %37 = load i32, i32* @DM355EVM_MSP_VIDEO_IN, align 4
  %38 = call i32 @dm355evm_msp_write(i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load i32, i32* %6, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @dev_warn(i32* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %44, i8* %45)
  br label %47

47:                                               ; preds = %41, %35
  store i32 255, i32* @msp_led_cache, align 4
  %48 = load i32, i32* @msp_led_cache, align 4
  %49 = load i32, i32* @DM355EVM_MSP_LED, align 4
  %50 = call i32 @dm355evm_msp_write(i32 %48, i32 %49)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = call i32 @add_children(%struct.i2c_client* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @dm355evm_power_off, align 4
  store i32 %57, i32* @pm_power_off, align 4
  store i32 0, i32* %3, align 4
  br label %62

58:                                               ; preds = %55, %23
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = call i32 @dm355evm_msp_remove(%struct.i2c_client* %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %56, %14
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @msp_has_tvp(...) #1

declare dso_local i32 @dm355evm_msp_read(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*) #1

declare dso_local i32 @dm355evm_msp_write(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i8*) #1

declare dso_local i32 @add_children(%struct.i2c_client*) #1

declare dso_local i32 @dm355evm_msp_remove(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
