; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_cx231xx_v4l2_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_cx231xx_v4l2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx231xx_fh* }
%struct.cx231xx_fh = type { i32, i32, i32, %struct.cx231xx* }
%struct.cx231xx = type { i64, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.video_device = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"open dev=%s type=%s users=%d\0A\00", align 1
@v4l2_type_names = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"cx231xx-video.c: Out of memory?!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CX231XX_BOARD_CNXT_VIDEO_GRABBER = common dso_local global i64 0, align 8
@CX231XX_BOARD_HAUPPAUGE_USBLIVE2 = common dso_local global i64 0, align 8
@POLARIS_AVMODE_ENXTERNAL_AV = common dso_local global i32 0, align 4
@POLARIS_AVMODE_ANALOGT_TV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"video_open: setting radio device\0A\00", align 1
@tuner = common dso_local global i32 0, align 4
@s_radio = common dso_local global i32 0, align 4
@cx231xx_video_qops = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@INDEX_VANC = common dso_local global i32 0, align 4
@cx231xx_vbi_qops = common dso_local global i32 0, align 4
@V4L2_FIELD_SEQ_TB = common dso_local global i32 0, align 4
@CX231XX_ANALOG_MODE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @cx231xx_v4l2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_v4l2_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca %struct.cx231xx*, align 8
  %8 = alloca %struct.cx231xx_fh*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = call %struct.video_device* @video_devdata(%struct.file* %10)
  store %struct.video_device* %11, %struct.video_device** %6, align 8
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = call %struct.cx231xx* @video_drvdata(%struct.file* %12)
  store %struct.cx231xx* %13, %struct.cx231xx** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.video_device*, %struct.video_device** %6, align 8
  %15 = getelementptr inbounds %struct.video_device, %struct.video_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %22 [
    i32 130, label %17
    i32 128, label %19
    i32 129, label %21
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  store i32 %18, i32* %9, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  store i32 %20, i32* %9, align 4
  br label %22

21:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %1, %21, %19, %17
  %23 = load %struct.video_device*, %struct.video_device** %6, align 8
  %24 = call i32 @video_device_node_name(%struct.video_device* %23)
  %25 = load i32*, i32** @v4l2_type_names, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %31 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i8*, ...) @cx231xx_videodbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29, i64 %32)
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.cx231xx_fh* @kzalloc(i32 24, i32 %34)
  store %struct.cx231xx_fh* %35, %struct.cx231xx_fh** %8, align 8
  %36 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %37 = icmp ne %struct.cx231xx_fh* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %22
  %39 = call i32 @cx231xx_errdev(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %184

42:                                               ; preds = %22
  %43 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %44 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %45 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %44, i32 0, i32 3
  store %struct.cx231xx* %43, %struct.cx231xx** %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %48 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %51 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %53 = load %struct.file*, %struct.file** %3, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  store %struct.cx231xx_fh* %52, %struct.cx231xx_fh** %54, align 8
  %55 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %56 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %111

60:                                               ; preds = %42
  %61 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %62 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %111

65:                                               ; preds = %60
  %66 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %67 = call i32 @norm_maxw(%struct.cx231xx* %66)
  %68 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %69 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 4
  %70 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %71 = call i32 @norm_maxh(%struct.cx231xx* %70)
  %72 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %73 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 8
  %74 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %75 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CX231XX_BOARD_CNXT_VIDEO_GRABBER, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %65
  %80 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %81 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CX231XX_BOARD_HAUPPAUGE_USBLIVE2, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79, %65
  %86 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %87 = load i32, i32* @POLARIS_AVMODE_ENXTERNAL_AV, align 4
  %88 = call i32 @cx231xx_set_power_mode(%struct.cx231xx* %86, i32 %87)
  br label %93

89:                                               ; preds = %79
  %90 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %91 = load i32, i32* @POLARIS_AVMODE_ANALOGT_TV, align 4
  %92 = call i32 @cx231xx_set_power_mode(%struct.cx231xx* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %85
  %94 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %95 = call i32 @cx231xx_set_video_alternate(%struct.cx231xx* %94)
  %96 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %97 = call i32 @cx231xx_config_i2c(%struct.cx231xx* %96)
  %98 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %99 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %100, 2
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %107

103:                                              ; preds = %93
  %104 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %105 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  br label %107

107:                                              ; preds = %103, %102
  %108 = phi i32 [ 2, %102 ], [ %106, %103 ]
  %109 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %110 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %60, %42
  %112 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %113 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = call i32 (i8*, ...) @cx231xx_videodbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %118 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %119 = load i32, i32* @tuner, align 4
  %120 = load i32, i32* @s_radio, align 4
  %121 = call i32 @call_all(%struct.cx231xx* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %116, %111
  %123 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %124 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %124, align 8
  %127 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %128 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %122
  %133 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %134 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %133, i32 0, i32 2
  %135 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %136 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %139 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %142 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %143 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %144 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %143, i32 0, i32 3
  %145 = call i32 @videobuf_queue_vmalloc_init(i32* %134, i32* @cx231xx_video_qops, i32* null, i32* %137, i32 %140, i32 %141, i32 4, %struct.cx231xx_fh* %142, i32* %144)
  br label %146

146:                                              ; preds = %132, %122
  %147 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %148 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %182

152:                                              ; preds = %146
  %153 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %154 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @CX231XX_BOARD_CNXT_VIDEO_GRABBER, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %152
  %159 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %160 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @CX231XX_BOARD_HAUPPAUGE_USBLIVE2, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %166 = load i32, i32* @INDEX_VANC, align 4
  %167 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx* %165, i32 %166, i32 0)
  br label %168

168:                                              ; preds = %164, %158, %152
  %169 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %170 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %169, i32 0, i32 2
  %171 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %172 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %175 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @V4L2_FIELD_SEQ_TB, align 4
  %178 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %179 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %180 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %179, i32 0, i32 3
  %181 = call i32 @videobuf_queue_vmalloc_init(i32* %170, i32* @cx231xx_vbi_qops, i32* null, i32* %173, i32 %176, i32 %177, i32 4, %struct.cx231xx_fh* %178, i32* %180)
  br label %182

182:                                              ; preds = %168, %146
  %183 = load i32, i32* %4, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %182, %38
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.cx231xx* @video_drvdata(%struct.file*) #1

declare dso_local i32 @cx231xx_videodbg(i8*, ...) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

declare dso_local %struct.cx231xx_fh* @kzalloc(i32, i32) #1

declare dso_local i32 @cx231xx_errdev(i8*) #1

declare dso_local i32 @norm_maxw(%struct.cx231xx*) #1

declare dso_local i32 @norm_maxh(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_set_power_mode(%struct.cx231xx*, i32) #1

declare dso_local i32 @cx231xx_set_video_alternate(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_config_i2c(%struct.cx231xx*) #1

declare dso_local i32 @call_all(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @videobuf_queue_vmalloc_init(i32*, i32*, i32*, i32*, i32, i32, i32, %struct.cx231xx_fh*, i32*) #1

declare dso_local i32 @cx231xx_set_alt_setting(%struct.cx231xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
