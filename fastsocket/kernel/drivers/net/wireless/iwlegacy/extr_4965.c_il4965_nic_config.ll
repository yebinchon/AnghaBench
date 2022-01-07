; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_nic_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_nic_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.il_eeprom_calib_info* }
%struct.il_eeprom_calib_info = type { i32 }

@EEPROM_RADIO_CONFIG = common dso_local global i32 0, align 4
@EEPROM_4965_RF_CFG_TYPE_MAX = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_BIT_MAC_SI = common dso_local global i32 0, align 4
@EEPROM_4965_CALIB_TXPOWER_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il4965_nic_config(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %5 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %6 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %10 = load i32, i32* @EEPROM_RADIO_CONFIG, align 4
  %11 = call i32 @il_eeprom_query16(%struct.il_priv* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @EEPROM_RF_CFG_TYPE_MSK(i32 %12)
  %14 = load i32, i32* @EEPROM_4965_RF_CFG_TYPE_MAX, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %18 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @EEPROM_RF_CFG_TYPE_MSK(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @EEPROM_RF_CFG_STEP_MSK(i32 %21)
  %23 = or i32 %20, %22
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @EEPROM_RF_CFG_DASH_MSK(i32 %24)
  %26 = or i32 %23, %25
  %27 = call i32 @il_set_bit(%struct.il_priv* %17, i32 %18, i32 %26)
  br label %28

28:                                               ; preds = %16, %1
  %29 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %30 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %31 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI, align 4
  %32 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_MAC_SI, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @il_set_bit(%struct.il_priv* %29, i32 %30, i32 %33)
  %35 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %36 = load i32, i32* @EEPROM_4965_CALIB_TXPOWER_OFFSET, align 4
  %37 = call i64 @il_eeprom_query_addr(%struct.il_priv* %35, i32 %36)
  %38 = inttoptr i64 %37 to %struct.il_eeprom_calib_info*
  %39 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %40 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %39, i32 0, i32 1
  store %struct.il_eeprom_calib_info* %38, %struct.il_eeprom_calib_info** %40, align 8
  %41 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %42 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @il_eeprom_query16(%struct.il_priv*, i32) #1

declare dso_local i32 @EEPROM_RF_CFG_TYPE_MSK(i32) #1

declare dso_local i32 @il_set_bit(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @EEPROM_RF_CFG_STEP_MSK(i32) #1

declare dso_local i32 @EEPROM_RF_CFG_DASH_MSK(i32) #1

declare dso_local i64 @il_eeprom_query_addr(%struct.il_priv*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
