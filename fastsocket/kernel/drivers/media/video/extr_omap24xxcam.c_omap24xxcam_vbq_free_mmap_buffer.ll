; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_vbq_free_mmap_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_vbq_free_mmap_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_buffer = type { i32 }
%struct.videobuf_dmabuf = type { i32, i32* }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.videobuf_buffer*)* @omap24xxcam_vbq_free_mmap_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap24xxcam_vbq_free_mmap_buffer(%struct.videobuf_buffer* %0) #0 {
  %2 = alloca %struct.videobuf_buffer*, align 8
  %3 = alloca %struct.videobuf_dmabuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  store %struct.videobuf_buffer* %0, %struct.videobuf_buffer** %2, align 8
  %7 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %2, align 8
  %8 = call %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.videobuf_buffer* %7)
  store %struct.videobuf_dmabuf* %8, %struct.videobuf_dmabuf** %3, align 8
  %9 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %3, align 8
  %10 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %72

14:                                               ; preds = %1
  %15 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %3, align 8
  %16 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %48, %14
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %65

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %6, align 4
  %24 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %3, align 8
  %25 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i64 @sg_dma_len(i32* %29)
  store i64 %30, i64* %4, align 8
  %31 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %3, align 8
  %32 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call %struct.page* @sg_page(i32* %36)
  store %struct.page* %37, %struct.page** %5, align 8
  br label %38

38:                                               ; preds = %43, %21
  %39 = load %struct.page*, %struct.page** %5, align 8
  %40 = getelementptr inbounds %struct.page, %struct.page* %39, i32 1
  store %struct.page* %40, %struct.page** %5, align 8
  %41 = ptrtoint %struct.page* %39 to i32
  %42 = call i32 @ClearPageReserved(i32 %41)
  br label %43

43:                                               ; preds = %38
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = load i64, i64* %4, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %38, label %48

48:                                               ; preds = %43
  %49 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %3, align 8
  %50 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call %struct.page* @sg_page(i32* %54)
  %56 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %3, align 8
  %57 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call i64 @sg_dma_len(i32* %61)
  %63 = call i32 @get_order(i64 %62)
  %64 = call i32 @__free_pages(%struct.page* %55, i32 %63)
  br label %18

65:                                               ; preds = %18
  %66 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %3, align 8
  %67 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @kfree(i32* %68)
  %70 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %3, align 8
  %71 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %65, %13
  ret void
}

declare dso_local %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.videobuf_buffer*) #1

declare dso_local i64 @sg_dma_len(i32*) #1

declare dso_local %struct.page* @sg_page(i32*) #1

declare dso_local i32 @ClearPageReserved(i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
