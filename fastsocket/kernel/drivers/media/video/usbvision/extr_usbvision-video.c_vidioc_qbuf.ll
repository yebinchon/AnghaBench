; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-video.c_vidioc_qbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-video.c_vidioc_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64, i32 }
%struct.usb_usbvision = type { i64, i32, i32, %struct.usbvision_frame*, i32 }
%struct.usbvision_frame = type { i64, i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@frame_state_unused = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@frame_state_ready = common dso_local global i64 0, align 8
@scan_state_scanning = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_qbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_qbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.usb_usbvision*, align 8
  %9 = alloca %struct.usbvision_frame*, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.usb_usbvision* @video_drvdata(%struct.file* %11)
  store %struct.usb_usbvision* %12, %struct.usb_usbvision** %8, align 8
  %13 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %17 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %78

23:                                               ; preds = %3
  %24 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %25 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %24, i32 0, i32 3
  %26 = load %struct.usbvision_frame*, %struct.usbvision_frame** %25, align 8
  %27 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %26, i64 %29
  store %struct.usbvision_frame* %30, %struct.usbvision_frame** %9, align 8
  %31 = load %struct.usbvision_frame*, %struct.usbvision_frame** %9, align 8
  %32 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @frame_state_unused, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %78

39:                                               ; preds = %23
  %40 = load i64, i64* @frame_state_ready, align 8
  %41 = load %struct.usbvision_frame*, %struct.usbvision_frame** %9, align 8
  %42 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* @scan_state_scanning, align 4
  %44 = load %struct.usbvision_frame*, %struct.usbvision_frame** %9, align 8
  %45 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.usbvision_frame*, %struct.usbvision_frame** %9, align 8
  %47 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %55 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.usbvision_frame*, %struct.usbvision_frame** %9, align 8
  %58 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %60 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %59, i32 0, i32 1
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %64 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %63, i32 0, i32 3
  %65 = load %struct.usbvision_frame*, %struct.usbvision_frame** %64, align 8
  %66 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %65, i64 %68
  %70 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %69, i32 0, i32 1
  %71 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %72 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %71, i32 0, i32 2
  %73 = call i32 @list_add_tail(i32* %70, i32* %72)
  %74 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %75 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %74, i32 0, i32 1
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %39, %36, %20
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.usb_usbvision* @video_drvdata(%struct.file*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
