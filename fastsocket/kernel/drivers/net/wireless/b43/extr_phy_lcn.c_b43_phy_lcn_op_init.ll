; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lcn.c_b43_phy_lcn_op_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lcn.c_b43_phy_lcn_op_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.bcma_drv_cc }
%struct.bcma_drv_cc = type { i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_phy_lcn_op_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_phy_lcn_op_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.bcma_drv_cc*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 2
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.bcma_drv_cc* %11, %struct.bcma_drv_cc** %3, align 8
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %13 = call i32 @b43_phy_set(%struct.b43_wldev* %12, i32 1098, i32 128)
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = call i32 @b43_phy_mask(%struct.b43_wldev* %14, i32 1098, i32 127)
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = call i32 @b43_phy_set(%struct.b43_wldev* %16, i32 1745, i32 128)
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %19 = call i32 @b43_phy_write(%struct.b43_wldev* %18, i32 1744, i32 7)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = call i32 @b43_phy_lcn_afe_set_unset(%struct.b43_wldev* %20)
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %23 = call i32 @b43_phy_write(%struct.b43_wldev* %22, i32 1546, i32 160)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = call i32 @b43_phy_write(%struct.b43_wldev* %24, i32 1130, i32 25)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = call i32 @b43_phy_maskset(%struct.b43_wldev* %26, i32 1635, i32 65280, i32 100)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = call i32 @b43_phy_lcn_tables_init(%struct.b43_wldev* %28)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = call i32 @b43_phy_lcn_rev0_baseband_init(%struct.b43_wldev* %30)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = call i32 @b43_phy_lcn_bu_tweaks(%struct.b43_wldev* %32)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 8292
  br i1 %38, label %39, label %42

39:                                               ; preds = %1
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = call i32 @b43_radio_2064_init(%struct.b43_wldev* %40)
  br label %44

42:                                               ; preds = %1
  %43 = call i32 @B43_WARN_ON(i32 1)
  br label %44

44:                                               ; preds = %42, %39
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @b43_current_band(i32 %47)
  %49 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = call i32 @b43_phy_lcn_tx_pwr_ctl_init(%struct.b43_wldev* %52)
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %57 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @b43_switch_channel(%struct.b43_wldev* %55, i32 %59)
  %61 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %62 = call i32 @bcma_chipco_regctl_maskset(%struct.bcma_drv_cc* %61, i32 0, i32 15, i32 9)
  %63 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %64 = call i32 @bcma_chipco_chipctl_maskset(%struct.bcma_drv_cc* %63, i32 0, i32 0, i32 63823325)
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %66 = call i32 @b43_phy_set(%struct.b43_wldev* %65, i32 1096, i32 16384)
  %67 = call i32 @udelay(i32 100)
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %69 = call i32 @b43_phy_mask(%struct.b43_wldev* %68, i32 1096, i32 -16385)
  ret i32 0
}

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_lcn_afe_set_unset(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_lcn_tables_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_lcn_rev0_baseband_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_lcn_bu_tweaks(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_2064_init(%struct.b43_wldev*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_phy_lcn_tx_pwr_ctl_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_switch_channel(%struct.b43_wldev*, i32) #1

declare dso_local i32 @bcma_chipco_regctl_maskset(%struct.bcma_drv_cc*, i32, i32, i32) #1

declare dso_local i32 @bcma_chipco_chipctl_maskset(%struct.bcma_drv_cc*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
