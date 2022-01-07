; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_chanspec_bandrange_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_chanspec_bandrange_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_phy_chanspec_bandrange_get(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @CHSPEC_CHANNEL(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @wlc_phy_channel2freq(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %13 = call i64 @ISNPHY(%struct.brcms_phy* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @wlc_phy_get_chan_freq_range_nphy(%struct.brcms_phy* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %21 = call i64 @ISLCNPHY(%struct.brcms_phy* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @wlc_phy_chanspec_freq2bandrange_lpssn(i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %19
  br label %27

27:                                               ; preds = %26, %15
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @CHSPEC_CHANNEL(i32) #1

declare dso_local i32 @wlc_phy_channel2freq(i32) #1

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_get_chan_freq_range_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i64 @ISLCNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_chanspec_freq2bandrange_lpssn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
