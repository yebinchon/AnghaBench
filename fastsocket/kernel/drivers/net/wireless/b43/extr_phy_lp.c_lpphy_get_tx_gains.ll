; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_get_tx_gains.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_get_tx_gains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lpphy_tx_gains = type { i32, i32, i32, i32 }

@B43_LPPHY_AFE_DAC_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (%struct.b43_wldev*)* @lpphy_get_tx_gains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @lpphy_get_tx_gains(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.lpphy_tx_gains, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %6 = load i32, i32* @B43_LPPHY_AFE_DAC_CTL, align 4
  %7 = call i32 @b43_phy_read(%struct.b43_wldev* %5, i32 %6)
  %8 = and i32 %7, 896
  %9 = ashr i32 %8, 7
  %10 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %2, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %18 = load i32, i32* @B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL, align 4
  %19 = call i32 @b43_phy_read(%struct.b43_wldev* %17, i32 %18)
  %20 = and i32 %19, 2047
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 7
  %23 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %2, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 120
  %26 = ashr i32 %25, 3
  %27 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %2, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 1920
  %30 = ashr i32 %29, 7
  %31 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %2, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  br label %48

32:                                               ; preds = %1
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = load i32, i32* @B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL, align 4
  %35 = call i32 @b43_phy_read(%struct.b43_wldev* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = call i32 @B43_PHY_OFDM(i32 251)
  %38 = call i32 @b43_phy_read(%struct.b43_wldev* %36, i32 %37)
  %39 = and i32 %38, 255
  %40 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %2, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 255
  %43 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %2, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %4, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 255
  %47 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %2, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %32, %16
  %49 = bitcast %struct.lpphy_tx_gains* %2 to { i64, i64 }*
  %50 = load { i64, i64 }, { i64, i64 }* %49, align 4
  ret { i64, i64 } %50
}

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @B43_PHY_OFDM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
