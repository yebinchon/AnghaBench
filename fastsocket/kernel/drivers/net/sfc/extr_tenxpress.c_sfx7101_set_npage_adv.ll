; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tenxpress.c_sfx7101_set_npage_adv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tenxpress.c_sfx7101_set_npage_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_CTRL = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_CTRL_ADV10G = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32)* @sfx7101_set_npage_adv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfx7101_set_npage_adv(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %6 = load i32, i32* @MDIO_MMD_AN, align 4
  %7 = load i32, i32* @MDIO_AN_10GBT_CTRL, align 4
  %8 = load i32, i32* @MDIO_AN_10GBT_CTRL_ADV10G, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @efx_mdio_set_flag(%struct.efx_nic* %5, i32 %6, i32 %7, i32 %8, i32 %11)
  ret void
}

declare dso_local i32 @efx_mdio_set_flag(%struct.efx_nic*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
