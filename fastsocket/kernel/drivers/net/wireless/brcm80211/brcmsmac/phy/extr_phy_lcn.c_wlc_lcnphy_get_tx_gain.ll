; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_get_tx_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_get_tx_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }
%struct.lcnphy_txgains = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, %struct.lcnphy_txgains*)* @wlc_lcnphy_get_tx_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_get_tx_gain(%struct.brcms_phy* %0, %struct.lcnphy_txgains* %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca %struct.lcnphy_txgains*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store %struct.lcnphy_txgains* %1, %struct.lcnphy_txgains** %4, align 8
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %9 = call i32 @read_phy_reg(%struct.brcms_phy* %8, i32 1081)
  %10 = ashr i32 %9, 0
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 896
  %13 = ashr i32 %12, 7
  %14 = load %struct.lcnphy_txgains*, %struct.lcnphy_txgains** %4, align 8
  %15 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %17 = call i32 @read_phy_reg(%struct.brcms_phy* %16, i32 1205)
  %18 = and i32 %17, 65535
  %19 = ashr i32 %18, 0
  store i32 %19, i32* %6, align 4
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %21 = call i32 @read_phy_reg(%struct.brcms_phy* %20, i32 1275)
  %22 = and i32 %21, 32767
  %23 = ashr i32 %22, 0
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 255
  %26 = load %struct.lcnphy_txgains*, %struct.lcnphy_txgains** %4, align 8
  %27 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 255
  %31 = load %struct.lcnphy_txgains*, %struct.lcnphy_txgains** %4, align 8
  %32 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 255
  %35 = load %struct.lcnphy_txgains*, %struct.lcnphy_txgains** %4, align 8
  %36 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  ret void
}

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
