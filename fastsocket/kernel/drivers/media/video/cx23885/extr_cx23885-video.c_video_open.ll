; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-video.c_video_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-video.c_video_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx23885_fh* }
%struct.cx23885_fh = type { i32, i32, i32, i32, i32, i32, %struct.cx23885_dev* }
%struct.cx23885_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.video_device = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"open dev=%s radio=%d type=%s\0A\00", align 1
@v4l2_type_names = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_BGR24 = common dso_local global i32 0, align 4
@cx23885_video_qops = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"post videobuf_queue_init()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @video_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.cx23885_dev*, align 8
  %6 = alloca %struct.cx23885_fh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.video_device* @video_devdata(%struct.file* %9)
  store %struct.video_device* %10, %struct.video_device** %4, align 8
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = call %struct.cx23885_dev* @video_drvdata(%struct.file* %11)
  store %struct.cx23885_dev* %12, %struct.cx23885_dev** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.video_device*, %struct.video_device** %4, align 8
  %14 = getelementptr inbounds %struct.video_device, %struct.video_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %21 [
    i32 130, label %16
    i32 128, label %18
    i32 129, label %20
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  store i32 %17, i32* %7, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  store i32 %19, i32* %7, align 4
  br label %21

20:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %21

21:                                               ; preds = %1, %20, %18, %16
  %22 = load %struct.video_device*, %struct.video_device** %4, align 8
  %23 = call i32 @video_device_node_name(%struct.video_device* %22)
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** @v4l2_type_names, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %29)
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.cx23885_fh* @kzalloc(i32 32, i32 %31)
  store %struct.cx23885_fh* %32, %struct.cx23885_fh** %6, align 8
  %33 = load %struct.cx23885_fh*, %struct.cx23885_fh** %6, align 8
  %34 = icmp eq %struct.cx23885_fh* null, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %72

38:                                               ; preds = %21
  %39 = load %struct.cx23885_fh*, %struct.cx23885_fh** %6, align 8
  %40 = load %struct.file*, %struct.file** %3, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  store %struct.cx23885_fh* %39, %struct.cx23885_fh** %41, align 8
  %42 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %43 = load %struct.cx23885_fh*, %struct.cx23885_fh** %6, align 8
  %44 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %43, i32 0, i32 6
  store %struct.cx23885_dev* %42, %struct.cx23885_dev** %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.cx23885_fh*, %struct.cx23885_fh** %6, align 8
  %47 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.cx23885_fh*, %struct.cx23885_fh** %6, align 8
  %50 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.cx23885_fh*, %struct.cx23885_fh** %6, align 8
  %52 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %51, i32 0, i32 2
  store i32 320, i32* %52, align 8
  %53 = load %struct.cx23885_fh*, %struct.cx23885_fh** %6, align 8
  %54 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %53, i32 0, i32 3
  store i32 240, i32* %54, align 4
  %55 = load i32, i32* @V4L2_PIX_FMT_BGR24, align 4
  %56 = call i32 @format_by_fourcc(i32 %55)
  %57 = load %struct.cx23885_fh*, %struct.cx23885_fh** %6, align 8
  %58 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct.cx23885_fh*, %struct.cx23885_fh** %6, align 8
  %60 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %59, i32 0, i32 4
  %61 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %62 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %66 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %65, i32 0, i32 0
  %67 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %68 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %69 = load %struct.cx23885_fh*, %struct.cx23885_fh** %6, align 8
  %70 = call i32 @videobuf_queue_sg_init(i32* %60, i32* @cx23885_video_qops, i32* %64, i32* %66, i32 %67, i32 %68, i32 4, %struct.cx23885_fh* %69, i32* null)
  %71 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %38, %35
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.cx23885_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

declare dso_local %struct.cx23885_fh* @kzalloc(i32, i32) #1

declare dso_local i32 @format_by_fourcc(i32) #1

declare dso_local i32 @videobuf_queue_sg_init(i32*, i32*, i32*, i32*, i32, i32, i32, %struct.cx23885_fh*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
