; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_fill_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_fill_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdpvr_options = type { i32 }
%struct.v4l2_queryctrl = type { i32, i32 }

@V4L2_MPEG_AUDIO_ENCODING_AAC = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_AC3 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_VBR = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = common dso_local global i32 0, align 4
@HDPVR_CONSTANT = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_INACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdpvr_options*, %struct.v4l2_queryctrl*, i32)* @fill_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_queryctrl(%struct.hdpvr_options* %0, %struct.v4l2_queryctrl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdpvr_options*, align 8
  %6 = alloca %struct.v4l2_queryctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hdpvr_options* %0, %struct.hdpvr_options** %5, align 8
  store %struct.v4l2_queryctrl* %1, %struct.v4l2_queryctrl** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %10 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %74 [
    i32 137, label %12
    i32 136, label %15
    i32 129, label %18
    i32 135, label %21
    i32 128, label %24
    i32 134, label %27
    i32 130, label %40
    i32 132, label %46
    i32 133, label %52
    i32 131, label %55
  ]

12:                                               ; preds = %3
  %13 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %14 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %13, i32 0, i32 255, i32 1, i32 134)
  store i32 %14, i32* %4, align 4
  br label %77

15:                                               ; preds = %3
  %16 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %17 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %16, i32 0, i32 255, i32 1, i32 128)
  store i32 %17, i32* %4, align 4
  br label %77

18:                                               ; preds = %3
  %19 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %20 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %19, i32 0, i32 255, i32 1, i32 128)
  store i32 %20, i32* %4, align 4
  br label %77

21:                                               ; preds = %3
  %22 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %23 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %22, i32 0, i32 255, i32 1, i32 128)
  store i32 %23, i32* %4, align 4
  br label %77

24:                                               ; preds = %3
  %25 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %26 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %25, i32 0, i32 255, i32 1, i32 128)
  store i32 %26, i32* %4, align 4
  br label %77

27:                                               ; preds = %3
  %28 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %29 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AAC, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AC3, align 4
  br label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AAC, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AAC, align 4
  %39 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %28, i32 %29, i32 %37, i32 1, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %77

40:                                               ; preds = %3
  %41 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %42 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC, align 4
  %43 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC, align 4
  %44 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC, align 4
  %45 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %41, i32 %42, i32 %43, i32 1, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %77

46:                                               ; preds = %3
  %47 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %48 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_VBR, align 4
  %49 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %50 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %51 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %47, i32 %48, i32 %49, i32 1, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %77

52:                                               ; preds = %3
  %53 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %54 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %53, i32 1000000, i32 13500000, i32 100000, i32 6500000)
  store i32 %54, i32* %4, align 4
  br label %77

55:                                               ; preds = %3
  %56 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %57 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %56, i32 1100000, i32 20200000, i32 100000, i32 9000000)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %55
  %61 = load %struct.hdpvr_options*, %struct.hdpvr_options** %5, align 8
  %62 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @HDPVR_CONSTANT, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %68 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %69 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %60, %55
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %77

74:                                               ; preds = %3
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %72, %52, %46, %40, %36, %24, %21, %18, %15, %12
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
