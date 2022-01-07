; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_vidioc_dqbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_vidioc_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i32 }
%struct.au0828_fh = type { i64, i32, i32, %struct.au0828_dev* }
%struct.au0828_dev = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Detected green frame.  Resetting stream...\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_dqbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_dqbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.au0828_fh*, align 8
  %9 = alloca %struct.au0828_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.au0828_fh*
  store %struct.au0828_fh* %12, %struct.au0828_fh** %8, align 8
  %13 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %14 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %13, i32 0, i32 3
  %15 = load %struct.au0828_dev*, %struct.au0828_dev** %14, align 8
  store %struct.au0828_dev* %15, %struct.au0828_dev** %9, align 8
  %16 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %17 = call i32 @check_dev(%struct.au0828_dev* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %68

22:                                               ; preds = %3
  %23 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %24 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %30 = call i32 @au0828_analog_stream_reset(%struct.au0828_dev* %29)
  %31 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %32 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %35 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %41 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %40, i32 0, i32 2
  %42 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %43 = load %struct.file*, %struct.file** %5, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @O_NONBLOCK, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @videobuf_dqbuf(i32* %41, %struct.v4l2_buffer* %42, i32 %47)
  store i32 %48, i32* %10, align 4
  br label %66

49:                                               ; preds = %33
  %50 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %51 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %57 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %56, i32 0, i32 1
  %58 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %59 = load %struct.file*, %struct.file** %5, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @O_NONBLOCK, align 4
  %63 = and i32 %61, %62
  %64 = call i32 @videobuf_dqbuf(i32* %57, %struct.v4l2_buffer* %58, i32 %63)
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %55, %49
  br label %66

66:                                               ; preds = %65, %39
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %20
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @check_dev(%struct.au0828_dev*) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @au0828_analog_stream_reset(%struct.au0828_dev*) #1

declare dso_local i32 @videobuf_dqbuf(i32*, %struct.v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
