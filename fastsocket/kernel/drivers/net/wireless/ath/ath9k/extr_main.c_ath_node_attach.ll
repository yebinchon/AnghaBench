; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath_node_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath_node_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ath_node = type { i32, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ath_softc* }

@IEEE80211_HT_MAX_AMPDU_FACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ieee80211_sta*, %struct.ieee80211_vif*)* @ath_node_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_node_attach(%struct.ath_softc* %0, %struct.ieee80211_sta* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ath_node*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %8 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ath_node*
  store %struct.ath_node* %11, %struct.ath_node** %7, align 8
  %12 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %13 = load %struct.ath_node*, %struct.ath_node** %7, align 8
  %14 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %13, i32 0, i32 4
  store %struct.ath_softc* %12, %struct.ath_softc** %14, align 8
  %15 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %16 = load %struct.ath_node*, %struct.ath_node** %7, align 8
  %17 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %16, i32 0, i32 3
  store %struct.ieee80211_sta* %15, %struct.ieee80211_sta** %17, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %19 = load %struct.ath_node*, %struct.ath_node** %7, align 8
  %20 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %19, i32 0, i32 2
  store %struct.ieee80211_vif* %18, %struct.ieee80211_vif** %20, align 8
  %21 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %22 = load %struct.ath_node*, %struct.ath_node** %7, align 8
  %23 = call i32 @ath_tx_node_init(%struct.ath_softc* %21, %struct.ath_node* %22)
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %3
  %30 = load i32, i32* @IEEE80211_HT_MAX_AMPDU_FACTOR, align 4
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %30, %34
  %36 = shl i32 1, %35
  %37 = load %struct.ath_node*, %struct.ath_node** %7, align 8
  %38 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ath9k_parse_mpdudensity(i32 %42)
  %44 = load %struct.ath_node*, %struct.ath_node** %7, align 8
  %45 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %29, %3
  ret void
}

declare dso_local i32 @ath_tx_node_init(%struct.ath_softc*, %struct.ath_node*) #1

declare dso_local i32 @ath9k_parse_mpdudensity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
