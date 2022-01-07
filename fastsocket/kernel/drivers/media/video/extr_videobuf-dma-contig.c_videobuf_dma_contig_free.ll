; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-contig.c_videobuf_dma_contig_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-contig.c_videobuf_dma_contig_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i32 }
%struct.videobuf_buffer = type { i64, i64, %struct.videobuf_dma_contig_memory* }
%struct.videobuf_dma_contig_memory = type { i32*, i32, i32, i32 }

@V4L2_MEMORY_USERPTR = common dso_local global i64 0, align 8
@MAGIC_DC_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @videobuf_dma_contig_free(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.videobuf_buffer*, align 8
  %5 = alloca %struct.videobuf_dma_contig_memory*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %4, align 8
  %6 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %6, i32 0, i32 2
  %8 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %7, align 8
  store %struct.videobuf_dma_contig_memory* %8, %struct.videobuf_dma_contig_memory** %5, align 8
  %9 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @V4L2_MEMORY_USERPTR, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %48

15:                                               ; preds = %2
  %16 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %5, align 8
  %17 = icmp ne %struct.videobuf_dma_contig_memory* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %48

19:                                               ; preds = %15
  %20 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %5, align 8
  %21 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MAGIC_DC_MEM, align 4
  %24 = call i32 @MAGIC_CHECK(i32 %22, i32 %23)
  %25 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %5, align 8
  %31 = call i32 @videobuf_dma_contig_user_put(%struct.videobuf_dma_contig_memory* %30)
  br label %48

32:                                               ; preds = %19
  %33 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %34 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %5, align 8
  %37 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %5, align 8
  %40 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %5, align 8
  %43 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dma_free_coherent(i32 %35, i32 %38, i32* %41, i32 %44)
  %46 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %5, align 8
  %47 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %32, %29, %18, %14
  ret void
}

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @videobuf_dma_contig_user_put(%struct.videobuf_dma_contig_memory*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
