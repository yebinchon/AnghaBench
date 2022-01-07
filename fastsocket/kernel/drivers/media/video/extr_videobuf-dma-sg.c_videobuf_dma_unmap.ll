; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-sg.c_videobuf_dma_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-sg.c_videobuf_dma_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.videobuf_dmabuf = type { i64, i32*, i32, i32 }

@MAGIC_DMABUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @videobuf_dma_unmap(%struct.device* %0, %struct.videobuf_dmabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.videobuf_dmabuf*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.videobuf_dmabuf* %1, %struct.videobuf_dmabuf** %5, align 8
  %6 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %7 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MAGIC_DMABUF, align 4
  %10 = call i32 @MAGIC_CHECK(i32 %8, i32 %9)
  %11 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %12 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %19 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %22 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %25 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dma_unmap_sg(%struct.device* %17, i32* %20, i64 %23, i32 %26)
  %28 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %29 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @vfree(i32* %30)
  %32 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %33 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %35 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %16, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32*, i64, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
