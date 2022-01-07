; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_queue.c_uvc_query_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_queue.c_uvc_query_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_queue = type { i64, i32, i32* }
%struct.v4l2_buffer = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_query_buffer(%struct.uvc_video_queue* %0, %struct.v4l2_buffer* %1) #0 {
  %3 = alloca %struct.uvc_video_queue*, align 8
  %4 = alloca %struct.v4l2_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.uvc_video_queue* %0, %struct.uvc_video_queue** %3, align 8
  store %struct.v4l2_buffer* %1, %struct.v4l2_buffer** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %7 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %13 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %21 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %28 = call i32 @__uvc_query_buffer(i32* %26, %struct.v4l2_buffer* %27)
  br label %29

29:                                               ; preds = %19, %16
  %30 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %31 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__uvc_query_buffer(i32*, %struct.v4l2_buffer*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
