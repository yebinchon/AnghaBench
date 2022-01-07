; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_free_buffer_with_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_free_buffer_with_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vino_framebuffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64*, i32, i32* }

@.str = private unnamed_addr constant [43 x i8] c"vino_free_buffer_with_count(): count = %d\0A\00", align 1
@VINO_PAGE_RATIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vino_framebuffer*, i32)* @vino_free_buffer_with_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vino_free_buffer_with_count(%struct.vino_framebuffer* %0, i32 %1) #0 {
  %3 = alloca %struct.vino_framebuffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vino_framebuffer* %0, %struct.vino_framebuffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %46, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %49

12:                                               ; preds = %8
  %13 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %14 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @virt_to_page(i8* %21)
  %23 = call i32 @ClearPageReserved(i32 %22)
  %24 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %25 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @VINO_PAGE_RATIO, align 4
  %29 = load i32, i32* %5, align 4
  %30 = mul i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %36 = call i32 @dma_unmap_single(i32* null, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %38 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @free_page(i64 %44)
  br label %46

46:                                               ; preds = %12
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %8

49:                                               ; preds = %8
  %50 = load i32, i32* @VINO_PAGE_RATIO, align 4
  %51 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %52 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 4
  %56 = mul i32 %50, %55
  %57 = zext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %61 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %66 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dma_free_coherent(i32* null, i32 %59, i8* %64, i32 %68)
  %70 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %71 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = call i32 @kfree(i64* %73)
  %75 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %76 = call i32 @memset(%struct.vino_framebuffer* %75, i32 0, i32 32)
  ret void
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @ClearPageReserved(i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @memset(%struct.vino_framebuffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
