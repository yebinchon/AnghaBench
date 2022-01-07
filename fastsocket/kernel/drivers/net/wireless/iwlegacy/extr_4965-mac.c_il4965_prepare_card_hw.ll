; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_prepare_card_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_prepare_card_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }

@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_PREPARE = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_BIT_NIC_PREPARE_DONE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il4965_prepare_card_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_prepare_card_hw(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %4 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %5 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %7 = call i32 @il4965_set_hw_ready(%struct.il_priv* %6)
  %8 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %15 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %16 = load i32, i32* @CSR_HW_IF_CONFIG_REG_PREPARE, align 4
  %17 = call i32 @il_set_bit(%struct.il_priv* %14, i32 %15, i32 %16)
  %18 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %19 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %20 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_NIC_PREPARE_DONE, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_NIC_PREPARE_DONE, align 4
  %23 = call i32 @_il_poll_bit(%struct.il_priv* %18, i32 %19, i32 %21, i32 %22, i32 150000)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @ETIMEDOUT, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %13
  %29 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %30 = call i32 @il4965_set_hw_ready(%struct.il_priv* %29)
  br label %31

31:                                               ; preds = %12, %28, %13
  ret void
}

declare dso_local i32 @il4965_set_hw_ready(%struct.il_priv*) #1

declare dso_local i32 @il_set_bit(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @_il_poll_bit(%struct.il_priv*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
