; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_hdpvr_get_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_hdpvr_get_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdpvr_options = type { i32, i32, i32, i32 }
%struct.v4l2_ext_control = type { i32, i32 }

@V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC = common dso_local global i32 0, align 4
@HDPVR_CONSTANT = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_VBR = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG2_TS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdpvr_options*, %struct.v4l2_ext_control*)* @hdpvr_get_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdpvr_get_ctrl(%struct.hdpvr_options* %0, %struct.v4l2_ext_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdpvr_options*, align 8
  %5 = alloca %struct.v4l2_ext_control*, align 8
  store %struct.hdpvr_options* %0, %struct.hdpvr_options** %4, align 8
  store %struct.v4l2_ext_control* %1, %struct.v4l2_ext_control** %5, align 8
  %6 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %51 [
    i32 133, label %9
    i32 128, label %15
    i32 130, label %19
    i32 131, label %33
    i32 129, label %40
    i32 132, label %47
  ]

9:                                                ; preds = %2
  %10 = load %struct.hdpvr_options*, %struct.hdpvr_options** %4, align 8
  %11 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  br label %54

15:                                               ; preds = %2
  %16 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC, align 4
  %17 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %54

19:                                               ; preds = %2
  %20 = load %struct.hdpvr_options*, %struct.hdpvr_options** %4, align 8
  %21 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HDPVR_CONSTANT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  br label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_VBR, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %54

33:                                               ; preds = %2
  %34 = load %struct.hdpvr_options*, %struct.hdpvr_options** %4, align 8
  %35 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 100000
  %38 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %54

40:                                               ; preds = %2
  %41 = load %struct.hdpvr_options*, %struct.hdpvr_options** %4, align 8
  %42 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 100000
  %45 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %54

47:                                               ; preds = %2
  %48 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_TS, align 4
  %49 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %54

51:                                               ; preds = %2
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %55

54:                                               ; preds = %47, %40, %33, %29, %15, %9
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
