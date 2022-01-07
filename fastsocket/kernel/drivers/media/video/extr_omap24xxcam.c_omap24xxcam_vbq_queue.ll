; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_vbq_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_vbq_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.omap24xxcam_fh* }
%struct.omap24xxcam_fh = type { %struct.omap24xxcam_device* }
%struct.omap24xxcam_device = type { i32, i32, i32, i32, i32 }
%struct.videobuf_buffer = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@VIDEOBUF_ACTIVE = common dso_local global i32 0, align 4
@omap24xxcam_vbq_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to queue a video buffer for dma!\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"likely a bug in the driver!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.videobuf_queue*, %struct.videobuf_buffer*)* @omap24xxcam_vbq_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap24xxcam_vbq_queue(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.videobuf_buffer*, align 8
  %5 = alloca %struct.omap24xxcam_fh*, align 8
  %6 = alloca %struct.omap24xxcam_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %4, align 8
  %10 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %11 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %10, i32 0, i32 0
  %12 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %11, align 8
  store %struct.omap24xxcam_fh* %12, %struct.omap24xxcam_fh** %5, align 8
  %13 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %5, align 8
  %14 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %13, i32 0, i32 0
  %15 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %14, align 8
  store %struct.omap24xxcam_device* %15, %struct.omap24xxcam_device** %6, align 8
  %16 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @VIDEOBUF_ACTIVE, align 4
  %20 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %5, align 8
  %23 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %22, i32 0, i32 0
  %24 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %23, align 8
  %25 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %24, i32 0, i32 4
  %26 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %27 = call %struct.TYPE_2__* @videobuf_to_dma(%struct.videobuf_buffer* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %31 = call %struct.TYPE_2__* @videobuf_to_dma(%struct.videobuf_buffer* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @omap24xxcam_vbq_complete, align 4
  %38 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %39 = call i32 @omap24xxcam_sgdma_queue(i32* %25, i32 %29, i32 %33, i32 %36, i32 %37, %struct.videobuf_buffer* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %65, label %42

42:                                               ; preds = %2
  %43 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %6, align 8
  %44 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %43, i32 0, i32 2
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %6, align 8
  %48 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %60

52:                                               ; preds = %42
  %53 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %6, align 8
  %54 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %53, i32 0, i32 3
  %55 = call i32 @atomic_read(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %6, align 8
  %59 = call i32 @omap24xxcam_core_enable(%struct.omap24xxcam_device* %58)
  br label %60

60:                                               ; preds = %57, %52, %42
  %61 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %6, align 8
  %62 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %61, i32 0, i32 2
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  br label %77

65:                                               ; preds = %2
  %66 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %6, align 8
  %67 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %6, align 8
  %71 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %76 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %65, %60
  ret void
}

declare dso_local i32 @omap24xxcam_sgdma_queue(i32*, i32, i32, i32, i32, %struct.videobuf_buffer*) #1

declare dso_local %struct.TYPE_2__* @videobuf_to_dma(%struct.videobuf_buffer*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @omap24xxcam_core_enable(%struct.omap24xxcam_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
