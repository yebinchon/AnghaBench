; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_rx_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_rx_queue = type { i32, i32 }

@FH39_RCSR_RX_CONFIG_REG_VAL_DMA_CHNL_EN_ENABLE = common dso_local global i32 0, align 4
@FH39_RCSR_RX_CONFIG_REG_VAL_RDRBD_EN_ENABLE = common dso_local global i32 0, align 4
@FH39_RCSR_RX_CONFIG_REG_BIT_WR_STTS_EN = common dso_local global i32 0, align 4
@FH39_RCSR_RX_CONFIG_REG_VAL_MAX_FRAG_SIZE_128 = common dso_local global i32 0, align 4
@RX_QUEUE_SIZE_LOG = common dso_local global i32 0, align 4
@FH39_RCSR_RX_CONFIG_REG_POS_RBDC_SIZE = common dso_local global i32 0, align 4
@FH39_RCSR_RX_CONFIG_REG_VAL_IRQ_DEST_INT_HOST = common dso_local global i32 0, align 4
@FH39_RCSR_RX_CONFIG_REG_POS_IRQ_RBTH = common dso_local global i32 0, align 4
@FH39_RCSR_RX_CONFIG_REG_VAL_MSG_MODE_FH = common dso_local global i32 0, align 4
@FH39_RSSR_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_rx_queue*)* @il3945_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_rx_init(%struct.il_priv* %0, %struct.il_rx_queue* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_queue*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_queue* %1, %struct.il_rx_queue** %4, align 8
  %5 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %6 = call i32 @FH39_RCSR_RBD_BASE(i32 0)
  %7 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %8 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @il_wr(%struct.il_priv* %5, i32 %6, i32 %9)
  %11 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %12 = call i32 @FH39_RCSR_RPTR_ADDR(i32 0)
  %13 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %14 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @il_wr(%struct.il_priv* %11, i32 %12, i32 %15)
  %17 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %18 = call i32 @FH39_RCSR_WPTR(i32 0)
  %19 = call i32 @il_wr(%struct.il_priv* %17, i32 %18, i32 0)
  %20 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %21 = call i32 @FH39_RCSR_CONFIG(i32 0)
  %22 = load i32, i32* @FH39_RCSR_RX_CONFIG_REG_VAL_DMA_CHNL_EN_ENABLE, align 4
  %23 = load i32, i32* @FH39_RCSR_RX_CONFIG_REG_VAL_RDRBD_EN_ENABLE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @FH39_RCSR_RX_CONFIG_REG_BIT_WR_STTS_EN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @FH39_RCSR_RX_CONFIG_REG_VAL_MAX_FRAG_SIZE_128, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @RX_QUEUE_SIZE_LOG, align 4
  %30 = load i32, i32* @FH39_RCSR_RX_CONFIG_REG_POS_RBDC_SIZE, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %28, %31
  %33 = load i32, i32* @FH39_RCSR_RX_CONFIG_REG_VAL_IRQ_DEST_INT_HOST, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FH39_RCSR_RX_CONFIG_REG_POS_IRQ_RBTH, align 4
  %36 = shl i32 1, %35
  %37 = or i32 %34, %36
  %38 = load i32, i32* @FH39_RCSR_RX_CONFIG_REG_VAL_MSG_MODE_FH, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @il_wr(%struct.il_priv* %20, i32 %21, i32 %39)
  %41 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %42 = load i32, i32* @FH39_RSSR_CTRL, align 4
  %43 = call i32 @il_rd(%struct.il_priv* %41, i32 %42)
  ret i32 0
}

declare dso_local i32 @il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @FH39_RCSR_RBD_BASE(i32) #1

declare dso_local i32 @FH39_RCSR_RPTR_ADDR(i32) #1

declare dso_local i32 @FH39_RCSR_WPTR(i32) #1

declare dso_local i32 @FH39_RCSR_CONFIG(i32) #1

declare dso_local i32 @il_rd(%struct.il_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
