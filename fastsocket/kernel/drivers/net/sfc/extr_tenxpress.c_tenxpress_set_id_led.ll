; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tenxpress.c_tenxpress_set_id_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tenxpress.c_tenxpress_set_id_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@PMA_PMD_LED_OFF = common dso_local global i32 0, align 4
@PMA_PMD_LED_TX_LBN = common dso_local global i32 0, align 4
@PMA_PMD_LED_RX_LBN = common dso_local global i32 0, align 4
@PMA_PMD_LED_LINK_LBN = common dso_local global i32 0, align 4
@PMA_PMD_LED_ON = common dso_local global i32 0, align 4
@SFX7101_PMA_PMD_LED_DEFAULT = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@PMA_PMD_LED_OVERR_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tenxpress_set_id_led(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %31 [
    i32 129, label %7
    i32 128, label %19
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @PMA_PMD_LED_OFF, align 4
  %9 = load i32, i32* @PMA_PMD_LED_TX_LBN, align 4
  %10 = shl i32 %8, %9
  %11 = load i32, i32* @PMA_PMD_LED_OFF, align 4
  %12 = load i32, i32* @PMA_PMD_LED_RX_LBN, align 4
  %13 = shl i32 %11, %12
  %14 = or i32 %10, %13
  %15 = load i32, i32* @PMA_PMD_LED_OFF, align 4
  %16 = load i32, i32* @PMA_PMD_LED_LINK_LBN, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %14, %17
  store i32 %18, i32* %5, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load i32, i32* @PMA_PMD_LED_ON, align 4
  %21 = load i32, i32* @PMA_PMD_LED_TX_LBN, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* @PMA_PMD_LED_ON, align 4
  %24 = load i32, i32* @PMA_PMD_LED_RX_LBN, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %22, %25
  %27 = load i32, i32* @PMA_PMD_LED_ON, align 4
  %28 = load i32, i32* @PMA_PMD_LED_LINK_LBN, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %26, %29
  store i32 %30, i32* %5, align 4
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @SFX7101_PMA_PMD_LED_DEFAULT, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %19, %7
  %34 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %35 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %36 = load i32, i32* @PMA_PMD_LED_OVERR_REG, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @efx_mdio_write(%struct.efx_nic* %34, i32 %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @efx_mdio_write(%struct.efx_nic*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
