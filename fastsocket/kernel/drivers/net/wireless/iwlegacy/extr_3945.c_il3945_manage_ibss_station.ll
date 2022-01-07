; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_manage_ibss_station.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_manage_ibss_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, i32 }
%struct.ieee80211_vif = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.il_vif_priv = type { i32 }

@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@RATE_6M_PLCP = common dso_local global i32 0, align 4
@RATE_1M_PLCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.ieee80211_vif*, i32)* @il3945_manage_ibss_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_manage_ibss_station(%struct.il_priv* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.il_vif_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.il_vif_priv*
  store %struct.il_vif_priv* %14, %struct.il_vif_priv** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %3
  %18 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.il_vif_priv*, %struct.il_vif_priv** %8, align 8
  %24 = getelementptr inbounds %struct.il_vif_priv, %struct.il_vif_priv* %23, i32 0, i32 0
  %25 = call i32 @il3945_add_bssid_station(%struct.il_priv* %18, i32 %22, i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %64

30:                                               ; preds = %17
  %31 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %32 = load %struct.il_vif_priv*, %struct.il_vif_priv** %8, align 8
  %33 = getelementptr inbounds %struct.il_vif_priv, %struct.il_vif_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %36 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @RATE_6M_PLCP, align 4
  br label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @RATE_1M_PLCP, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = call i32 @il3945_sync_sta(%struct.il_priv* %31, i32 %34, i32 %45)
  %47 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %48 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.il_vif_priv*, %struct.il_vif_priv** %8, align 8
  %51 = getelementptr inbounds %struct.il_vif_priv, %struct.il_vif_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @il3945_rate_scale_init(i32 %49, i32 %52)
  store i32 0, i32* %4, align 4
  br label %64

54:                                               ; preds = %3
  %55 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %56 = load %struct.il_vif_priv*, %struct.il_vif_priv** %8, align 8
  %57 = getelementptr inbounds %struct.il_vif_priv, %struct.il_vif_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @il_remove_station(%struct.il_priv* %55, i32 %58, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %54, %44, %28
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @il3945_add_bssid_station(%struct.il_priv*, i32, i32*) #1

declare dso_local i32 @il3945_sync_sta(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il3945_rate_scale_init(i32, i32) #1

declare dso_local i32 @il_remove_station(%struct.il_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
