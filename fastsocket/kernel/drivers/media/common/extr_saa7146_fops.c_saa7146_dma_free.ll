; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_saa7146_dma_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_saa7146_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i32 }
%struct.videobuf_queue = type { i32 }
%struct.saa7146_buf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.videobuf_dmabuf = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"dev:%p, buf:%p\0A\00", align 1
@VIDEOBUF_NEEDS_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7146_dma_free(%struct.saa7146_dev* %0, %struct.videobuf_queue* %1, %struct.saa7146_buf* %2) #0 {
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.videobuf_queue*, align 8
  %6 = alloca %struct.saa7146_buf*, align 8
  %7 = alloca %struct.videobuf_dmabuf*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.videobuf_queue* %1, %struct.videobuf_queue** %5, align 8
  store %struct.saa7146_buf* %2, %struct.saa7146_buf** %6, align 8
  %8 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %9 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %8, i32 0, i32 0
  %10 = call %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.TYPE_3__* %9)
  store %struct.videobuf_dmabuf* %10, %struct.videobuf_dmabuf** %7, align 8
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %12 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %13 = bitcast %struct.saa7146_buf* %12 to i8*
  %14 = call i32 @DEB_EE(i8* %13)
  %15 = call i32 (...) @in_interrupt()
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %18 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %19 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %18, i32 0, i32 0
  %20 = call i32 @videobuf_waiton(%struct.videobuf_queue* %17, %struct.TYPE_3__* %19, i32 0, i32 0)
  %21 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %22 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %7, align 8
  %25 = call i32 @videobuf_dma_unmap(i32 %23, %struct.videobuf_dmabuf* %24)
  %26 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %7, align 8
  %27 = call i32 @videobuf_dma_free(%struct.videobuf_dmabuf* %26)
  %28 = load i32, i32* @VIDEOBUF_NEEDS_INIT, align 4
  %29 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %30 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  ret void
}

declare dso_local %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.TYPE_3__*) #1

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @videobuf_waiton(%struct.videobuf_queue*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @videobuf_dma_unmap(i32, %struct.videobuf_dmabuf*) #1

declare dso_local i32 @videobuf_dma_free(%struct.videobuf_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
