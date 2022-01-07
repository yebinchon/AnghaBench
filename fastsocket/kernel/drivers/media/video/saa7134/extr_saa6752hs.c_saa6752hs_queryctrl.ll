; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa6752hs.c_saa6752hs_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa6752hs.c_saa6752hs_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_queryctrl = type { i32, i32 }
%struct.saa6752hs_state = type { i32, %struct.saa6752hs_mpeg_params }
%struct.saa6752hs_mpeg_params = type { i32 }

@V4L2_MPEG_AUDIO_ENCODING_LAYER_2 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_AC3 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_L2_BITRATE_256K = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_L2_BITRATE_384K = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_AC3_BITRATE_256K = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_AC3_BITRATE_384K = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_2 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_4x3 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_16x9 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_INACTIVE = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG2_TS = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_VBR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_queryctrl*)* @saa6752hs_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa6752hs_queryctrl(%struct.v4l2_subdev* %0, %struct.v4l2_queryctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_queryctrl*, align 8
  %6 = alloca %struct.saa6752hs_state*, align 8
  %7 = alloca %struct.saa6752hs_mpeg_params*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_queryctrl* %1, %struct.v4l2_queryctrl** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.saa6752hs_state* @to_state(%struct.v4l2_subdev* %9)
  store %struct.saa6752hs_state* %10, %struct.saa6752hs_state** %6, align 8
  %11 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %12 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %11, i32 0, i32 1
  store %struct.saa6752hs_mpeg_params* %12, %struct.saa6752hs_mpeg_params** %7, align 8
  %13 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %115 [
    i32 140, label %16
    i32 139, label %31
    i32 141, label %37
    i32 138, label %51
    i32 128, label %57
    i32 132, label %63
    i32 129, label %69
    i32 133, label %88
    i32 130, label %94
    i32 131, label %100
    i32 135, label %103
    i32 137, label %106
    i32 134, label %109
    i32 136, label %112
  ]

16:                                               ; preds = %2
  %17 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %18 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_LAYER_2, align 4
  %19 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %20 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AC3, align 4
  br label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_LAYER_2, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_LAYER_2, align 4
  %30 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %17, i32 %18, i32 %28, i32 1, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %119

31:                                               ; preds = %2
  %32 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %33 = load i32, i32* @V4L2_MPEG_AUDIO_L2_BITRATE_256K, align 4
  %34 = load i32, i32* @V4L2_MPEG_AUDIO_L2_BITRATE_384K, align 4
  %35 = load i32, i32* @V4L2_MPEG_AUDIO_L2_BITRATE_256K, align 4
  %36 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %32, i32 %33, i32 %34, i32 1, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %119

37:                                               ; preds = %2
  %38 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %39 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %119

45:                                               ; preds = %37
  %46 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %47 = load i32, i32* @V4L2_MPEG_AUDIO_AC3_BITRATE_256K, align 4
  %48 = load i32, i32* @V4L2_MPEG_AUDIO_AC3_BITRATE_384K, align 4
  %49 = load i32, i32* @V4L2_MPEG_AUDIO_AC3_BITRATE_256K, align 4
  %50 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %46, i32 %47, i32 %48, i32 1, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %119

51:                                               ; preds = %2
  %52 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %53 = load i32, i32* @V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000, align 4
  %54 = load i32, i32* @V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000, align 4
  %55 = load i32, i32* @V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000, align 4
  %56 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %52, i32 %53, i32 %54, i32 1, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %119

57:                                               ; preds = %2
  %58 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %59 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_2, align 4
  %60 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_2, align 4
  %61 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_2, align 4
  %62 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %58, i32 %59, i32 %60, i32 1, i32 %61)
  store i32 %62, i32* %3, align 4
  br label %119

63:                                               ; preds = %2
  %64 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %65 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_4x3, align 4
  %66 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_16x9, align 4
  %67 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_4x3, align 4
  %68 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %64, i32 %65, i32 %66, i32 1, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %119

69:                                               ; preds = %2
  %70 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %71 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %70, i32 0, i32 27000000, i32 1, i32 8000000)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %76 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %82 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %74, %69
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %119

88:                                               ; preds = %2
  %89 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %90 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_TS, align 4
  %91 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_TS, align 4
  %92 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_TS, align 4
  %93 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %89, i32 %90, i32 %91, i32 1, i32 %92)
  store i32 %93, i32* %3, align 4
  br label %119

94:                                               ; preds = %2
  %95 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %96 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_VBR, align 4
  %97 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %98 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_VBR, align 4
  %99 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %95, i32 %96, i32 %97, i32 1, i32 %98)
  store i32 %99, i32* %3, align 4
  br label %119

100:                                              ; preds = %2
  %101 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %102 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %101, i32 0, i32 27000000, i32 1, i32 6000000)
  store i32 %102, i32* %3, align 4
  br label %119

103:                                              ; preds = %2
  %104 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %105 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %104, i32 0, i32 16383, i32 1, i32 16)
  store i32 %105, i32* %3, align 4
  br label %119

106:                                              ; preds = %2
  %107 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %108 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %107, i32 0, i32 16383, i32 1, i32 260)
  store i32 %108, i32* %3, align 4
  br label %119

109:                                              ; preds = %2
  %110 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %111 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %110, i32 0, i32 16383, i32 1, i32 256)
  store i32 %111, i32* %3, align 4
  br label %119

112:                                              ; preds = %2
  %113 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %114 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %113, i32 0, i32 16383, i32 1, i32 259)
  store i32 %114, i32* %3, align 4
  br label %119

115:                                              ; preds = %2
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %116, %112, %109, %106, %103, %100, %94, %88, %86, %63, %57, %51, %45, %42, %31, %27
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.saa6752hs_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
