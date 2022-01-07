; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_set_pwr_vmain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_set_pwr_vmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }

@APMG_PS_CTRL_REG = common dso_local global i32 0, align 4
@APMG_PS_CTRL_VAL_PWR_SRC_VMAIN = common dso_local global i32 0, align 4
@APMG_PS_CTRL_MSK_PWR_SRC = common dso_local global i32 0, align 4
@CSR_GPIO_IN = common dso_local global i32 0, align 4
@CSR_GPIO_IN_VAL_VMAIN_PWR_SRC = common dso_local global i32 0, align 4
@CSR_GPIO_IN_BIT_AUX_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il3945_set_pwr_vmain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_set_pwr_vmain(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %3 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %4 = load i32, i32* @APMG_PS_CTRL_REG, align 4
  %5 = load i32, i32* @APMG_PS_CTRL_VAL_PWR_SRC_VMAIN, align 4
  %6 = load i32, i32* @APMG_PS_CTRL_MSK_PWR_SRC, align 4
  %7 = xor i32 %6, -1
  %8 = call i32 @il_set_bits_mask_prph(%struct.il_priv* %3, i32 %4, i32 %5, i32 %7)
  %9 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %10 = load i32, i32* @CSR_GPIO_IN, align 4
  %11 = load i32, i32* @CSR_GPIO_IN_VAL_VMAIN_PWR_SRC, align 4
  %12 = load i32, i32* @CSR_GPIO_IN_BIT_AUX_POWER, align 4
  %13 = call i32 @_il_poll_bit(%struct.il_priv* %9, i32 %10, i32 %11, i32 %12, i32 5000)
  ret void
}

declare dso_local i32 @il_set_bits_mask_prph(%struct.il_priv*, i32, i32, i32) #1

declare dso_local i32 @_il_poll_bit(%struct.il_priv*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
