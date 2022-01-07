; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_chan_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_chan_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.dma_chan_request = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.mx3_camera_pdata* }
%struct.mx3_camera_pdata = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*)* @chan_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chan_filter(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dma_chan_request*, align 8
  %7 = alloca %struct.mx3_camera_pdata*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.dma_chan_request*
  store %struct.dma_chan_request* %9, %struct.dma_chan_request** %6, align 8
  %10 = load %struct.dma_chan_request*, %struct.dma_chan_request** %6, align 8
  %11 = icmp ne %struct.dma_chan_request* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load %struct.dma_chan_request*, %struct.dma_chan_request** %6, align 8
  %15 = getelementptr inbounds %struct.dma_chan_request, %struct.dma_chan_request* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.mx3_camera_pdata*, %struct.mx3_camera_pdata** %21, align 8
  store %struct.mx3_camera_pdata* %22, %struct.mx3_camera_pdata** %7, align 8
  %23 = load %struct.dma_chan_request*, %struct.dma_chan_request** %6, align 8
  %24 = getelementptr inbounds %struct.dma_chan_request, %struct.dma_chan_request* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %27 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %13
  %31 = load %struct.mx3_camera_pdata*, %struct.mx3_camera_pdata** %7, align 8
  %32 = getelementptr inbounds %struct.mx3_camera_pdata, %struct.mx3_camera_pdata* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %35 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %33, %38
  br label %40

40:                                               ; preds = %30, %13
  %41 = phi i1 [ false, %13 ], [ %39, %30 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
