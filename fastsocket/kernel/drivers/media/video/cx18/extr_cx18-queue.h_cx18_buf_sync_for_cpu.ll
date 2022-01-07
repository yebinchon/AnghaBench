; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-queue.h_cx18_buf_sync_for_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-queue.h_cx18_buf_sync_for_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_stream = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cx18_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18_stream*, %struct.cx18_buffer*)* @cx18_buf_sync_for_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_buf_sync_for_cpu(%struct.cx18_stream* %0, %struct.cx18_buffer* %1) #0 {
  %3 = alloca %struct.cx18_stream*, align 8
  %4 = alloca %struct.cx18_buffer*, align 8
  store %struct.cx18_stream* %0, %struct.cx18_stream** %3, align 8
  store %struct.cx18_buffer* %1, %struct.cx18_buffer** %4, align 8
  %5 = load %struct.cx18_stream*, %struct.cx18_stream** %3, align 8
  %6 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cx18_buffer*, %struct.cx18_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.cx18_buffer, %struct.cx18_buffer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cx18_stream*, %struct.cx18_stream** %3, align 8
  %14 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cx18_stream*, %struct.cx18_stream** %3, align 8
  %17 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pci_dma_sync_single_for_cpu(i32 %9, i32 %12, i32 %15, i32 %18)
  ret void
}

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
