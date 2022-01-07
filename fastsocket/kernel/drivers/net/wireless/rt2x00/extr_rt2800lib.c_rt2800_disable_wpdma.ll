; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_disable_wpdma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_disable_wpdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@WPDMA_GLO_CFG_ENABLE_TX_DMA = common dso_local global i32 0, align 4
@WPDMA_GLO_CFG_TX_DMA_BUSY = common dso_local global i32 0, align 4
@WPDMA_GLO_CFG_ENABLE_RX_DMA = common dso_local global i32 0, align 4
@WPDMA_GLO_CFG_RX_DMA_BUSY = common dso_local global i32 0, align 4
@WPDMA_GLO_CFG_TX_WRITEBACK_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_disable_wpdma(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %4 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %5 = load i32, i32* @WPDMA_GLO_CFG, align 4
  %6 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %4, i32 %5, i32* %3)
  %7 = load i32, i32* @WPDMA_GLO_CFG_ENABLE_TX_DMA, align 4
  %8 = call i32 @rt2x00_set_field32(i32* %3, i32 %7, i32 0)
  %9 = load i32, i32* @WPDMA_GLO_CFG_TX_DMA_BUSY, align 4
  %10 = call i32 @rt2x00_set_field32(i32* %3, i32 %9, i32 0)
  %11 = load i32, i32* @WPDMA_GLO_CFG_ENABLE_RX_DMA, align 4
  %12 = call i32 @rt2x00_set_field32(i32* %3, i32 %11, i32 0)
  %13 = load i32, i32* @WPDMA_GLO_CFG_RX_DMA_BUSY, align 4
  %14 = call i32 @rt2x00_set_field32(i32* %3, i32 %13, i32 0)
  %15 = load i32, i32* @WPDMA_GLO_CFG_TX_WRITEBACK_DONE, align 4
  %16 = call i32 @rt2x00_set_field32(i32* %3, i32 %15, i32 1)
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %18 = load i32, i32* @WPDMA_GLO_CFG, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %17, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
