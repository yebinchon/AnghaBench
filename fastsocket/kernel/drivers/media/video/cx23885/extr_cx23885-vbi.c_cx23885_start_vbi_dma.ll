; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-vbi.c_cx23885_start_vbi_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-vbi.c_cx23885_start_vbi_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32* }
%struct.cx23885_dmaqueue = type { i32 }
%struct.cx23885_buffer = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SRAM_CH02 = common dso_local global i64 0, align 8
@VID_A_INT_MSK = common dso_local global i32 0, align 4
@DEV_CNTRL2 = common dso_local global i32 0, align 4
@VID_A_DMA_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx23885_dev*, %struct.cx23885_dmaqueue*, %struct.cx23885_buffer*)* @cx23885_start_vbi_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23885_start_vbi_dma(%struct.cx23885_dev* %0, %struct.cx23885_dmaqueue* %1, %struct.cx23885_buffer* %2) #0 {
  %4 = alloca %struct.cx23885_dev*, align 8
  %5 = alloca %struct.cx23885_dmaqueue*, align 8
  %6 = alloca %struct.cx23885_buffer*, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %4, align 8
  store %struct.cx23885_dmaqueue* %1, %struct.cx23885_dmaqueue** %5, align 8
  store %struct.cx23885_buffer* %2, %struct.cx23885_buffer** %6, align 8
  %7 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %8 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %9 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @SRAM_CH02, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load %struct.cx23885_buffer*, %struct.cx23885_buffer** %6, align 8
  %14 = getelementptr inbounds %struct.cx23885_buffer, %struct.cx23885_buffer* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cx23885_buffer*, %struct.cx23885_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.cx23885_buffer, %struct.cx23885_buffer* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cx23885_sram_channel_setup(%struct.cx23885_dev* %7, i32* %12, i32 %16, i32 %20)
  %22 = load %struct.cx23885_dmaqueue*, %struct.cx23885_dmaqueue** %5, align 8
  %23 = getelementptr inbounds %struct.cx23885_dmaqueue, %struct.cx23885_dmaqueue* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %25 = call i32 @cx23885_irq_add_enable(%struct.cx23885_dev* %24, i32 1)
  %26 = load i32, i32* @VID_A_INT_MSK, align 4
  %27 = call i32 @cx_set(i32 %26, i32 34)
  %28 = load i32, i32* @DEV_CNTRL2, align 4
  %29 = call i32 @cx_set(i32 %28, i32 32)
  %30 = load i32, i32* @VID_A_DMA_CTL, align 4
  %31 = call i32 @cx_set(i32 %30, i32 34)
  ret i32 0
}

declare dso_local i32 @cx23885_sram_channel_setup(%struct.cx23885_dev*, i32*, i32, i32) #1

declare dso_local i32 @cx23885_irq_add_enable(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @cx_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
