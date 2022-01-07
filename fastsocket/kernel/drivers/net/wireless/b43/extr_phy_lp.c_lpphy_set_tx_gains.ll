; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_set_tx_gains.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_set_tx_gains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lpphy_tx_gains = type { i32, i32, i32, i32 }

@B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i64, i64)* @lpphy_set_tx_gains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_set_tx_gains(%struct.b43_wldev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.lpphy_tx_gains, align 4
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast %struct.lpphy_tx_gains* %4 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %1, i64* %9, align 4
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %2, i64* %10, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 7
  %20 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %4, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 3
  %23 = or i32 %19, %22
  %24 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %4, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %23, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %28 = load i32, i32* @B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @b43_phy_maskset(%struct.b43_wldev* %27, i32 %28, i32 63488, i32 %29)
  br label %68

31:                                               ; preds = %3
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %33 = call i32 @lpphy_get_pa_gain(%struct.b43_wldev* %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %35 = load i32, i32* @B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL, align 4
  %36 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %4, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %4, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %38, %40
  %42 = call i32 @b43_phy_write(%struct.b43_wldev* %34, i32 %35, i32 %41)
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %44 = call i32 @B43_PHY_OFDM(i32 251)
  %45 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %47, 6
  %49 = or i32 %46, %48
  %50 = call i32 @b43_phy_maskset(%struct.b43_wldev* %43, i32 %44, i32 32768, i32 %49)
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %52 = call i32 @B43_PHY_OFDM(i32 252)
  %53 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %4, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %4, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %55, %57
  %59 = call i32 @b43_phy_write(%struct.b43_wldev* %51, i32 %52, i32 %58)
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %61 = call i32 @B43_PHY_OFDM(i32 253)
  %62 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %4, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = shl i32 %64, 8
  %66 = or i32 %63, %65
  %67 = call i32 @b43_phy_maskset(%struct.b43_wldev* %60, i32 %61, i32 32768, i32 %66)
  br label %68

68:                                               ; preds = %31, %16
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %70 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %4, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @lpphy_set_dac_gain(%struct.b43_wldev* %69, i32 %71)
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %74 = call i32 @lpphy_enable_tx_gain_override(%struct.b43_wldev* %73)
  ret void
}

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @lpphy_get_pa_gain(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_PHY_OFDM(i32) #1

declare dso_local i32 @lpphy_set_dac_gain(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_enable_tx_gain_override(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
