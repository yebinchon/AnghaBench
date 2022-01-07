; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_set_tx_power_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_set_tx_power_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i32, i32, i32, i64 }

@B43_LPPHY_TXPCTL_HW = common dso_local global i32 0, align 4
@B43_LPPHY_TX_PWR_CTL_CMD = common dso_local global i32 0, align 4
@B43_LPPHY_TX_PWR_CTL_NNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @lpphy_set_tx_power_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_set_tx_power_control(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy_lp*, align 8
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %9, align 8
  store %struct.b43_phy_lp* %10, %struct.b43_phy_lp** %5, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %12 = call i32 @lpphy_read_tx_pctl_mode_from_hardware(%struct.b43_wldev* %11)
  %13 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %14 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %74

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %23 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @B43_LPPHY_TXPCTL_HW, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %52

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @B43_LPPHY_TXPCTL_HW, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_CMD, align 4
  %35 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %36 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @b43_phy_maskset(%struct.b43_wldev* %33, i32 %34, i32 65408, i32 %37)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %40 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_NNUM, align 4
  %41 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %42 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = shl i32 %44, 16
  %46 = call i32 @b43_phy_maskset(%struct.b43_wldev* %39, i32 %40, i32 36863, i32 %45)
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %48 = call i32 @lpphy_disable_tx_gain_override(%struct.b43_wldev* %47)
  %49 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %50 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %49, i32 0, i32 2
  store i32 -1, i32* %50, align 8
  br label %51

51:                                               ; preds = %32, %28
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %54 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %56, 2
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @B43_LPPHY_TXPCTL_HW, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %64 = call i32 @B43_PHY_OFDM(i32 208)
  %65 = call i32 @b43_phy_set(%struct.b43_wldev* %63, i32 %64, i32 2)
  br label %70

66:                                               ; preds = %58
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %68 = call i32 @B43_PHY_OFDM(i32 208)
  %69 = call i32 @b43_phy_mask(%struct.b43_wldev* %67, i32 %68, i32 65533)
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %52
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %73 = call i32 @lpphy_write_tx_pctl_mode_to_hardware(%struct.b43_wldev* %72)
  br label %74

74:                                               ; preds = %71, %19
  ret void
}

declare dso_local i32 @lpphy_read_tx_pctl_mode_from_hardware(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @lpphy_disable_tx_gain_override(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_PHY_OFDM(i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @lpphy_write_tx_pctl_mode_to_hardware(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
