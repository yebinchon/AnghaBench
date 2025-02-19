; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-gpio.c_subdev_g_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-gpio.c_subdev_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i32 }
%struct.ivtv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IVTV_REG_GPIO_IN = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @subdev_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subdev_g_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_tuner*, align 8
  %5 = alloca %struct.ivtv*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %4, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.ivtv* @sd_to_ivtv(%struct.v4l2_subdev* %7)
  store %struct.ivtv* %8, %struct.ivtv** %5, align 8
  %9 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %10 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @IVTV_REG_GPIO_IN, align 4
  %19 = call i32 @read_reg(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17, %2
  %24 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %25 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %30 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %35

31:                                               ; preds = %17
  %32 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %33 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %23
  ret i32 0
}

declare dso_local %struct.ivtv* @sd_to_ivtv(%struct.v4l2_subdev*) #1

declare dso_local i32 @read_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
