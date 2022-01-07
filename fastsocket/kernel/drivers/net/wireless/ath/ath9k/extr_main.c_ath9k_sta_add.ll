; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_sta_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_sta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i64 }
%struct.ath_common = type { i32 }
%struct.ath_node = type { i32 }
%struct.ieee80211_key_conf = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @ath9k_sta_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_sta_add(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.ath_softc*, align 8
  %9 = alloca %struct.ath_common*, align 8
  %10 = alloca %struct.ath_node*, align 8
  %11 = alloca %struct.ieee80211_key_conf, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.ath_softc*, %struct.ath_softc** %14, align 8
  store %struct.ath_softc* %15, %struct.ath_softc** %8, align 8
  %16 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ath_common* @ath9k_hw_common(i32 %18)
  store %struct.ath_common* %19, %struct.ath_common** %9, align 8
  %20 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ath_node*
  store %struct.ath_node* %23, %struct.ath_node** %10, align 8
  %24 = bitcast %struct.ieee80211_key_conf* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 4, i1 false)
  %25 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %28 = call i32 @ath_node_attach(%struct.ath_softc* %25, %struct.ieee80211_sta* %26, %struct.ieee80211_vif* %27)
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %3
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %53

41:                                               ; preds = %34, %3
  %42 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %44 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %45 = call i32 @ath_key_config(%struct.ath_common* %42, %struct.ieee80211_vif* %43, %struct.ieee80211_sta* %44, %struct.ieee80211_key_conf* %11)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.ath_node*, %struct.ath_node** %10, align 8
  %51 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %41
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %40
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ath_node_attach(%struct.ath_softc*, %struct.ieee80211_sta*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath_key_config(%struct.ath_common*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
