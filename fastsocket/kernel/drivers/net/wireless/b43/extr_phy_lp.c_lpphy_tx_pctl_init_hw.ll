; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_tx_pctl_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_tx_pctl_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@B43_LPPHY_TX_PWR_CTL_NNUM = common dso_local global i32 0, align 4
@B43_LPPHY_TX_PWR_CTL_IDLETSSI = common dso_local global i32 0, align 4
@B43_LPPHY_LP_PHY_CTL = common dso_local global i32 0, align 4
@B2063_IQ_CALIB_CTL2 = common dso_local global i32 0, align 4
@TSSI_MUX_POSTPA = common dso_local global i32 0, align 4
@B43_LPPHY_TX_PWR_CTL_DELTAPWR_LIMIT = common dso_local global i32 0, align 4
@B43_LPPHY_TX_PWR_CTL_CMD = common dso_local global i32 0, align 4
@B43_LPPHY_TX_PWR_CTL_CMD_MODE = common dso_local global i32 0, align 4
@B43_LPPHY_TX_PWR_CTL_CMD_MODE_OFF = common dso_local global i32 0, align 4
@B43_LPPHY_TX_PWR_CTL_CMD_MODE_SW = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_0 = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_VAL_0 = common dso_local global i32 0, align 4
@B43_LPPHY_TX_PWR_CTL_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @lpphy_tx_pctl_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_tx_pctl_init_hw(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 64
  br i1 %7, label %8, label %32

8:                                                ; preds = %5
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %12, 2
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 @B43_LPTAB32(i32 7, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @b43_lptab_write(%struct.b43_wldev* %15, i32 %18, i32 %19)
  br label %28

21:                                               ; preds = %8
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i32 @B43_LPTAB32(i32 10, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @b43_lptab_write(%struct.b43_wldev* %22, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %21, %14
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %5

32:                                               ; preds = %5
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_NNUM, align 4
  %35 = call i32 @b43_phy_maskset(%struct.b43_wldev* %33, i32 %34, i32 65280, i32 255)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_NNUM, align 4
  %38 = call i32 @b43_phy_maskset(%struct.b43_wldev* %36, i32 %37, i32 36863, i32 20480)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_IDLETSSI, align 4
  %41 = call i32 @b43_phy_maskset(%struct.b43_wldev* %39, i32 %40, i32 65472, i32 31)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %54

47:                                               ; preds = %32
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %49 = load i32, i32* @B43_LPPHY_LP_PHY_CTL, align 4
  %50 = call i32 @b43_phy_mask(%struct.b43_wldev* %48, i32 %49, i32 61439)
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %52 = load i32, i32* @B43_LPPHY_LP_PHY_CTL, align 4
  %53 = call i32 @b43_phy_maskset(%struct.b43_wldev* %51, i32 %52, i32 57343, i32 8192)
  br label %70

54:                                               ; preds = %32
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = call i32 @B43_PHY_OFDM(i32 259)
  %57 = call i32 @b43_phy_mask(%struct.b43_wldev* %55, i32 %56, i32 65534)
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = call i32 @B43_PHY_OFDM(i32 259)
  %60 = call i32 @b43_phy_maskset(%struct.b43_wldev* %58, i32 %59, i32 65531, i32 4)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = call i32 @B43_PHY_OFDM(i32 259)
  %63 = call i32 @b43_phy_maskset(%struct.b43_wldev* %61, i32 %62, i32 65519, i32 16)
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = load i32, i32* @B2063_IQ_CALIB_CTL2, align 4
  %66 = call i32 @b43_radio_maskset(%struct.b43_wldev* %64, i32 %65, i32 243, i32 1)
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %68 = load i32, i32* @TSSI_MUX_POSTPA, align 4
  %69 = call i32 @lpphy_set_tssi_mux(%struct.b43_wldev* %67, i32 %68)
  br label %70

70:                                               ; preds = %54, %47
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %72 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_IDLETSSI, align 4
  %73 = call i32 @b43_phy_maskset(%struct.b43_wldev* %71, i32 %72, i32 32767, i32 32768)
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %75 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_DELTAPWR_LIMIT, align 4
  %76 = call i32 @b43_phy_mask(%struct.b43_wldev* %74, i32 %75, i32 255)
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %78 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_DELTAPWR_LIMIT, align 4
  %79 = call i32 @b43_phy_write(%struct.b43_wldev* %77, i32 %78, i32 10)
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %81 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_CMD, align 4
  %82 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_CMD_MODE, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %83, 65535
  %85 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_CMD_MODE_OFF, align 4
  %86 = call i32 @b43_phy_maskset(%struct.b43_wldev* %80, i32 %81, i32 %84, i32 %85)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_NNUM, align 4
  %89 = call i32 @b43_phy_mask(%struct.b43_wldev* %87, i32 %88, i32 63743)
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %91 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_CMD, align 4
  %92 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_CMD_MODE, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %93, 65535
  %95 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_CMD_MODE_SW, align 4
  %96 = call i32 @b43_phy_maskset(%struct.b43_wldev* %90, i32 %91, i32 %94, i32 %95)
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %100, 2
  br i1 %101, label %102, label %109

102:                                              ; preds = %70
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %104 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %105 = call i32 @b43_phy_maskset(%struct.b43_wldev* %103, i32 %104, i32 61439, i32 4096)
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %107 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_VAL_0, align 4
  %108 = call i32 @b43_phy_mask(%struct.b43_wldev* %106, i32 %107, i32 61439)
  br label %112

109:                                              ; preds = %70
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %111 = call i32 @lpphy_set_tx_power_by_index(%struct.b43_wldev* %110, i32 127)
  br label %112

112:                                              ; preds = %109, %102
  %113 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %114 = call i32 @b43_dummy_transmission(%struct.b43_wldev* %113, i32 1, i32 1)
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %116 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_STAT, align 4
  %117 = call i32 @b43_phy_read(%struct.b43_wldev* %115, i32 %116)
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* %3, align 4
  %119 = and i32 %118, 32768
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %112
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %123 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_IDLETSSI, align 4
  %124 = load i32, i32* %3, align 4
  %125 = and i32 %124, 255
  %126 = sub nsw i32 %125, 32
  %127 = call i32 @b43_phy_maskset(%struct.b43_wldev* %122, i32 %123, i32 65472, i32 %126)
  br label %128

128:                                              ; preds = %121, %112
  %129 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %130 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %131 = call i32 @b43_phy_mask(%struct.b43_wldev* %129, i32 %130, i32 61439)
  ret void
}

declare dso_local i32 @b43_lptab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_LPTAB32(i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_PHY_OFDM(i32) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @lpphy_set_tssi_mux(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @lpphy_set_tx_power_by_index(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_dummy_transmission(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
