; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_vbq_free_mmap_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_vbq_free_mmap_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i32, %struct.TYPE_6__**, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 (%struct.videobuf_queue*, %struct.TYPE_6__*)* }

@VIDEO_MAX_FRAME = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.videobuf_queue*)* @omap24xxcam_vbq_free_mmap_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap24xxcam_vbq_free_mmap_buffers(%struct.videobuf_queue* %0) #0 {
  %2 = alloca %struct.videobuf_queue*, align 8
  %3 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %2, align 8
  %4 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %5 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %71, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %74

11:                                               ; preds = %7
  %12 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %13 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %14, i64 %16
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp eq %struct.TYPE_6__* null, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %71

21:                                               ; preds = %11
  %22 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %23 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %24 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %22, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %71

34:                                               ; preds = %21
  %35 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %36 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32 (%struct.videobuf_queue*, %struct.TYPE_6__*)*, i32 (%struct.videobuf_queue*, %struct.TYPE_6__*)** %38, align 8
  %40 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %41 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %42 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %43, i64 %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call i32 %39(%struct.videobuf_queue* %40, %struct.TYPE_6__* %47)
  %49 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %50 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %51, i64 %53
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = call i32 @omap24xxcam_vbq_free_mmap_buffer(%struct.TYPE_6__* %55)
  %57 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %58 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 %61
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 @kfree(%struct.TYPE_6__* %63)
  %65 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %66 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %67, i64 %69
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %70, align 8
  br label %71

71:                                               ; preds = %34, %33, %20
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %7

74:                                               ; preds = %7
  %75 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %76 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %79 = call i32 @videobuf_mmap_free(%struct.videobuf_queue* %78)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @omap24xxcam_vbq_free_mmap_buffer(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @videobuf_mmap_free(%struct.videobuf_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
