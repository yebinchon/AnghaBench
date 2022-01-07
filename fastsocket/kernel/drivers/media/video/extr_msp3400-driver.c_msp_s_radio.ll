; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-driver.c_msp_s_radio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-driver.c_msp_s_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.msp_state = type { i32, i32, i64 }
%struct.i2c_client = type { i32 }

@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"switching to radio mode\0A\00", align 1
@MSP_MODE_FM_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @msp_s_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_s_radio(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.msp_state*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.msp_state* @to_state(%struct.v4l2_subdev* %6)
  store %struct.msp_state* %7, %struct.msp_state** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %5, align 8
  %10 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %11 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %17 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i32, i32* @msp_debug, align 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %20 = call i32 @v4l_dbg(i32 1, i32 %18, %struct.i2c_client* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %22 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %24 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %39 [
    i32 128, label %26
    i32 130, label %36
    i32 129, label %36
  ]

26:                                               ; preds = %15
  %27 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %28 = load i32, i32* @MSP_MODE_FM_RADIO, align 4
  %29 = call i32 @msp3400c_set_mode(%struct.i2c_client* %27, i32 %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %31 = call i32 @MSP_CARRIER(double 1.070000e+01)
  %32 = call i32 @MSP_CARRIER(double 1.070000e+01)
  %33 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %30, i32 %31, i32 %32)
  %34 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %35 = call i32 @msp_update_volume(%struct.msp_state* %34)
  br label %39

36:                                               ; preds = %15, %15
  %37 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %38 = call i32 @msp_wake_thread(%struct.i2c_client* %37)
  br label %39

39:                                               ; preds = %15, %36, %26
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %14
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.msp_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*) #1

declare dso_local i32 @msp3400c_set_mode(%struct.i2c_client*, i32) #1

declare dso_local i32 @msp3400c_set_carrier(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @MSP_CARRIER(double) #1

declare dso_local i32 @msp_update_volume(%struct.msp_state*) #1

declare dso_local i32 @msp_wake_thread(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
