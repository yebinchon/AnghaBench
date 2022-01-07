; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cafe_camera*)* @cafe_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cafe_shutdown(%struct.cafe_camera* %0) #0 {
  %2 = alloca %struct.cafe_camera*, align 8
  store %struct.cafe_camera* %0, %struct.cafe_camera** %2, align 8
  %3 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %4 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %9 = call i32 @cafe_free_sio_buffers(%struct.cafe_camera* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %12 = call i32 @cafe_ctlr_stop_dma(%struct.cafe_camera* %11)
  %13 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %14 = call i32 @cafe_ctlr_power_down(%struct.cafe_camera* %13)
  %15 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %16 = call i32 @cafe_smbus_shutdown(%struct.cafe_camera* %15)
  %17 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %18 = call i32 @cafe_free_dma_bufs(%struct.cafe_camera* %17)
  %19 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %20 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %25 = call i32 @free_irq(i32 %23, %struct.cafe_camera* %24)
  %26 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %27 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %30 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pci_iounmap(%struct.TYPE_2__* %28, i32 %31)
  %33 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %34 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %33, i32 0, i32 1
  %35 = call i32 @video_unregister_device(i32* %34)
  ret void
}

declare dso_local i32 @cafe_free_sio_buffers(%struct.cafe_camera*) #1

declare dso_local i32 @cafe_ctlr_stop_dma(%struct.cafe_camera*) #1

declare dso_local i32 @cafe_ctlr_power_down(%struct.cafe_camera*) #1

declare dso_local i32 @cafe_smbus_shutdown(%struct.cafe_camera*) #1

declare dso_local i32 @cafe_free_dma_bufs(%struct.cafe_camera*) #1

declare dso_local i32 @free_irq(i32, %struct.cafe_camera*) #1

declare dso_local i32 @pci_iounmap(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @video_unregister_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
