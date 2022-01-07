; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_get_target_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_get_target_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_phy_txpower_get_target_min(%struct.brcms_phy_pub* %0) #0 {
  %2 = alloca %struct.brcms_phy_pub*, align 8
  %3 = alloca %struct.brcms_phy*, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %2, align 8
  %4 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %2, align 8
  %5 = bitcast %struct.brcms_phy_pub* %4 to %struct.brcms_phy*
  store %struct.brcms_phy* %5, %struct.brcms_phy** %3, align 8
  %6 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %7 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
