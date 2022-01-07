; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_mac_sta_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_mac_sta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.il3945_sta_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"station %pM\0A\00", align 1
@IL_INVALID_STATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to add station %pM (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Initializing rate scaling for station %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @il3945_mac_sta_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_mac_sta_add(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.il_priv*, align 8
  %9 = alloca %struct.il3945_sta_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.il_priv*, %struct.il_priv** %14, align 8
  store %struct.il_priv* %15, %struct.il_priv** %8, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.il3945_sta_priv*
  store %struct.il3945_sta_priv* %20, %struct.il3945_sta_priv** %9, align 8
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %28 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @D_INFO(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @IL_INVALID_STATION, align 4
  %35 = load %struct.il3945_sta_priv*, %struct.il3945_sta_priv** %9, align 8
  %36 = getelementptr inbounds %struct.il3945_sta_priv, %struct.il3945_sta_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %39 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %44 = call i32 @il_add_station_common(%struct.il_priv* %38, i32 %41, i32 %42, %struct.ieee80211_sta* %43, i32* %12)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %3
  %48 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %49 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @IL_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %54 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %73

57:                                               ; preds = %3
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.il3945_sta_priv*, %struct.il3945_sta_priv** %9, align 8
  %60 = getelementptr inbounds %struct.il3945_sta_priv, %struct.il3945_sta_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @D_INFO(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %67 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @il3945_rs_rate_init(%struct.il_priv* %66, %struct.ieee80211_sta* %67, i32 %68)
  %70 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %71 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %57, %47
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @D_INFO(i8*, i32) #1

declare dso_local i32 @il_add_station_common(%struct.il_priv*, i32, i32, %struct.ieee80211_sta*, i32*) #1

declare dso_local i32 @IL_ERR(i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @il3945_rs_rate_init(%struct.il_priv*, %struct.ieee80211_sta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
