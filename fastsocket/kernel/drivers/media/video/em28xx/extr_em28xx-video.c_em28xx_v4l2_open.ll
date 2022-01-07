; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_em28xx_v4l2_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_em28xx_v4l2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.em28xx_fh* }
%struct.em28xx_fh = type { i32, i32, i32, i32, %struct.em28xx* }
%struct.em28xx = type { i64, i32, i32, i64, i32 }
%struct.video_device = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"open dev=%s type=%s users=%d\0A\00", align 1
@v4l2_type_names = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"em28xx-video.c: Out of memory?!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EM28XX_ANALOG_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"video_open: setting radio device\0A\00", align 1
@tuner = common dso_local global i32 0, align 4
@s_radio = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@em28xx_video_qops = common dso_local global i32 0, align 4
@em28xx_vbi_qops = common dso_local global i32 0, align 4
@V4L2_FIELD_SEQ_TB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @em28xx_v4l2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_v4l2_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca %struct.em28xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.em28xx_fh*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = call %struct.video_device* @video_devdata(%struct.file* %11)
  store %struct.video_device* %12, %struct.video_device** %6, align 8
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = call %struct.em28xx* @video_drvdata(%struct.file* %13)
  store %struct.em28xx* %14, %struct.em28xx** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.video_device*, %struct.video_device** %6, align 8
  %16 = getelementptr inbounds %struct.video_device, %struct.video_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %23 [
    i32 130, label %18
    i32 128, label %20
    i32 129, label %22
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  store i32 %19, i32* %8, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  store i32 %21, i32* %8, align 4
  br label %23

22:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %1, %22, %20, %18
  %24 = load %struct.video_device*, %struct.video_device** %6, align 8
  %25 = call i32 @video_device_node_name(%struct.video_device* %24)
  %26 = load i32*, i32** @v4l2_type_names, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %32 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, ...) @em28xx_videodbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %30, i64 %33)
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.em28xx_fh* @kzalloc(i32 24, i32 %35)
  store %struct.em28xx_fh* %36, %struct.em28xx_fh** %9, align 8
  %37 = load %struct.em28xx_fh*, %struct.em28xx_fh** %9, align 8
  %38 = icmp ne %struct.em28xx_fh* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %23
  %40 = call i32 @em28xx_errdev(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %123

43:                                               ; preds = %23
  %44 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %45 = load %struct.em28xx_fh*, %struct.em28xx_fh** %9, align 8
  %46 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %45, i32 0, i32 4
  store %struct.em28xx* %44, %struct.em28xx** %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.em28xx_fh*, %struct.em28xx_fh** %9, align 8
  %49 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.em28xx_fh*, %struct.em28xx_fh** %9, align 8
  %52 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.em28xx_fh*, %struct.em28xx_fh** %9, align 8
  %54 = load %struct.file*, %struct.file** %3, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 0
  store %struct.em28xx_fh* %53, %struct.em28xx_fh** %55, align 8
  %56 = load %struct.em28xx_fh*, %struct.em28xx_fh** %9, align 8
  %57 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %43
  %62 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %63 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %68 = load i32, i32* @EM28XX_ANALOG_MODE, align 4
  %69 = call i32 @em28xx_set_mode(%struct.em28xx* %67, i32 %68)
  %70 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %71 = call i32 @em28xx_set_alternate(%struct.em28xx* %70)
  %72 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %73 = call i32 @em28xx_resolution_set(%struct.em28xx* %72)
  %74 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %75 = call i32 @em28xx_wake_i2c(%struct.em28xx* %74)
  br label %76

76:                                               ; preds = %66, %61, %43
  %77 = load %struct.em28xx_fh*, %struct.em28xx_fh** %9, align 8
  %78 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = call i32 (i8*, ...) @em28xx_videodbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %84 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %83, i32 0, i32 4
  %85 = load i32, i32* @tuner, align 4
  %86 = load i32, i32* @s_radio, align 4
  %87 = call i32 @v4l2_device_call_all(i32* %84, i32 0, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %76
  %89 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %90 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %94 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* @V4L2_FIELD_NONE, align 4
  store i32 %98, i32* %10, align 4
  br label %101

99:                                               ; preds = %88
  %100 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = load %struct.em28xx_fh*, %struct.em28xx_fh** %9, align 8
  %103 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %102, i32 0, i32 3
  %104 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %105 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %104, i32 0, i32 2
  %106 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.em28xx_fh*, %struct.em28xx_fh** %9, align 8
  %109 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %110 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %109, i32 0, i32 1
  %111 = call i32 @videobuf_queue_vmalloc_init(i32* %103, i32* @em28xx_video_qops, i32* null, i32* %105, i32 %106, i32 %107, i32 4, %struct.em28xx_fh* %108, i32* %110)
  %112 = load %struct.em28xx_fh*, %struct.em28xx_fh** %9, align 8
  %113 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %112, i32 0, i32 2
  %114 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %115 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %114, i32 0, i32 2
  %116 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  %117 = load i32, i32* @V4L2_FIELD_SEQ_TB, align 4
  %118 = load %struct.em28xx_fh*, %struct.em28xx_fh** %9, align 8
  %119 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %120 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %119, i32 0, i32 1
  %121 = call i32 @videobuf_queue_vmalloc_init(i32* %113, i32* @em28xx_vbi_qops, i32* null, i32* %115, i32 %116, i32 %117, i32 4, %struct.em28xx_fh* %118, i32* %120)
  %122 = load i32, i32* %4, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %101, %39
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.em28xx* @video_drvdata(%struct.file*) #1

declare dso_local i32 @em28xx_videodbg(i8*, ...) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

declare dso_local %struct.em28xx_fh* @kzalloc(i32, i32) #1

declare dso_local i32 @em28xx_errdev(i8*) #1

declare dso_local i32 @em28xx_set_mode(%struct.em28xx*, i32) #1

declare dso_local i32 @em28xx_set_alternate(%struct.em28xx*) #1

declare dso_local i32 @em28xx_resolution_set(%struct.em28xx*) #1

declare dso_local i32 @em28xx_wake_i2c(%struct.em28xx*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32) #1

declare dso_local i32 @videobuf_queue_vmalloc_init(i32*, i32*, i32*, i32*, i32, i32, i32, %struct.em28xx_fh*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
