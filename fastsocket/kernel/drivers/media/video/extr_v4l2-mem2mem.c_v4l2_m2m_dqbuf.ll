; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-mem2mem.c_v4l2_m2m_dqbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-mem2mem.c_v4l2_m2m_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_m2m_ctx = type { i32 }
%struct.v4l2_buffer = type { i32 }
%struct.videobuf_queue = type { i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_m2m_dqbuf(%struct.file* %0, %struct.v4l2_m2m_ctx* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.v4l2_m2m_ctx*, align 8
  %6 = alloca %struct.v4l2_buffer*, align 8
  %7 = alloca %struct.videobuf_queue*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.v4l2_m2m_ctx* %1, %struct.v4l2_m2m_ctx** %5, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %6, align 8
  %8 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %5, align 8
  %9 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %10 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.videobuf_queue* @v4l2_m2m_get_vq(%struct.v4l2_m2m_ctx* %8, i32 %11)
  store %struct.videobuf_queue* %12, %struct.videobuf_queue** %7, align 8
  %13 = load %struct.videobuf_queue*, %struct.videobuf_queue** %7, align 8
  %14 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @O_NONBLOCK, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @videobuf_dqbuf(%struct.videobuf_queue* %13, %struct.v4l2_buffer* %14, i32 %19)
  ret i32 %20
}

declare dso_local %struct.videobuf_queue* @v4l2_m2m_get_vq(%struct.v4l2_m2m_ctx*, i32) #1

declare dso_local i32 @videobuf_dqbuf(%struct.videobuf_queue*, %struct.v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
