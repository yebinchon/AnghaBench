; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_control = type { i32 }
%struct.vino_channel_settings = type { i32 }

@vino_drvdata = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@VINO_INDYCAM_V4L2_CONTROL_COUNT = common dso_local global i32 0, align 4
@vino_indycam_v4l2_controls = common dso_local global %struct.TYPE_5__* null, align 8
@core = common dso_local global i32 0, align 4
@g_ctrl = common dso_local global i32 0, align 4
@VINO_SAA7191_V4L2_CONTROL_COUNT = common dso_local global i32 0, align 4
@vino_saa7191_v4l2_controls = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vino_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_g_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_control*, align 8
  %7 = alloca %struct.vino_channel_settings*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.vino_channel_settings* @video_drvdata(%struct.file* %11)
  store %struct.vino_channel_settings* %12, %struct.vino_channel_settings** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vino_drvdata, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %18 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %96 [
    i32 129, label %20
    i32 130, label %58
    i32 128, label %58
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %40, %20
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @VINO_INDYCAM_V4L2_CONTROL_COUNT, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vino_indycam_v4l2_controls, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %43

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %23

43:                                               ; preds = %38, %23
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %100

47:                                               ; preds = %43
  %48 = load i32, i32* @core, align 4
  %49 = load i32, i32* @g_ctrl, align 4
  %50 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %51 = call i32 @camera_call(i32 %48, i32 %49, %struct.v4l2_control* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %54, %47
  br label %99

58:                                               ; preds = %3, %3
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %78, %58
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @VINO_SAA7191_V4L2_CONTROL_COUNT, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %61
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vino_saa7191_v4l2_controls, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %73 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  store i32 0, i32* %10, align 4
  br label %81

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %61

81:                                               ; preds = %76, %61
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %100

85:                                               ; preds = %81
  %86 = load i32, i32* @core, align 4
  %87 = load i32, i32* @g_ctrl, align 4
  %88 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %89 = call i32 @decoder_call(i32 %86, i32 %87, %struct.v4l2_control* %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %92, %85
  br label %99

96:                                               ; preds = %3
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %96, %95, %57
  br label %100

100:                                              ; preds = %99, %84, %46
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vino_drvdata, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load i32, i32* %10, align 4
  ret i32 %105
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @camera_call(i32, i32, %struct.v4l2_control*) #1

declare dso_local i32 @decoder_call(i32, i32, %struct.v4l2_control*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
