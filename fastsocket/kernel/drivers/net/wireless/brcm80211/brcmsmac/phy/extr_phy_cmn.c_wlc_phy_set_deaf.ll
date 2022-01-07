; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_set_deaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_set_deaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_set_deaf(%struct.brcms_phy_pub* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy_pub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_phy*, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %3, align 8
  %7 = bitcast %struct.brcms_phy_pub* %6 to %struct.brcms_phy*
  store %struct.brcms_phy* %7, %struct.brcms_phy** %5, align 8
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %9 = call i64 @ISLCNPHY(%struct.brcms_phy* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %13 = call i32 @wlc_lcnphy_deaf_mode(%struct.brcms_phy* %12, i32 1)
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %16 = call i64 @ISNPHY(%struct.brcms_phy* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %20 = call i32 @wlc_nphy_deaf_mode(%struct.brcms_phy* %19, i32 1)
  br label %21

21:                                               ; preds = %18, %14
  br label %22

22:                                               ; preds = %21, %11
  ret void
}

declare dso_local i64 @ISLCNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_deaf_mode(%struct.brcms_phy*, i32) #1

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_nphy_deaf_mode(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
