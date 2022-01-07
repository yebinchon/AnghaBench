; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-queue.c_ivtv_stream_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-queue.c_ivtv_stream_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_stream = type { i32, i64, i64, i64, %struct.ivtv_buffer*, %struct.ivtv_buffer*, %struct.ivtv_buffer*, %struct.TYPE_2__*, i32, i32 }
%struct.ivtv_buffer = type { i64, %struct.ivtv_buffer* }
%struct.TYPE_2__ = type { i32 }

@IVTV_DMA_UNMAPPED = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_stream_free(%struct.ivtv_stream* %0) #0 {
  %2 = alloca %struct.ivtv_stream*, align 8
  %3 = alloca %struct.ivtv_buffer*, align 8
  store %struct.ivtv_stream* %0, %struct.ivtv_stream** %2, align 8
  %4 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %5 = call i32 @ivtv_flush_queues(%struct.ivtv_stream* %4)
  br label %6

6:                                                ; preds = %33, %1
  %7 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %8 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %9 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %8, i32 0, i32 9
  %10 = call %struct.ivtv_buffer* @ivtv_dequeue(%struct.ivtv_stream* %7, i32* %9)
  store %struct.ivtv_buffer* %10, %struct.ivtv_buffer** %3, align 8
  %11 = icmp ne %struct.ivtv_buffer* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %6
  %13 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %14 = call i64 @ivtv_might_use_dma(%struct.ivtv_stream* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %18 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %17, i32 0, i32 7
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %3, align 8
  %23 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %26 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 256
  %29 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %30 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pci_unmap_single(i32 %21, i64 %24, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %16, %12
  %34 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %3, align 8
  %35 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %34, i32 0, i32 1
  %36 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %35, align 8
  %37 = call i32 @kfree(%struct.ivtv_buffer* %36)
  %38 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %3, align 8
  %39 = call i32 @kfree(%struct.ivtv_buffer* %38)
  br label %6

40:                                               ; preds = %6
  %41 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %42 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %41, i32 0, i32 4
  %43 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %42, align 8
  %44 = icmp ne %struct.ivtv_buffer* %43, null
  br i1 %44, label %45, label %88

45:                                               ; preds = %40
  %46 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %47 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IVTV_DMA_UNMAPPED, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %53 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %52, i32 0, i32 7
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %58 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %61 = call i32 @pci_unmap_single(i32 %56, i64 %59, i32 4, i32 %60)
  %62 = load i64, i64* @IVTV_DMA_UNMAPPED, align 8
  %63 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %64 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %51, %45
  %66 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %67 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %66, i32 0, i32 6
  %68 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %67, align 8
  %69 = call i32 @kfree(%struct.ivtv_buffer* %68)
  %70 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %71 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %70, i32 0, i32 5
  %72 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %71, align 8
  %73 = call i32 @kfree(%struct.ivtv_buffer* %72)
  %74 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %75 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %74, i32 0, i32 4
  %76 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %75, align 8
  %77 = call i32 @kfree(%struct.ivtv_buffer* %76)
  %78 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %79 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %78, i32 0, i32 6
  store %struct.ivtv_buffer* null, %struct.ivtv_buffer** %79, align 8
  %80 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %81 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %80, i32 0, i32 5
  store %struct.ivtv_buffer* null, %struct.ivtv_buffer** %81, align 8
  %82 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %83 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %82, i32 0, i32 4
  store %struct.ivtv_buffer* null, %struct.ivtv_buffer** %83, align 8
  %84 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %85 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %87 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %65, %40
  ret void
}

declare dso_local i32 @ivtv_flush_queues(%struct.ivtv_stream*) #1

declare dso_local %struct.ivtv_buffer* @ivtv_dequeue(%struct.ivtv_stream*, i32*) #1

declare dso_local i64 @ivtv_might_use_dma(%struct.ivtv_stream*) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.ivtv_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
