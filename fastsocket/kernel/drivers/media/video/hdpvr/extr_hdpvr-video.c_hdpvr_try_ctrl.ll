; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_hdpvr_try_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_hdpvr_try_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ext_control = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_AAC = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_AC3 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_VBR = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG2_TS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ext_control*, i32)* @hdpvr_try_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdpvr_try_ctrl(%struct.v4l2_ext_control* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_ext_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_ext_control* %0, %struct.v4l2_ext_control** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %85 [
    i32 133, label %14
    i32 128, label %31
    i32 130, label %39
    i32 131, label %53
    i32 129, label %65
    i32 132, label %77
  ]

14:                                               ; preds = %2
  %15 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AAC, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %25 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AC3, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %14
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %23, %20
  br label %88

31:                                               ; preds = %2
  %32 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %33 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %31
  br label %88

39:                                               ; preds = %2
  %40 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %41 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %47 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_VBR, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %39
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %45
  br label %88

53:                                               ; preds = %2
  %54 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %55 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %56, 100000
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp sge i32 %58, 10
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  %62 = icmp sle i32 %61, 135
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %60, %53
  br label %88

65:                                               ; preds = %2
  %66 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %67 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 %68, 100000
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp sge i32 %70, 10
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* %8, align 4
  %74 = icmp sle i32 %73, 202
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %72, %65
  br label %88

77:                                               ; preds = %2
  %78 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %79 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_TS, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %77
  br label %88

85:                                               ; preds = %2
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %89

88:                                               ; preds = %84, %76, %64, %52, %38, %30
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %85
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
