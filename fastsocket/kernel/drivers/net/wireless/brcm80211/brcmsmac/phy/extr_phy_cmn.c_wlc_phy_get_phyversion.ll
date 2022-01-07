; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_get_phyversion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_get_phyversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_phy_get_phyversion(%struct.brcms_phy_pub* %0, i64* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.brcms_phy_pub*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.brcms_phy*, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %12 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %6, align 8
  %13 = bitcast %struct.brcms_phy_pub* %12 to %struct.brcms_phy*
  store %struct.brcms_phy* %13, %struct.brcms_phy** %11, align 8
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %11, align 8
  %15 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %7, align 8
  store i64 %17, i64* %18, align 8
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %11, align 8
  %20 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %8, align 8
  store i64 %22, i64* %23, align 8
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %11, align 8
  %25 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %9, align 8
  store i64 %27, i64* %28, align 8
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %11, align 8
  %30 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %10, align 8
  store i64 %32, i64* %33, align 8
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
