; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lcn.c_b43_phy_lcn_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lcn.c_b43_phy_lcn_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }
%struct.ieee80211_channel = type { i32 }

@b43_phy_lcn_set_channel.sfo_cfg = internal constant [14 x [2 x i32]] [[2 x i32] [i32 965, i32 1087], [2 x i32] [i32 967, i32 1085], [2 x i32] [i32 969, i32 1082], [2 x i32] [i32 971, i32 1080], [2 x i32] [i32 973, i32 1078], [2 x i32] [i32 975, i32 1076], [2 x i32] [i32 977, i32 1073], [2 x i32] [i32 979, i32 1071], [2 x i32] [i32 981, i32 1069], [2 x i32] [i32 983, i32 1067], [2 x i32] [i32 985, i32 1065], [2 x i32] [i32 987, i32 1063], [2 x i32] [i32 989, i32 1060], [2 x i32] [i32 994, i32 1055]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, %struct.ieee80211_channel*, i32)* @b43_phy_lcn_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_phy_lcn_set_channel(%struct.b43_wldev* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %8 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %9 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @b43_phy_lcn_set_channel_tweaks(%struct.b43_wldev* %7, i32 %10)
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %13 = call i32 @b43_phy_set(%struct.b43_wldev* %12, i32 1098, i32 68)
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %15 = call i32 @b43_phy_write(%struct.b43_wldev* %14, i32 1098, i32 128)
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %17 = call i32 @b43_radio_2064_channel_setup(%struct.b43_wldev* %16)
  %18 = call i32 @mdelay(i32 1)
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %20 = call i32 @b43_phy_lcn_afe_set_unset(%struct.b43_wldev* %19)
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [14 x [2 x i32]], [14 x [2 x i32]]* @b43_phy_lcn_set_channel.sfo_cfg, i64 0, i64 %26
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @b43_phy_write(%struct.b43_wldev* %21, i32 1623, i32 %29)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [14 x [2 x i32]], [14 x [2 x i32]]* @b43_phy_lcn_set_channel.sfo_cfg, i64 0, i64 %36
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @b43_phy_write(%struct.b43_wldev* %31, i32 1624, i32 %39)
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 14
  br i1 %44, label %45, label %50

45:                                               ; preds = %3
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %47 = call i32 @b43_phy_maskset(%struct.b43_wldev* %46, i32 1096, i32 -769, i32 512)
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %49 = call i32 @b43_phy_lcn_load_tx_iir_cck_filter(%struct.b43_wldev* %48, i32 3)
  br label %55

50:                                               ; preds = %3
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %52 = call i32 @b43_phy_maskset(%struct.b43_wldev* %51, i32 1096, i32 -769, i32 256)
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %54 = call i32 @b43_phy_lcn_load_tx_iir_cck_filter(%struct.b43_wldev* %53, i32 25)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %57 = call i32 @b43_phy_lcn_load_tx_iir_ofdm_filter(%struct.b43_wldev* %56, i32 0)
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %59 = call i32 @b43_phy_maskset(%struct.b43_wldev* %58, i32 1259, i32 -57, i32 8)
  ret i32 0
}

declare dso_local i32 @b43_phy_lcn_set_channel_tweaks(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_2064_channel_setup(%struct.b43_wldev*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @b43_phy_lcn_afe_set_unset(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_lcn_load_tx_iir_cck_filter(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_lcn_load_tx_iir_ofdm_filter(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
