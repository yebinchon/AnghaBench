; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_buffer_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_buffer_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.vpif_fh* }
%struct.vpif_fh = type { %struct.channel_obj* }
%struct.channel_obj = type { %struct.common_obj* }
%struct.common_obj = type { i32 }
%struct.videobuf_buffer = type { i32, i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"vpif_buffer_queue\0A\00", align 1
@VIDEOBUF_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.videobuf_queue*, %struct.videobuf_buffer*)* @vpif_buffer_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpif_buffer_queue(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.videobuf_buffer*, align 8
  %5 = alloca %struct.vpif_fh*, align 8
  %6 = alloca %struct.channel_obj*, align 8
  %7 = alloca %struct.common_obj*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %4, align 8
  %8 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %9 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %8, i32 0, i32 0
  %10 = load %struct.vpif_fh*, %struct.vpif_fh** %9, align 8
  store %struct.vpif_fh* %10, %struct.vpif_fh** %5, align 8
  %11 = load %struct.vpif_fh*, %struct.vpif_fh** %5, align 8
  %12 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %11, i32 0, i32 0
  %13 = load %struct.channel_obj*, %struct.channel_obj** %12, align 8
  store %struct.channel_obj* %13, %struct.channel_obj** %6, align 8
  %14 = load %struct.channel_obj*, %struct.channel_obj** %6, align 8
  %15 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %14, i32 0, i32 0
  %16 = load %struct.common_obj*, %struct.common_obj** %15, align 8
  %17 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %18 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %16, i64 %17
  store %struct.common_obj* %18, %struct.common_obj** %7, align 8
  %19 = load i32, i32* @debug, align 4
  %20 = call i32 @vpif_dbg(i32 2, i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %21, i32 0, i32 1
  %23 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %24 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %23, i32 0, i32 0
  %25 = call i32 @list_add_tail(i32* %22, i32* %24)
  %26 = load i32, i32* @VIDEOBUF_QUEUED, align 4
  %27 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
