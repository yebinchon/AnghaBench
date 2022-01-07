; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_tuner_s_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_tuner_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tuner = type { i32 }
%struct.i2c_client = type { i32 }

@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @tuner_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_s_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tuner*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.tuner* @to_tuner(%struct.v4l2_subdev* %8)
  store %struct.tuner* %9, %struct.tuner** %6, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %13 = load %struct.tuner*, %struct.tuner** %6, align 8
  %14 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  %15 = call i32 @set_mode_freq(%struct.i2c_client* %12, %struct.tuner* %13, i32 %14, i32 0)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.tuner*, %struct.tuner** %6, align 8
  %23 = getelementptr inbounds %struct.tuner, %struct.tuner* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.tuner*, %struct.tuner** %6, align 8
  %25 = call i32 @tuner_fixup_std(%struct.tuner* %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %19
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.tuner* @to_tuner(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @set_mode_freq(%struct.i2c_client*, %struct.tuner*, i32, i32) #1

declare dso_local i32 @tuner_fixup_std(%struct.tuner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
