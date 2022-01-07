; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tenxpress.c_tenxpress_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tenxpress.c_tenxpress_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@PCS_TEST_SELECT_REG = common dso_local global i32 0, align 4
@CLK312_EN_LBN = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@PMA_PMD_LED_CTRL_REG = common dso_local global i32 0, align 4
@PMA_PMA_LED_ACTIVITY_LBN = common dso_local global i32 0, align 4
@PMA_PMD_LED_OVERR_REG = common dso_local global i32 0, align 4
@SFX7101_PMA_PMD_LED_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @tenxpress_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tenxpress_init(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %3 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %4 = load i32, i32* @MDIO_MMD_PCS, align 4
  %5 = load i32, i32* @PCS_TEST_SELECT_REG, align 4
  %6 = load i32, i32* @CLK312_EN_LBN, align 4
  %7 = shl i32 1, %6
  %8 = call i32 @efx_mdio_write(%struct.efx_nic* %3, i32 %4, i32 %5, i32 %7)
  %9 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %10 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %11 = load i32, i32* @PMA_PMD_LED_CTRL_REG, align 4
  %12 = load i32, i32* @PMA_PMA_LED_ACTIVITY_LBN, align 4
  %13 = shl i32 1, %12
  %14 = call i32 @efx_mdio_set_flag(%struct.efx_nic* %9, i32 %10, i32 %11, i32 %13, i32 1)
  %15 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %16 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %17 = load i32, i32* @PMA_PMD_LED_OVERR_REG, align 4
  %18 = load i32, i32* @SFX7101_PMA_PMD_LED_DEFAULT, align 4
  %19 = call i32 @efx_mdio_write(%struct.efx_nic* %15, i32 %16, i32 %17, i32 %18)
  ret i32 0
}

declare dso_local i32 @efx_mdio_write(%struct.efx_nic*, i32, i32, i32) #1

declare dso_local i32 @efx_mdio_set_flag(%struct.efx_nic*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
