; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_get_chan_freq_range_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_get_chan_freq_range_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }
%struct.chan_info_nphy_radio2057 = type { i32 }
%struct.chan_info_nphy_radio205x = type { i32 }
%struct.chan_info_nphy_radio2057_rev5 = type { i32 }
%struct.chan_info_nphy_2055 = type { i32 }

@WL_CHAN_FREQ_RANGE_2G = common dso_local global i32 0, align 4
@BASE_LOW_5G_CHAN = common dso_local global i32 0, align 4
@BASE_MID_5G_CHAN = common dso_local global i32 0, align 4
@WL_CHAN_FREQ_RANGE_5GL = common dso_local global i32 0, align 4
@BASE_HIGH_5G_CHAN = common dso_local global i32 0, align 4
@WL_CHAN_FREQ_RANGE_5GM = common dso_local global i32 0, align 4
@WL_CHAN_FREQ_RANGE_5GH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_phy_get_chan_freq_range_nphy(%struct.brcms_phy* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.chan_info_nphy_radio2057*, align 8
  %8 = alloca %struct.chan_info_nphy_radio205x*, align 8
  %9 = alloca %struct.chan_info_nphy_radio2057_rev5*, align 8
  %10 = alloca %struct.chan_info_nphy_2055*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.chan_info_nphy_radio2057* null, %struct.chan_info_nphy_radio2057** %7, align 8
  store %struct.chan_info_nphy_radio205x* null, %struct.chan_info_nphy_radio205x** %8, align 8
  store %struct.chan_info_nphy_radio2057_rev5* null, %struct.chan_info_nphy_radio2057_rev5** %9, align 8
  store %struct.chan_info_nphy_2055* null, %struct.chan_info_nphy_2055** %10, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %15 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @CHSPEC_CHANNEL(i32 %16)
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @wlc_phy_chan2freq_nphy(%struct.brcms_phy* %19, i64 %20, i32* %6, %struct.chan_info_nphy_radio2057** %7, %struct.chan_info_nphy_radio205x** %8, %struct.chan_info_nphy_radio2057_rev5** %9, %struct.chan_info_nphy_2055** %10)
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @CHSPEC_IS2G(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @WL_CHAN_FREQ_RANGE_2G, align 4
  store i32 %28, i32* %3, align 4
  br label %51

29:                                               ; preds = %18
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @BASE_LOW_5G_CHAN, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @BASE_MID_5G_CHAN, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @WL_CHAN_FREQ_RANGE_5GL, align 4
  store i32 %38, i32* %3, align 4
  br label %51

39:                                               ; preds = %33, %29
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @BASE_MID_5G_CHAN, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @BASE_HIGH_5G_CHAN, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @WL_CHAN_FREQ_RANGE_5GM, align 4
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %43, %39
  %50 = load i32, i32* @WL_CHAN_FREQ_RANGE_5GH, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %47, %37, %27
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @CHSPEC_CHANNEL(i32) #1

declare dso_local i32 @wlc_phy_chan2freq_nphy(%struct.brcms_phy*, i64, i32*, %struct.chan_info_nphy_radio2057**, %struct.chan_info_nphy_radio205x**, %struct.chan_info_nphy_radio2057_rev5**, %struct.chan_info_nphy_2055**) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
