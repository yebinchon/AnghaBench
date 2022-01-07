; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-mem2mem.c_v4l2_m2m_buf_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-mem2mem.c_v4l2_m2m_buf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_m2m_ctx = type { i32 }
%struct.videobuf_queue = type { i32 }
%struct.videobuf_buffer = type { i32, i32 }
%struct.v4l2_m2m_queue_ctx = type { i32, i32 }

@VIDEOBUF_QUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_m2m_buf_queue(%struct.v4l2_m2m_ctx* %0, %struct.videobuf_queue* %1, %struct.videobuf_buffer* %2) #0 {
  %4 = alloca %struct.v4l2_m2m_ctx*, align 8
  %5 = alloca %struct.videobuf_queue*, align 8
  %6 = alloca %struct.videobuf_buffer*, align 8
  %7 = alloca %struct.v4l2_m2m_queue_ctx*, align 8
  store %struct.v4l2_m2m_ctx* %0, %struct.v4l2_m2m_ctx** %4, align 8
  store %struct.videobuf_queue* %1, %struct.videobuf_queue** %5, align 8
  store %struct.videobuf_buffer* %2, %struct.videobuf_buffer** %6, align 8
  %8 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %9 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %10 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.v4l2_m2m_queue_ctx* @get_queue_ctx(%struct.v4l2_m2m_ctx* %8, i32 %11)
  store %struct.v4l2_m2m_queue_ctx* %12, %struct.v4l2_m2m_queue_ctx** %7, align 8
  %13 = load %struct.v4l2_m2m_queue_ctx*, %struct.v4l2_m2m_queue_ctx** %7, align 8
  %14 = icmp ne %struct.v4l2_m2m_queue_ctx* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %29

16:                                               ; preds = %3
  %17 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %17, i32 0, i32 1
  %19 = load %struct.v4l2_m2m_queue_ctx*, %struct.v4l2_m2m_queue_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx* %19, i32 0, i32 1
  %21 = call i32 @list_add_tail(i32* %18, i32* %20)
  %22 = load %struct.v4l2_m2m_queue_ctx*, %struct.v4l2_m2m_queue_ctx** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @VIDEOBUF_QUEUED, align 4
  %27 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.v4l2_m2m_queue_ctx* @get_queue_ctx(%struct.v4l2_m2m_ctx*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
