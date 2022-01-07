; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-core.c_cx23885_free_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-core.c_cx23885_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i32 }
%struct.cx23885_buffer = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.videobuf_dmabuf = type { i32 }

@VIDEOBUF_NEEDS_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx23885_free_buffer(%struct.videobuf_queue* %0, %struct.cx23885_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.cx23885_buffer*, align 8
  %5 = alloca %struct.videobuf_dmabuf*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.cx23885_buffer* %1, %struct.cx23885_buffer** %4, align 8
  %6 = load %struct.cx23885_buffer*, %struct.cx23885_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.cx23885_buffer, %struct.cx23885_buffer* %6, i32 0, i32 0
  %8 = call %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.TYPE_3__* %7)
  store %struct.videobuf_dmabuf* %8, %struct.videobuf_dmabuf** %5, align 8
  %9 = call i32 (...) @in_interrupt()
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %12 = load %struct.cx23885_buffer*, %struct.cx23885_buffer** %4, align 8
  %13 = getelementptr inbounds %struct.cx23885_buffer, %struct.cx23885_buffer* %12, i32 0, i32 0
  %14 = call i32 @videobuf_waiton(%struct.videobuf_queue* %11, %struct.TYPE_3__* %13, i32 0, i32 0)
  %15 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %16 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %19 = call i32 @videobuf_dma_unmap(i32 %17, %struct.videobuf_dmabuf* %18)
  %20 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %21 = call i32 @videobuf_dma_free(%struct.videobuf_dmabuf* %20)
  %22 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %23 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @to_pci_dev(i32 %24)
  %26 = load %struct.cx23885_buffer*, %struct.cx23885_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.cx23885_buffer, %struct.cx23885_buffer* %26, i32 0, i32 1
  %28 = call i32 @btcx_riscmem_free(i32 %25, i32* %27)
  %29 = load i32, i32* @VIDEOBUF_NEEDS_INIT, align 4
  %30 = load %struct.cx23885_buffer*, %struct.cx23885_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.cx23885_buffer, %struct.cx23885_buffer* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  ret void
}

declare dso_local %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.TYPE_3__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @videobuf_waiton(%struct.videobuf_queue*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @videobuf_dma_unmap(i32, %struct.videobuf_dmabuf*) #1

declare dso_local i32 @videobuf_dma_free(%struct.videobuf_dmabuf*) #1

declare dso_local i32 @btcx_riscmem_free(i32, i32*) #1

declare dso_local i32 @to_pci_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
