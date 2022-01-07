; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_dma_add_tail_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_dma_add_tail_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_camera_dev = type { i32, %struct.pxa_dma_desc** }
%struct.pxa_dma_desc = type { i32 }
%struct.pxa_buffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.pxa_dma_desc* }

@DDADR_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_camera_dev*, %struct.pxa_buffer*)* @pxa_dma_add_tail_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa_dma_add_tail_buf(%struct.pxa_camera_dev* %0, %struct.pxa_buffer* %1) #0 {
  %3 = alloca %struct.pxa_camera_dev*, align 8
  %4 = alloca %struct.pxa_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pxa_dma_desc*, align 8
  store %struct.pxa_camera_dev* %0, %struct.pxa_camera_dev** %3, align 8
  store %struct.pxa_buffer* %1, %struct.pxa_buffer** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %68, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %71

13:                                               ; preds = %7
  %14 = load %struct.pxa_buffer*, %struct.pxa_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load %struct.pxa_dma_desc*, %struct.pxa_dma_desc** %20, align 8
  %22 = load %struct.pxa_buffer*, %struct.pxa_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.pxa_dma_desc, %struct.pxa_dma_desc* %21, i64 %30
  store %struct.pxa_dma_desc* %31, %struct.pxa_dma_desc** %6, align 8
  %32 = load i32, i32* @DDADR_STOP, align 4
  %33 = load %struct.pxa_dma_desc*, %struct.pxa_dma_desc** %6, align 8
  %34 = getelementptr inbounds %struct.pxa_dma_desc, %struct.pxa_dma_desc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %36 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %35, i32 0, i32 1
  %37 = load %struct.pxa_dma_desc**, %struct.pxa_dma_desc*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.pxa_dma_desc*, %struct.pxa_dma_desc** %37, i64 %39
  %41 = load %struct.pxa_dma_desc*, %struct.pxa_dma_desc** %40, align 8
  %42 = icmp ne %struct.pxa_dma_desc* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %13
  %44 = load %struct.pxa_buffer*, %struct.pxa_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %53 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %52, i32 0, i32 1
  %54 = load %struct.pxa_dma_desc**, %struct.pxa_dma_desc*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.pxa_dma_desc*, %struct.pxa_dma_desc** %54, i64 %56
  %58 = load %struct.pxa_dma_desc*, %struct.pxa_dma_desc** %57, align 8
  %59 = getelementptr inbounds %struct.pxa_dma_desc, %struct.pxa_dma_desc* %58, i32 0, i32 0
  store i32 %51, i32* %59, align 4
  br label %60

60:                                               ; preds = %43, %13
  %61 = load %struct.pxa_dma_desc*, %struct.pxa_dma_desc** %6, align 8
  %62 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %63 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %62, i32 0, i32 1
  %64 = load %struct.pxa_dma_desc**, %struct.pxa_dma_desc*** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.pxa_dma_desc*, %struct.pxa_dma_desc** %64, i64 %66
  store %struct.pxa_dma_desc* %61, %struct.pxa_dma_desc** %67, align 8
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %7

71:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
