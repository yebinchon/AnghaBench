; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_qbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i32 }
%struct.em28xx_fh = type { i64, i32, i32, %struct.em28xx* }
%struct.em28xx = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_qbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_qbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.em28xx_fh*, align 8
  %9 = alloca %struct.em28xx*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.em28xx_fh*
  store %struct.em28xx_fh* %12, %struct.em28xx_fh** %8, align 8
  %13 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %14 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %13, i32 0, i32 3
  %15 = load %struct.em28xx*, %struct.em28xx** %14, align 8
  store %struct.em28xx* %15, %struct.em28xx** %9, align 8
  %16 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %17 = call i32 @check_dev(%struct.em28xx* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %38

22:                                               ; preds = %3
  %23 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %24 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %30 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %29, i32 0, i32 2
  %31 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %32 = call i32 @videobuf_qbuf(i32* %30, %struct.v4l2_buffer* %31)
  store i32 %32, i32* %4, align 4
  br label %38

33:                                               ; preds = %22
  %34 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %35 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %34, i32 0, i32 1
  %36 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %37 = call i32 @videobuf_qbuf(i32* %35, %struct.v4l2_buffer* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %28, %20
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @check_dev(%struct.em28xx*) #1

declare dso_local i32 @videobuf_qbuf(i32*, %struct.v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
