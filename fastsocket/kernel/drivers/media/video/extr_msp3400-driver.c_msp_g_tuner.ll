; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-driver.c_msp_g_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-driver.c_msp_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i32, i32, i32 }
%struct.msp_state = type { i64, i32, i32, i64 }
%struct.i2c_client = type { i32 }

@OPMODE_AUTOSELECT = common dso_local global i64 0, align 8
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @msp_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_g_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  %6 = alloca %struct.msp_state*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.msp_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.msp_state* %9, %struct.msp_state** %6, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %7, align 8
  %12 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %13 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

17:                                               ; preds = %2
  %18 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %19 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OPMODE_AUTOSELECT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %25 = call i32 @msp_detect_stereo(%struct.i2c_client* %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %28 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %33 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %38 = load i32, i32* @V4L2_TUNER_CAP_LANG1, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @V4L2_TUNER_CAP_LANG2, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %26, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.msp_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @msp_detect_stereo(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
