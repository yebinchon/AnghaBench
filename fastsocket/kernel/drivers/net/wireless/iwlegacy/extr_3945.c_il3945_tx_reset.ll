; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_tx_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_tx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ALM_SCD_MODE_REG = common dso_local global i32 0, align 4
@ALM_SCD_ARASTAT_REG = common dso_local global i32 0, align 4
@ALM_SCD_TXFACT_REG = common dso_local global i32 0, align 4
@ALM_SCD_SBYP_MODE_1_REG = common dso_local global i32 0, align 4
@ALM_SCD_SBYP_MODE_2_REG = common dso_local global i32 0, align 4
@ALM_SCD_TXF4MF_REG = common dso_local global i32 0, align 4
@ALM_SCD_TXF5MF_REG = common dso_local global i32 0, align 4
@FH39_TSSR_CBB_BASE = common dso_local global i32 0, align 4
@FH39_TSSR_MSG_CONFIG = common dso_local global i32 0, align 4
@FH39_TSSR_TX_MSG_CONFIG_REG_VAL_SNOOP_RD_TXPD_ON = common dso_local global i32 0, align 4
@FH39_TSSR_TX_MSG_CONFIG_REG_VAL_ORDER_RD_TXPD_ON = common dso_local global i32 0, align 4
@FH39_TSSR_TX_MSG_CONFIG_REG_VAL_MAX_FRAG_SIZE_128B = common dso_local global i32 0, align 4
@FH39_TSSR_TX_MSG_CONFIG_REG_VAL_SNOOP_RD_TFD_ON = common dso_local global i32 0, align 4
@FH39_TSSR_TX_MSG_CONFIG_REG_VAL_ORDER_RD_CBB_ON = common dso_local global i32 0, align 4
@FH39_TSSR_TX_MSG_CONFIG_REG_VAL_ORDER_RSP_WAIT_TH = common dso_local global i32 0, align 4
@FH39_TSSR_TX_MSG_CONFIG_REG_VAL_RSP_WAIT_TH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il3945_tx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_tx_reset(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %3 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %4 = load i32, i32* @ALM_SCD_MODE_REG, align 4
  %5 = call i32 @il_wr_prph(%struct.il_priv* %3, i32 %4, i32 2)
  %6 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %7 = load i32, i32* @ALM_SCD_ARASTAT_REG, align 4
  %8 = call i32 @il_wr_prph(%struct.il_priv* %6, i32 %7, i32 1)
  %9 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %10 = load i32, i32* @ALM_SCD_TXFACT_REG, align 4
  %11 = call i32 @il_wr_prph(%struct.il_priv* %9, i32 %10, i32 63)
  %12 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %13 = load i32, i32* @ALM_SCD_SBYP_MODE_1_REG, align 4
  %14 = call i32 @il_wr_prph(%struct.il_priv* %12, i32 %13, i32 65536)
  %15 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %16 = load i32, i32* @ALM_SCD_SBYP_MODE_2_REG, align 4
  %17 = call i32 @il_wr_prph(%struct.il_priv* %15, i32 %16, i32 196610)
  %18 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %19 = load i32, i32* @ALM_SCD_TXF4MF_REG, align 4
  %20 = call i32 @il_wr_prph(%struct.il_priv* %18, i32 %19, i32 4)
  %21 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %22 = load i32, i32* @ALM_SCD_TXF5MF_REG, align 4
  %23 = call i32 @il_wr_prph(%struct.il_priv* %21, i32 %22, i32 5)
  %24 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %25 = load i32, i32* @FH39_TSSR_CBB_BASE, align 4
  %26 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @il_wr(%struct.il_priv* %24, i32 %25, i32 %29)
  %31 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %32 = load i32, i32* @FH39_TSSR_MSG_CONFIG, align 4
  %33 = load i32, i32* @FH39_TSSR_TX_MSG_CONFIG_REG_VAL_SNOOP_RD_TXPD_ON, align 4
  %34 = load i32, i32* @FH39_TSSR_TX_MSG_CONFIG_REG_VAL_ORDER_RD_TXPD_ON, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @FH39_TSSR_TX_MSG_CONFIG_REG_VAL_MAX_FRAG_SIZE_128B, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @FH39_TSSR_TX_MSG_CONFIG_REG_VAL_SNOOP_RD_TFD_ON, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @FH39_TSSR_TX_MSG_CONFIG_REG_VAL_ORDER_RD_CBB_ON, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @FH39_TSSR_TX_MSG_CONFIG_REG_VAL_ORDER_RSP_WAIT_TH, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @FH39_TSSR_TX_MSG_CONFIG_REG_VAL_RSP_WAIT_TH, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @il_wr(%struct.il_priv* %31, i32 %32, i32 %45)
  ret i32 0
}

declare dso_local i32 @il_wr_prph(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il_wr(%struct.il_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
