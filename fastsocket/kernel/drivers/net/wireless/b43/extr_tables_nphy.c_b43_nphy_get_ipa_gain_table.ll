; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_nphy.c_b43_nphy_get_ipa_gain_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_nphy.c_b43_nphy_get_ipa_gain_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@txpwrctrl_tx_gain_ipa_rev5 = common dso_local global i32* null, align 8
@txpwrctrl_tx_gain_ipa_rev6 = common dso_local global i32* null, align 8
@txpwrctrl_tx_gain_ipa = common dso_local global i32* null, align 8
@txpwrctrl_tx_gain_ipa_5g = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.b43_wldev*)* @b43_nphy_get_ipa_gain_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @b43_nphy_get_ipa_gain_table(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @b43_current_band(i32 %6)
  %8 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %1
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sge i32 %14, 6
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 47162
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32*, i32** @txpwrctrl_tx_gain_ipa_rev5, align 8
  store i32* %24, i32** %2, align 8
  br label %39

25:                                               ; preds = %16
  %26 = load i32*, i32** @txpwrctrl_tx_gain_ipa_rev6, align 8
  store i32* %26, i32** %2, align 8
  br label %39

27:                                               ; preds = %10
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %29 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %31, 5
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32*, i32** @txpwrctrl_tx_gain_ipa_rev5, align 8
  store i32* %34, i32** %2, align 8
  br label %39

35:                                               ; preds = %27
  %36 = load i32*, i32** @txpwrctrl_tx_gain_ipa, align 8
  store i32* %36, i32** %2, align 8
  br label %39

37:                                               ; preds = %1
  %38 = load i32*, i32** @txpwrctrl_tx_gain_ipa_5g, align 8
  store i32* %38, i32** %2, align 8
  br label %39

39:                                               ; preds = %37, %35, %33, %25, %23
  %40 = load i32*, i32** %2, align 8
  ret i32* %40
}

declare dso_local i64 @b43_current_band(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
