; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_clk_bwbits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_clk_bwbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { i32 }

@SICF_BW10 = common dso_local global i32 0, align 4
@SICF_BW20 = common dso_local global i32 0, align 4
@SICF_BW40 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_phy_clk_bwbits(%struct.brcms_phy_pub* %0) #0 {
  %2 = alloca %struct.brcms_phy_pub*, align 8
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %2, align 8
  %5 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %2, align 8
  %6 = bitcast %struct.brcms_phy_pub* %5 to %struct.brcms_phy*
  store %struct.brcms_phy* %6, %struct.brcms_phy** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %8 = icmp ne %struct.brcms_phy* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %11 = call i64 @ISNPHY(%struct.brcms_phy* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %15 = call i64 @ISLCNPHY(%struct.brcms_phy* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13, %9
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %19 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %27 [
    i32 130, label %21
    i32 129, label %23
    i32 128, label %25
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* @SICF_BW10, align 4
  store i32 %22, i32* %4, align 4
  br label %28

23:                                               ; preds = %17
  %24 = load i32, i32* @SICF_BW20, align 4
  store i32 %24, i32* %4, align 4
  br label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @SICF_BW40, align 4
  store i32 %26, i32* %4, align 4
  br label %28

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %25, %23, %21
  br label %29

29:                                               ; preds = %28, %13, %1
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i64 @ISLCNPHY(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
