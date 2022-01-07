; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_apm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_apm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }

@APMG_RTC_INT_MSK_REG = common dso_local global i32 0, align 4
@APMG_RTC_INT_STT_REG = common dso_local global i32 0, align 4
@APMG_PS_CTRL_REG = common dso_local global i32 0, align 4
@APMG_PS_CTRL_VAL_RESET_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il3945_apm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_apm_init(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %4 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %5 = call i32 @il_apm_init(%struct.il_priv* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %7 = load i32, i32* @APMG_RTC_INT_MSK_REG, align 4
  %8 = call i32 @il_wr_prph(%struct.il_priv* %6, i32 %7, i32 0)
  %9 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %10 = load i32, i32* @APMG_RTC_INT_STT_REG, align 4
  %11 = call i32 @il_wr_prph(%struct.il_priv* %9, i32 %10, i32 -1)
  %12 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %13 = load i32, i32* @APMG_PS_CTRL_REG, align 4
  %14 = load i32, i32* @APMG_PS_CTRL_VAL_RESET_REQ, align 4
  %15 = call i32 @il_set_bits_prph(%struct.il_priv* %12, i32 %13, i32 %14)
  %16 = call i32 @udelay(i32 5)
  %17 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %18 = load i32, i32* @APMG_PS_CTRL_REG, align 4
  %19 = load i32, i32* @APMG_PS_CTRL_VAL_RESET_REQ, align 4
  %20 = call i32 @il_clear_bits_prph(%struct.il_priv* %17, i32 %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @il_apm_init(%struct.il_priv*) #1

declare dso_local i32 @il_wr_prph(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il_set_bits_prph(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @il_clear_bits_prph(%struct.il_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
