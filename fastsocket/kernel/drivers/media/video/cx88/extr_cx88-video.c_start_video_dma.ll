; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_start_video_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_start_video_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8800_dev = type { %struct.cx88_core* }
%struct.cx88_core = type { i32 }
%struct.cx88_dmaqueue = type { i32 }
%struct.cx88_buffer = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@cx88_sram_channels = common dso_local global i32* null, align 8
@SRAM_CH21 = common dso_local global i64 0, align 8
@MO_COLOR_CTRL = common dso_local global i32 0, align 4
@ColorFormatGamma = common dso_local global i32 0, align 4
@MO_VIDY_GPCNTRL = common dso_local global i32 0, align 4
@GP_COUNT_CONTROL_RESET = common dso_local global i32 0, align 4
@MO_PCI_INTMSK = common dso_local global i32 0, align 4
@PCI_INT_VIDINT = common dso_local global i32 0, align 4
@MO_VID_INTMSK = common dso_local global i32 0, align 4
@VID_CAPTURE_CONTROL = common dso_local global i32 0, align 4
@MO_DEV_CNTRL2 = common dso_local global i32 0, align 4
@MO_VID_DMACNTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx8800_dev*, %struct.cx88_dmaqueue*, %struct.cx88_buffer*)* @start_video_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_video_dma(%struct.cx8800_dev* %0, %struct.cx88_dmaqueue* %1, %struct.cx88_buffer* %2) #0 {
  %4 = alloca %struct.cx8800_dev*, align 8
  %5 = alloca %struct.cx88_dmaqueue*, align 8
  %6 = alloca %struct.cx88_buffer*, align 8
  %7 = alloca %struct.cx88_core*, align 8
  store %struct.cx8800_dev* %0, %struct.cx8800_dev** %4, align 8
  store %struct.cx88_dmaqueue* %1, %struct.cx88_dmaqueue** %5, align 8
  store %struct.cx88_buffer* %2, %struct.cx88_buffer** %6, align 8
  %8 = load %struct.cx8800_dev*, %struct.cx8800_dev** %4, align 8
  %9 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %8, i32 0, i32 0
  %10 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  store %struct.cx88_core* %10, %struct.cx88_core** %7, align 8
  %11 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %12 = load i32*, i32** @cx88_sram_channels, align 8
  %13 = load i64, i64* @SRAM_CH21, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load %struct.cx88_buffer*, %struct.cx88_buffer** %6, align 8
  %16 = getelementptr inbounds %struct.cx88_buffer, %struct.cx88_buffer* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.cx88_buffer*, %struct.cx88_buffer** %6, align 8
  %19 = getelementptr inbounds %struct.cx88_buffer, %struct.cx88_buffer* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cx88_sram_channel_setup(%struct.cx88_core* %11, i32* %14, i32 %17, i32 %21)
  %23 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %24 = load %struct.cx88_buffer*, %struct.cx88_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.cx88_buffer, %struct.cx88_buffer* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.cx88_buffer*, %struct.cx88_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.cx88_buffer, %struct.cx88_buffer* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cx88_buffer*, %struct.cx88_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.cx88_buffer, %struct.cx88_buffer* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @cx88_set_scale(%struct.cx88_core* %23, i32 %27, i32 %31, i32 %35)
  %37 = load i32, i32* @MO_COLOR_CTRL, align 4
  %38 = load %struct.cx88_buffer*, %struct.cx88_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.cx88_buffer, %struct.cx88_buffer* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ColorFormatGamma, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @cx_write(i32 %37, i32 %44)
  %46 = load i32, i32* @MO_VIDY_GPCNTRL, align 4
  %47 = load i32, i32* @GP_COUNT_CONTROL_RESET, align 4
  %48 = call i32 @cx_write(i32 %46, i32 %47)
  %49 = load %struct.cx88_dmaqueue*, %struct.cx88_dmaqueue** %5, align 8
  %50 = getelementptr inbounds %struct.cx88_dmaqueue, %struct.cx88_dmaqueue* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* @MO_PCI_INTMSK, align 4
  %52 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %53 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PCI_INT_VIDINT, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @cx_set(i32 %51, i32 %56)
  %58 = load i32, i32* @MO_VID_INTMSK, align 4
  %59 = call i32 @cx_set(i32 %58, i32 983057)
  %60 = load i32, i32* @VID_CAPTURE_CONTROL, align 4
  %61 = call i32 @cx_set(i32 %60, i32 6)
  %62 = load i32, i32* @MO_DEV_CNTRL2, align 4
  %63 = call i32 @cx_set(i32 %62, i32 32)
  %64 = load i32, i32* @MO_VID_DMACNTRL, align 4
  %65 = call i32 @cx_set(i32 %64, i32 17)
  ret i32 0
}

declare dso_local i32 @cx88_sram_channel_setup(%struct.cx88_core*, i32*, i32, i32) #1

declare dso_local i32 @cx88_set_scale(%struct.cx88_core*, i32, i32, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @cx_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
