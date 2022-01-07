; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_hdpvr_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_hdpvr_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdpvr_device = type { i32, %struct.hdpvr_options }
%struct.hdpvr_options = type { i32, i8*, i8*, i32, i32 }
%struct.v4l2_ext_control = type { i32, i32 }

@HDPVR_FLAG_AC3_CAP = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = common dso_local global i32 0, align 4
@HDPVR_CONSTANT = common dso_local global i32 0, align 4
@CTRL_BITRATE_MODE_VALUE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_VBR = common dso_local global i32 0, align 4
@HDPVR_VARIABLE_AVERAGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdpvr_device*, %struct.v4l2_ext_control*)* @hdpvr_set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdpvr_set_ctrl(%struct.hdpvr_device* %0, %struct.v4l2_ext_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdpvr_device*, align 8
  %5 = alloca %struct.v4l2_ext_control*, align 8
  %6 = alloca %struct.hdpvr_options*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.hdpvr_device* %0, %struct.hdpvr_device** %4, align 8
  store %struct.v4l2_ext_control* %1, %struct.v4l2_ext_control** %5, align 8
  %10 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %11 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %10, i32 0, i32 1
  store %struct.hdpvr_options* %11, %struct.hdpvr_options** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %136 [
    i32 133, label %15
    i32 128, label %37
    i32 130, label %38
    i32 131, label %83
    i32 129, label %106
    i32 132, label %135
  ]

15:                                               ; preds = %2
  %16 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %17 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @HDPVR_FLAG_AC3_CAP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hdpvr_options*, %struct.hdpvr_options** %6, align 8
  %27 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %29 = load %struct.hdpvr_options*, %struct.hdpvr_options** %6, align 8
  %30 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hdpvr_options*, %struct.hdpvr_options** %6, align 8
  %33 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @hdpvr_set_audio(%struct.hdpvr_device* %28, i32 %31, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %22, %15
  br label %139

37:                                               ; preds = %2
  br label %139

38:                                               ; preds = %2
  %39 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  %45 = load %struct.hdpvr_options*, %struct.hdpvr_options** %6, align 8
  %46 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @HDPVR_CONSTANT, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load i32, i32* @HDPVR_CONSTANT, align 4
  %52 = load %struct.hdpvr_options*, %struct.hdpvr_options** %6, align 8
  %53 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %55 = load i32, i32* @CTRL_BITRATE_MODE_VALUE, align 4
  %56 = load %struct.hdpvr_options*, %struct.hdpvr_options** %6, align 8
  %57 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %54, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %50, %44, %38
  %61 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_VBR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %60
  %67 = load %struct.hdpvr_options*, %struct.hdpvr_options** %6, align 8
  %68 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @HDPVR_CONSTANT, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load i32, i32* @HDPVR_VARIABLE_AVERAGE, align 4
  %74 = load %struct.hdpvr_options*, %struct.hdpvr_options** %6, align 8
  %75 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %77 = load i32, i32* @CTRL_BITRATE_MODE_VALUE, align 4
  %78 = load %struct.hdpvr_options*, %struct.hdpvr_options** %6, align 8
  %79 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %76, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %72, %66, %60
  br label %139

83:                                               ; preds = %2
  %84 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %85 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %86, 100000
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  store i8* %89, i8** %8, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load %struct.hdpvr_options*, %struct.hdpvr_options** %6, align 8
  %92 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load %struct.hdpvr_options*, %struct.hdpvr_options** %6, align 8
  %95 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = icmp uge i8* %93, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %83
  %99 = load i8*, i8** %8, align 8
  %100 = getelementptr i8, i8* %99, i64 1
  %101 = load %struct.hdpvr_options*, %struct.hdpvr_options** %6, align 8
  %102 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %98, %83
  %104 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %105 = call i32 @hdpvr_set_bitrate(%struct.hdpvr_device* %104)
  br label %139

106:                                              ; preds = %2
  %107 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %108 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %109, 100000
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  store i8* %112, i8** %9, align 8
  %113 = load %struct.hdpvr_options*, %struct.hdpvr_options** %6, align 8
  %114 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @HDPVR_CONSTANT, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  br label %139

119:                                              ; preds = %106
  %120 = load %struct.hdpvr_options*, %struct.hdpvr_options** %6, align 8
  %121 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = icmp ult i8* %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i8*, i8** %9, align 8
  %127 = load %struct.hdpvr_options*, %struct.hdpvr_options** %6, align 8
  %128 = getelementptr inbounds %struct.hdpvr_options, %struct.hdpvr_options* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %130 = call i32 @hdpvr_set_bitrate(%struct.hdpvr_device* %129)
  br label %134

131:                                              ; preds = %119
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %131, %125
  br label %139

135:                                              ; preds = %2
  br label %139

136:                                              ; preds = %2
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %141

139:                                              ; preds = %135, %134, %118, %103, %82, %37, %36
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %136
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @hdpvr_set_audio(%struct.hdpvr_device*, i32, i32) #1

declare dso_local i32 @hdpvr_config_call(%struct.hdpvr_device*, i32, i32) #1

declare dso_local i32 @hdpvr_set_bitrate(%struct.hdpvr_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
