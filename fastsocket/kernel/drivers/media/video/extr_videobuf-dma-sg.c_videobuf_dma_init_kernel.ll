; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-sg.c_videobuf_dma_init_kernel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-sg.c_videobuf_dma_init_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_dmabuf = type { i32, i32, i32* }

@.str = private unnamed_addr constant [24 x i8] c"init kernel [%d pages]\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"vmalloc_32(%d pages) failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"vmalloc is at addr 0x%08lx, size=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @videobuf_dma_init_kernel(%struct.videobuf_dmabuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.videobuf_dmabuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.videobuf_dmabuf* %0, %struct.videobuf_dmabuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = call i32 (i32, i8*, i64, ...) @dprintk(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %13 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @PAGE_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = call i32* @vmalloc_32(i32 %16)
  %18 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %19 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %21 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* null, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = call i32 (i32, i8*, i64, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %49

30:                                               ; preds = %3
  %31 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %32 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = ptrtoint i32* %33 to i64
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @PAGE_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = call i32 (i32, i8*, i64, ...) @dprintk(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %34, i32 %37)
  %39 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %40 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @PAGE_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = call i32 @memset(i32* %41, i32 0, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %48 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %30, %24
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @dprintk(i32, i8*, i64, ...) #1

declare dso_local i32* @vmalloc_32(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
