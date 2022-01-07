; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx1_camera.c_mx1_camera_setup_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx1_camera.c_mx1_camera_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx1_camera_dev = type { %struct.TYPE_5__*, i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { %struct.videobuf_buffer }
%struct.videobuf_buffer = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"DMA End IRQ with no active buffer\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@CSIRXR = common dso_local global i64 0, align 8
@DMA_MODE_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to setup DMA sg list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mx1_camera_dev*)* @mx1_camera_setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx1_camera_setup_dma(%struct.mx1_camera_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mx1_camera_dev*, align 8
  %4 = alloca %struct.videobuf_buffer*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.mx1_camera_dev* %0, %struct.mx1_camera_dev** %3, align 8
  %7 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %7, i32 0, i32 2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store %struct.videobuf_buffer* %10, %struct.videobuf_buffer** %4, align 8
  %11 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %11, i32 0, i32 3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %17, i32 0, i32 2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EFAULT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %56

30:                                               ; preds = %1
  %31 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %3, align 8
  %32 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %35 = call i32 @videobuf_to_dma_contig(%struct.videobuf_buffer* %34)
  %36 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CSIRXR, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* @DMA_MODE_READ, align 4
  %47 = call i32 @imx_dma_setup_single(i32 %33, i32 %35, i32 %38, i64 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %30
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %30
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %25
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @imx_dma_setup_single(i32, i32, i32, i64, i32) #1

declare dso_local i32 @videobuf_to_dma_contig(%struct.videobuf_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
