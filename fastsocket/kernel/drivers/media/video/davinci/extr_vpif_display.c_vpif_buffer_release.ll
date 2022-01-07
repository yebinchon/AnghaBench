; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_buffer_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_buffer_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.videobuf_queue = type { %struct.vpif_fh* }
%struct.vpif_fh = type { %struct.channel_obj* }
%struct.channel_obj = type { i64, %struct.common_obj* }
%struct.common_obj = type { i64 }
%struct.videobuf_buffer = type { i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@VIDEOBUF_NEEDS_INIT = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@config_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.videobuf_queue*, %struct.videobuf_buffer*)* @vpif_buffer_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpif_buffer_release(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.videobuf_buffer*, align 8
  %5 = alloca %struct.vpif_fh*, align 8
  %6 = alloca %struct.channel_obj*, align 8
  %7 = alloca %struct.common_obj*, align 8
  %8 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %4, align 8
  %9 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %10 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %9, i32 0, i32 0
  %11 = load %struct.vpif_fh*, %struct.vpif_fh** %10, align 8
  store %struct.vpif_fh* %11, %struct.vpif_fh** %5, align 8
  %12 = load %struct.vpif_fh*, %struct.vpif_fh** %5, align 8
  %13 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %12, i32 0, i32 0
  %14 = load %struct.channel_obj*, %struct.channel_obj** %13, align 8
  store %struct.channel_obj* %14, %struct.channel_obj** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.channel_obj*, %struct.channel_obj** %6, align 8
  %16 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %15, i32 0, i32 1
  %17 = load %struct.common_obj*, %struct.common_obj** %16, align 8
  %18 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %19 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %17, i64 %18
  store %struct.common_obj* %19, %struct.common_obj** %7, align 8
  %20 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %21 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %22 = call i32 @videobuf_dma_contig_free(%struct.videobuf_queue* %20, %struct.videobuf_buffer* %21)
  %23 = load i32, i32* @VIDEOBUF_NEEDS_INIT, align 4
  %24 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %27 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %28 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %39

32:                                               ; preds = %2
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config_params, i32 0, i32 0), align 8
  %34 = load %struct.channel_obj*, %struct.channel_obj** %6, align 8
  %35 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %32, %31
  ret void
}

declare dso_local i32 @videobuf_dma_contig_free(%struct.videobuf_queue*, %struct.videobuf_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
