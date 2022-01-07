; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-video.c_vidioc_reqbufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-video.c_vidioc_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_requestbuffers = type { i64, i32 }
%struct.usb_usbvision = type { i64, i32* }

@USBVISION_NUMFRAMES = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@stream_on = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @vidioc_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.usb_usbvision*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.usb_usbvision* @video_drvdata(%struct.file* %10)
  store %struct.usb_usbvision* %11, %struct.usb_usbvision** %8, align 8
  %12 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @USBVISION_NUMFRAMES, align 4
  %16 = call i32 @RESTRICT_TO_RANGE(i32 %14, i32 1, i32 %15)
  %17 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %53

25:                                               ; preds = %3
  %26 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %27 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @stream_on, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %33 = call i32 @usbvision_stream_interrupt(%struct.usb_usbvision* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %53

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %41 = call i32 @usbvision_frames_free(%struct.usb_usbvision* %40)
  %42 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %43 = call i32 @usbvision_empty_framequeues(%struct.usb_usbvision* %42)
  %44 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %45 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @usbvision_frames_alloc(%struct.usb_usbvision* %44, i32 %47)
  %49 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %52 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %39, %36, %22
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.usb_usbvision* @video_drvdata(%struct.file*) #1

declare dso_local i32 @RESTRICT_TO_RANGE(i32, i32, i32) #1

declare dso_local i32 @usbvision_stream_interrupt(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_frames_free(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_empty_framequeues(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_frames_alloc(%struct.usb_usbvision*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
