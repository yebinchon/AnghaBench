; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-sg.c_videobuf_dma_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-sg.c_videobuf_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_dmabuf = type { i32, i32, i64, i32*, i32*, i32, i32 }

@MAGIC_DMABUF = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @videobuf_dma_free(%struct.videobuf_dmabuf* %0) #0 {
  %2 = alloca %struct.videobuf_dmabuf*, align 8
  %3 = alloca i32, align 4
  store %struct.videobuf_dmabuf* %0, %struct.videobuf_dmabuf** %2, align 8
  %4 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %5 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MAGIC_DMABUF, align 4
  %8 = call i32 @MAGIC_CHECK(i32 %6, i32 %7)
  %9 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %10 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %14 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %33, %17
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %21 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %26 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @page_cache_release(i32 %31)
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %18

36:                                               ; preds = %18
  %37 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %38 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @kfree(i32* %39)
  %41 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %42 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %41, i32 0, i32 4
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %36, %1
  %44 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %45 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @vfree(i32* %46)
  %48 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %49 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %48, i32 0, i32 3
  store i32* null, i32** %49, align 8
  %50 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %51 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %56 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %43
  %58 = load i32, i32* @DMA_NONE, align 4
  %59 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %60 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  ret i32 0
}

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @page_cache_release(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
