; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-encoder.c_saa7164_try_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-encoder.c_saa7164_try_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ext_control = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENCODER_MIN_BITRATE = common dso_local global i32 0, align 4
@ENCODER_MAX_BITRATE = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG2_PS = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG2_TS = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_1x1 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_221x100 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_VBR = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ext_control*, i32)* @saa7164_try_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7164_try_ctrl(%struct.v4l2_ext_control* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_ext_control*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.v4l2_ext_control* %0, %struct.v4l2_ext_control** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %9 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %117 [
    i32 132, label %11
    i32 134, label %25
    i32 135, label %39
    i32 133, label %51
    i32 128, label %65
    i32 131, label %77
    i32 129, label %91
    i32 130, label %103
  ]

11:                                               ; preds = %2
  %12 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %13 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ENCODER_MIN_BITRATE, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ENCODER_MAX_BITRATE, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %17, %11
  br label %120

25:                                               ; preds = %2
  %26 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %27 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_PS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %33 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_TS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %25
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %31
  br label %120

39:                                               ; preds = %2
  %40 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %41 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %46 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sle i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %44, %39
  br label %120

51:                                               ; preds = %2
  %52 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %53 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_1x1, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %59 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_221x100, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %57, %51
  br label %120

65:                                               ; preds = %2
  %66 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %67 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %72 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp sle i32 %73, 255
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %70, %65
  br label %120

77:                                               ; preds = %2
  %78 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %79 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_VBR, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %85 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83, %77
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %83
  br label %120

91:                                               ; preds = %2
  %92 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %93 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp sge i32 %94, 1
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %98 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp sle i32 %99, 3
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %96, %91
  br label %120

103:                                              ; preds = %2
  %104 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %105 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ENCODER_MIN_BITRATE, align 4
  %108 = icmp sge i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %111 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ENCODER_MAX_BITRATE, align 4
  %114 = icmp sle i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %109, %103
  br label %120

117:                                              ; preds = %2
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %117, %116, %102, %90, %76, %64, %50, %38, %24
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
