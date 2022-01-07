; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_init_2wire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_init_2wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath_btcoex_hw }
%struct.ath_btcoex_hw = type { i32 }

@AR_GPIO_INPUT_EN_VAL = common dso_local global i32 0, align 4
@AR_GPIO_INPUT_EN_VAL_BT_PRIORITY_DEF = common dso_local global i32 0, align 4
@AR_GPIO_INPUT_EN_VAL_BT_FREQUENCY_DEF = common dso_local global i32 0, align 4
@AR_GPIO_INPUT_EN_VAL_BT_ACTIVE_BB = common dso_local global i32 0, align 4
@AR_GPIO_INPUT_MUX1 = common dso_local global i32 0, align 4
@AR_GPIO_INPUT_MUX1_BT_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_btcoex_init_2wire(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_btcoex_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 0
  store %struct.ath_btcoex_hw* %5, %struct.ath_btcoex_hw** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = load i32, i32* @AR_GPIO_INPUT_EN_VAL, align 4
  %8 = load i32, i32* @AR_GPIO_INPUT_EN_VAL_BT_PRIORITY_DEF, align 4
  %9 = load i32, i32* @AR_GPIO_INPUT_EN_VAL_BT_FREQUENCY_DEF, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @REG_CLR_BIT(%struct.ath_hw* %6, i32 %7, i32 %10)
  %12 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %13 = load i32, i32* @AR_GPIO_INPUT_EN_VAL, align 4
  %14 = load i32, i32* @AR_GPIO_INPUT_EN_VAL_BT_ACTIVE_BB, align 4
  %15 = call i32 @REG_SET_BIT(%struct.ath_hw* %12, i32 %13, i32 %14)
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = load i32, i32* @AR_GPIO_INPUT_MUX1, align 4
  %18 = load i32, i32* @AR_GPIO_INPUT_MUX1_BT_ACTIVE, align 4
  %19 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %16, i32 %17, i32 %18, i32 %21)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %25 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ath9k_hw_cfg_gpio_input(%struct.ath_hw* %23, i32 %26)
  ret void
}

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ath9k_hw_cfg_gpio_input(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
