; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-417.c_bb_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-417.c_bb_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.cx23885_fh* }
%struct.cx23885_fh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.videobuf_buffer = type { i32 }
%struct.cx23885_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, i32)* @bb_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bb_buf_prepare(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca %struct.videobuf_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cx23885_fh*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %9 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %8, i32 0, i32 0
  %10 = load %struct.cx23885_fh*, %struct.cx23885_fh** %9, align 8
  store %struct.cx23885_fh* %10, %struct.cx23885_fh** %7, align 8
  %11 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %12 = load %struct.cx23885_fh*, %struct.cx23885_fh** %7, align 8
  %13 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %17 = bitcast %struct.videobuf_buffer* %16 to %struct.cx23885_buffer*
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @cx23885_buf_prepare(%struct.videobuf_queue* %11, i32* %15, %struct.cx23885_buffer* %17, i32 %18)
  ret i32 %19
}

declare dso_local i32 @cx23885_buf_prepare(%struct.videobuf_queue*, i32*, %struct.cx23885_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
