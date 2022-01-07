; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_videobuf_iolock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_videobuf_iolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.videobuf_buffer = type { i32 }
%struct.v4l2_framebuffer = type { i32 }

@MAGIC_BUFFER = common dso_local global i32 0, align 4
@MAGIC_QTYPE_OPS = common dso_local global i32 0, align 4
@iolock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @videobuf_iolock(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1, %struct.v4l2_framebuffer* %2) #0 {
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca %struct.videobuf_buffer*, align 8
  %6 = alloca %struct.v4l2_framebuffer*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %5, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %6, align 8
  %7 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %8 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MAGIC_BUFFER, align 4
  %11 = call i32 @MAGIC_CHECK(i32 %9, i32 %10)
  %12 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %13 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MAGIC_QTYPE_OPS, align 4
  %18 = call i32 @MAGIC_CHECK(i32 %16, i32 %17)
  %19 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %20 = load i32, i32* @iolock, align 4
  %21 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %22 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %23 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %24 = call i32 @CALL(%struct.videobuf_queue* %19, i32 %20, %struct.videobuf_queue* %21, %struct.videobuf_buffer* %22, %struct.v4l2_framebuffer* %23)
  ret i32 %24
}

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @CALL(%struct.videobuf_queue*, i32, %struct.videobuf_queue*, %struct.videobuf_buffer*, %struct.v4l2_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
