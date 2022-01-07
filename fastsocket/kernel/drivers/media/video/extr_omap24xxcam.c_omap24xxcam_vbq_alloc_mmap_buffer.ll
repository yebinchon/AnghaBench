; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_vbq_alloc_mmap_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_vbq_alloc_mmap_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_buffer = type { i64 }
%struct.page = type { i32 }
%struct.videobuf_dmabuf = type { i32, i64, i64, i32* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_buffer*)* @omap24xxcam_vbq_alloc_mmap_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap24xxcam_vbq_alloc_mmap_buffer(%struct.videobuf_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.videobuf_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.videobuf_dmabuf*, align 8
  store %struct.videobuf_buffer* %0, %struct.videobuf_buffer** %3, align 8
  %12 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %3, align 8
  %16 = call %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.videobuf_buffer* %15)
  store %struct.videobuf_dmabuf* %16, %struct.videobuf_dmabuf** %11, align 8
  %17 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %3, align 8
  %18 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = zext i32 %20 to i64
  %22 = lshr i64 %19, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kcalloc(i32 %24, i32 4, i32 %25)
  %27 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %11, align 8
  %28 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %27, i32 0, i32 3
  store i32* %26, i32** %28, align 8
  %29 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %11, align 8
  %30 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  br label %131

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %121, %36
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %122

40:                                               ; preds = %37
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @get_order(i64 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load i32, i32* %4, align 4
  %45 = shl i32 %43, %44
  %46 = zext i32 %45 to i64
  %47 = load i64, i64* %6, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, -1
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %40
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = load i32, i32* @GFP_DMA, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %4, align 4
  %57 = call %struct.page* @alloc_pages(i32 %55, i32 %56)
  store %struct.page* %57, %struct.page** %7, align 8
  br label %58

58:                                               ; preds = %77, %52
  %59 = load %struct.page*, %struct.page** %7, align 8
  %60 = icmp eq %struct.page* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load i32, i32* %4, align 4
  %63 = add i32 %62, -1
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = load i32, i32* @GFP_DMA, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %4, align 4
  %68 = call %struct.page* @alloc_pages(i32 %66, i32 %67)
  store %struct.page* %68, %struct.page** %7, align 8
  %69 = load %struct.page*, %struct.page** %7, align 8
  %70 = icmp eq %struct.page* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %61
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %131

77:                                               ; preds = %71, %61
  br label %58

78:                                               ; preds = %58
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = load i32, i32* %4, align 4
  %81 = shl i32 %79, %80
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* %6, align 8
  %84 = sub i64 %83, %82
  store i64 %84, i64* %6, align 8
  %85 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %11, align 8
  %86 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load %struct.page*, %struct.page** %7, align 8
  %92 = load i32, i32* @PAGE_SIZE, align 4
  %93 = load i32, i32* %4, align 4
  %94 = shl i32 %92, %93
  %95 = call i32 @sg_set_page(i32* %90, %struct.page* %91, i32 %94, i32 0)
  %96 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %11, align 8
  %97 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = load i32, i32* %4, align 4
  %104 = shl i32 %102, %103
  %105 = zext i32 %104 to i64
  store i64 %105, i64* %5, align 8
  %106 = load %struct.page*, %struct.page** %7, align 8
  %107 = call i32 @page_address(%struct.page* %106)
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @memset(i32 %107, i32 0, i64 %108)
  br label %110

110:                                              ; preds = %115, %78
  %111 = load %struct.page*, %struct.page** %7, align 8
  %112 = getelementptr inbounds %struct.page, %struct.page* %111, i32 1
  store %struct.page* %112, %struct.page** %7, align 8
  %113 = ptrtoint %struct.page* %111 to i32
  %114 = call i32 @SetPageReserved(i32 %113)
  br label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* %5, align 8
  %119 = sub i64 %118, %117
  store i64 %119, i64* %5, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %110, label %121

121:                                              ; preds = %115
  br label %37

122:                                              ; preds = %37
  %123 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %11, align 8
  %124 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %11, align 8
  %127 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %126, i32 0, i32 2
  store i64 %125, i64* %127, align 8
  %128 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %129 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %11, align 8
  %130 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  store i32 0, i32* %2, align 4
  br label %135

131:                                              ; preds = %74, %33
  %132 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %3, align 8
  %133 = call i32 @omap24xxcam_vbq_free_mmap_buffer(%struct.videobuf_buffer* %132)
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %131, %122
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.videobuf_buffer*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @sg_set_page(i32*, %struct.page*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @SetPageReserved(i32) #1

declare dso_local i32 @omap24xxcam_vbq_free_mmap_buffer(%struct.videobuf_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
