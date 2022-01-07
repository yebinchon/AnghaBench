; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-video.c_vidioc_querybuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-video.c_vidioc_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64, i32, i32, i32, i32, i8*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_usbvision = type { i64, i32, i32, %struct.usbvision_frame*, %struct.TYPE_4__, i32 }
%struct.usbvision_frame = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@frame_state_ready = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_QUEUED = common dso_local global i32 0, align 4
@frame_state_done = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_DONE = common dso_local global i32 0, align 4
@frame_state_unused = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_MAPPED = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i8* null, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_querybuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querybuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.usb_usbvision*, align 8
  %9 = alloca %struct.usbvision_frame*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.usb_usbvision* @video_drvdata(%struct.file* %10)
  store %struct.usb_usbvision* %11, %struct.usb_usbvision** %8, align 8
  %12 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %16 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %126

22:                                               ; preds = %3
  %23 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %23, i32 0, i32 7
  store i32 0, i32* %24, align 4
  %25 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %26 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %25, i32 0, i32 3
  %27 = load %struct.usbvision_frame*, %struct.usbvision_frame** %26, align 8
  %28 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %27, i64 %30
  store %struct.usbvision_frame* %31, %struct.usbvision_frame** %9, align 8
  %32 = load %struct.usbvision_frame*, %struct.usbvision_frame** %9, align 8
  %33 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @frame_state_ready, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %22
  %38 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %39 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %22
  %44 = load %struct.usbvision_frame*, %struct.usbvision_frame** %9, align 8
  %45 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @frame_state_done, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %51 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.usbvision_frame*, %struct.usbvision_frame** %9, align 8
  %57 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @frame_state_unused, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32, i32* @V4L2_BUF_FLAG_MAPPED, align 4
  %63 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %55
  %68 = load i8*, i8** @V4L2_MEMORY_MMAP, align 8
  %69 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %69, i32 0, i32 5
  store i8* %68, i8** %70, align 8
  %71 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %75 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @PAGE_ALIGN(i32 %76)
  %78 = sext i32 %77 to i64
  %79 = mul i64 %73, %78
  %80 = trunc i64 %79 to i32
  %81 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load i8*, i8** @V4L2_MEMORY_MMAP, align 8
  %85 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %88 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %91 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %94 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %92, %95
  %97 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %98 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %96, %100
  %102 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %103 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %105 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %104, i32 0, i32 3
  %106 = load %struct.usbvision_frame*, %struct.usbvision_frame** %105, align 8
  %107 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %106, i64 %109
  %111 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %114 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  %115 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %116 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %115, i32 0, i32 3
  %117 = load %struct.usbvision_frame*, %struct.usbvision_frame** %116, align 8
  %118 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %119 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %117, i64 %120
  %122 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %125 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %67, %19
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.usb_usbvision* @video_drvdata(%struct.file*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
