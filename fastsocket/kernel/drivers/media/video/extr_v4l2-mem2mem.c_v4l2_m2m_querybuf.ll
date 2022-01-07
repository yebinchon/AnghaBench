; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-mem2mem.c_v4l2_m2m_querybuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-mem2mem.c_v4l2_m2m_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_m2m_ctx = type { i32 }
%struct.v4l2_buffer = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.videobuf_queue = type { i64 }

@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@DST_QUEUE_OFF_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_m2m_querybuf(%struct.file* %0, %struct.v4l2_m2m_ctx* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.v4l2_m2m_ctx*, align 8
  %6 = alloca %struct.v4l2_buffer*, align 8
  %7 = alloca %struct.videobuf_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.v4l2_m2m_ctx* %1, %struct.v4l2_m2m_ctx** %5, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %6, align 8
  %9 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %5, align 8
  %10 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.videobuf_queue* @v4l2_m2m_get_vq(%struct.v4l2_m2m_ctx* %9, i32 %12)
  store %struct.videobuf_queue* %13, %struct.videobuf_queue** %7, align 8
  %14 = load %struct.videobuf_queue*, %struct.videobuf_queue** %7, align 8
  %15 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %16 = call i32 @videobuf_querybuf(%struct.videobuf_queue* %14, %struct.v4l2_buffer* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %3
  %23 = load %struct.videobuf_queue*, %struct.videobuf_queue** %7, align 8
  %24 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load i64, i64* @DST_QUEUE_OFF_BASE, align 8
  %30 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %29
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 8
  br label %37

37:                                               ; preds = %28, %22, %3
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local %struct.videobuf_queue* @v4l2_m2m_get_vq(%struct.v4l2_m2m_ctx*, i32) #1

declare dso_local i32 @videobuf_querybuf(%struct.videobuf_queue*, %struct.v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
