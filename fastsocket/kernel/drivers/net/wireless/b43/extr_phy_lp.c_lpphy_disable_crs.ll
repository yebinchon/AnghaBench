; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_disable_crs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_disable_crs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_LPPHY_RF_OVERRIDE_VAL_0 = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_0 = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_2_VAL = common dso_local global i32 0, align 4
@B43_LPPHY_PS_CTL_OVERRIDE_VAL0 = common dso_local global i32 0, align 4
@B43_LPPHY_PS_CTL_OVERRIDE_VAL1 = common dso_local global i32 0, align 4
@B43_LPPHY_PS_CTL_OVERRIDE_VAL2 = common dso_local global i32 0, align 4
@B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL = common dso_local global i32 0, align 4
@B43_LPPHY_RX_GAIN_CTL_OVERRIDE_VAL = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @lpphy_disable_crs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_disable_crs(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @lpphy_set_deaf(%struct.b43_wldev* %5, i32 %6)
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = call i32 @lpphy_set_trsw_over(%struct.b43_wldev* %8, i32 0, i32 1)
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %11 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_VAL_0, align 4
  %12 = call i32 @b43_phy_mask(%struct.b43_wldev* %10, i32 %11, i32 65531)
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %14 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %15 = call i32 @b43_phy_set(%struct.b43_wldev* %13, i32 %14, i32 4)
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %17 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_VAL_0, align 4
  %18 = call i32 @b43_phy_mask(%struct.b43_wldev* %16, i32 %17, i32 65527)
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %20 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %21 = call i32 @b43_phy_set(%struct.b43_wldev* %19, i32 %20, i32 8)
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %23 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_VAL_0, align 4
  %24 = call i32 @b43_phy_set(%struct.b43_wldev* %22, i32 %23, i32 16)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %26 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %27 = call i32 @b43_phy_set(%struct.b43_wldev* %25, i32 %26, i32 16)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %29 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_VAL_0, align 4
  %30 = call i32 @b43_phy_mask(%struct.b43_wldev* %28, i32 %29, i32 65503)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %32 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %33 = call i32 @b43_phy_set(%struct.b43_wldev* %31, i32 %32, i32 32)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %35 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_VAL_0, align 4
  %36 = call i32 @b43_phy_mask(%struct.b43_wldev* %34, i32 %35, i32 65471)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %38 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %39 = call i32 @b43_phy_set(%struct.b43_wldev* %37, i32 %38, i32 64)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %41 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2_VAL, align 4
  %42 = call i32 @b43_phy_set(%struct.b43_wldev* %40, i32 %41, i32 7)
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %44 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2_VAL, align 4
  %45 = call i32 @b43_phy_set(%struct.b43_wldev* %43, i32 %44, i32 56)
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %47 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2_VAL, align 4
  %48 = call i32 @b43_phy_mask(%struct.b43_wldev* %46, i32 %47, i32 65343)
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %50 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2_VAL, align 4
  %51 = call i32 @b43_phy_set(%struct.b43_wldev* %49, i32 %50, i32 256)
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %53 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2_VAL, align 4
  %54 = call i32 @b43_phy_mask(%struct.b43_wldev* %52, i32 %53, i32 65023)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %56 = load i32, i32* @B43_LPPHY_PS_CTL_OVERRIDE_VAL0, align 4
  %57 = call i32 @b43_phy_write(%struct.b43_wldev* %55, i32 %56, i32 0)
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %59 = load i32, i32* @B43_LPPHY_PS_CTL_OVERRIDE_VAL1, align 4
  %60 = call i32 @b43_phy_write(%struct.b43_wldev* %58, i32 %59, i32 1)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %62 = load i32, i32* @B43_LPPHY_PS_CTL_OVERRIDE_VAL2, align 4
  %63 = call i32 @b43_phy_write(%struct.b43_wldev* %61, i32 %62, i32 32)
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %65 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2_VAL, align 4
  %66 = call i32 @b43_phy_mask(%struct.b43_wldev* %64, i32 %65, i32 64511)
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %68 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2_VAL, align 4
  %69 = call i32 @b43_phy_mask(%struct.b43_wldev* %67, i32 %68, i32 63487)
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %71 = load i32, i32* @B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL, align 4
  %72 = call i32 @b43_phy_write(%struct.b43_wldev* %70, i32 %71, i32 0)
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %74 = load i32, i32* @B43_LPPHY_RX_GAIN_CTL_OVERRIDE_VAL, align 4
  %75 = call i32 @b43_phy_write(%struct.b43_wldev* %73, i32 %74, i32 17839)
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %77 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2, align 4
  %78 = call i32 @b43_phy_write(%struct.b43_wldev* %76, i32 %77, i32 1023)
  ret void
}

declare dso_local i32 @lpphy_set_deaf(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_set_trsw_over(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
