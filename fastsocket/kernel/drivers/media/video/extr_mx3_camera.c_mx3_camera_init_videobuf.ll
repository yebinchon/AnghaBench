; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_mx3_camera_init_videobuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_mx3_camera_init_videobuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i32 }
%struct.soc_camera_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.soc_camera_host = type { %struct.mx3_camera_dev* }
%struct.mx3_camera_dev = type { i32 }

@mx3_videobuf_ops = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.videobuf_queue*, %struct.soc_camera_device*)* @mx3_camera_init_videobuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mx3_camera_init_videobuf(%struct.videobuf_queue* %0, %struct.soc_camera_device* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.soc_camera_host*, align 8
  %6 = alloca %struct.mx3_camera_dev*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.soc_camera_device* %1, %struct.soc_camera_device** %4, align 8
  %7 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %8 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %10)
  store %struct.soc_camera_host* %11, %struct.soc_camera_host** %5, align 8
  %12 = load %struct.soc_camera_host*, %struct.soc_camera_host** %5, align 8
  %13 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %12, i32 0, i32 0
  %14 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %13, align 8
  store %struct.mx3_camera_dev* %14, %struct.mx3_camera_dev** %6, align 8
  %15 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %16 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %17 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %6, align 8
  %21 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %20, i32 0, i32 0
  %22 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %23 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %24 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %25 = call i32 @videobuf_queue_dma_contig_init(%struct.videobuf_queue* %15, i32* @mx3_videobuf_ops, i32 %19, i32* %21, i32 %22, i32 %23, i32 4, %struct.soc_camera_device* %24)
  ret void
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @videobuf_queue_dma_contig_init(%struct.videobuf_queue*, i32*, i32, i32*, i32, i32, i32, %struct.soc_camera_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
