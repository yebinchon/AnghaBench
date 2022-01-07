; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_pd_buf_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_pd_buf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.front_face* }
%struct.front_face = type { i32 }
%struct.videobuf_buffer = type { i32, i32 }

@VIDEOBUF_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.videobuf_queue*, %struct.videobuf_buffer*)* @pd_buf_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pd_buf_queue(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.videobuf_buffer*, align 8
  %5 = alloca %struct.front_face*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %4, align 8
  %6 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %7 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %6, i32 0, i32 0
  %8 = load %struct.front_face*, %struct.front_face** %7, align 8
  store %struct.front_face* %8, %struct.front_face** %5, align 8
  %9 = load i32, i32* @VIDEOBUF_QUEUED, align 4
  %10 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %13 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %12, i32 0, i32 0
  %14 = load %struct.front_face*, %struct.front_face** %5, align 8
  %15 = getelementptr inbounds %struct.front_face, %struct.front_face* %14, i32 0, i32 0
  %16 = call i32 @list_add_tail(i32* %13, i32* %15)
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
