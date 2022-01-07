; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_cal_rxiq_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_cal_rxiq_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nphy_txgains = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_phy_cal_rxiq_nphy(%struct.brcms_phy* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nphy_txgains, align 4
  %7 = alloca %struct.brcms_phy*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %6, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %12 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @NREV_GE(i32 %14, i32 7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %17, %4
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %20 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @NREV_GE(i32 %22, i32 3)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wlc_phy_cal_rxiq_nphy_rev3(%struct.brcms_phy* %26, i32 %30, i64 %27, i32 %28)
  store i32 %31, i32* %5, align 4
  br label %38

32:                                               ; preds = %18
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @wlc_phy_cal_rxiq_nphy_rev2(%struct.brcms_phy* %33, i32 %36, i32 %34)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %32, %25
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @wlc_phy_cal_rxiq_nphy_rev3(%struct.brcms_phy*, i32, i64, i32) #1

declare dso_local i32 @wlc_phy_cal_rxiq_nphy_rev2(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
