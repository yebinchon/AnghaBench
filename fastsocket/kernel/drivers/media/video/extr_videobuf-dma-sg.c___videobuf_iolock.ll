; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-sg.c___videobuf_iolock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-sg.c___videobuf_iolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i32 }
%struct.videobuf_buffer = type { i32, i32, i64, i32, i32, %struct.videobuf_dma_sg_memory* }
%struct.videobuf_dma_sg_memory = type { i32, i32 }
%struct.v4l2_framebuffer = type { i64 }

@MAGIC_SG_MEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, %struct.v4l2_framebuffer*)* @__videobuf_iolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__videobuf_iolock(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1, %struct.v4l2_framebuffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.videobuf_queue*, align 8
  %6 = alloca %struct.videobuf_buffer*, align 8
  %7 = alloca %struct.v4l2_framebuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.videobuf_dma_sg_memory*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %5, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %6, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %7, align 8
  %12 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %13 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %12, i32 0, i32 5
  %14 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %13, align 8
  store %struct.videobuf_dma_sg_memory* %14, %struct.videobuf_dma_sg_memory** %11, align 8
  %15 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %11, align 8
  %16 = icmp ne %struct.videobuf_dma_sg_memory* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %11, align 8
  %21 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MAGIC_SG_MEM, align 4
  %24 = call i32 @MAGIC_CHECK(i32 %22, i32 %23)
  %25 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %26 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %120 [
    i32 130, label %28
    i32 128, label %28
    i32 129, label %89
  ]

28:                                               ; preds = %3, %3
  %29 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %30 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 0, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PAGE_ALIGN(i32 %36)
  %38 = load i32, i32* @PAGE_SHIFT, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %11, align 8
  %41 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %40, i32 0, i32 0
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @videobuf_dma_init_kernel(i32* %41, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 0, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %134

49:                                               ; preds = %33
  br label %88

50:                                               ; preds = %28
  %51 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %52 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %11, align 8
  %57 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %56, i32 0, i32 0
  %58 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %59 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %63 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @videobuf_dma_init_user(i32* %57, i32 %58, i32 %61, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 0, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %55
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %134

70:                                               ; preds = %55
  br label %87

71:                                               ; preds = %50
  %72 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %11, align 8
  %73 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %72, i32 0, i32 0
  %74 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %75 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %76 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %79 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @videobuf_dma_init_user_locked(i32* %73, i32 %74, i32 %77, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 0, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %4, align 4
  br label %134

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %70
  br label %88

88:                                               ; preds = %87, %49
  br label %122

89:                                               ; preds = %3
  %90 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %91 = icmp eq %struct.v4l2_framebuffer* null, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %134

95:                                               ; preds = %89
  %96 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %100 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  store i64 %102, i64* %10, align 8
  %103 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %104 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @PAGE_ALIGN(i32 %105)
  %107 = load i32, i32* @PAGE_SHIFT, align 4
  %108 = ashr i32 %106, %107
  store i32 %108, i32* %9, align 4
  %109 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %11, align 8
  %110 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %109, i32 0, i32 0
  %111 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %112 = load i64, i64* %10, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @videobuf_dma_init_overlay(i32* %110, i32 %111, i64 %112, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 0, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %95
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %4, align 4
  br label %134

119:                                              ; preds = %95
  br label %122

120:                                              ; preds = %3
  %121 = call i32 (...) @BUG()
  br label %122

122:                                              ; preds = %120, %119, %88
  %123 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %124 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %11, align 8
  %127 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %126, i32 0, i32 0
  %128 = call i32 @videobuf_dma_map(i32 %125, i32* %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 0, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %122
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %4, align 4
  br label %134

133:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %131, %117, %92, %84, %68, %47
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @videobuf_dma_init_kernel(i32*, i32, i32) #1

declare dso_local i32 @videobuf_dma_init_user(i32*, i32, i32, i32) #1

declare dso_local i32 @videobuf_dma_init_user_locked(i32*, i32, i32, i32) #1

declare dso_local i32 @videobuf_dma_init_overlay(i32*, i32, i64, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @videobuf_dma_map(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
