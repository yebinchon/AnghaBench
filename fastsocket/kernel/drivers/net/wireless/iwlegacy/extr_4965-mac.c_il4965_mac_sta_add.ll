; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_mac_sta_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_mac_sta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.il_station_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"received request to add station %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"proceeding to add station %pM\0A\00", align 1
@IL_INVALID_STATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to add station %pM (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Initializing rate scaling for station %pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_mac_sta_add(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.il_priv*, align 8
  %9 = alloca %struct.il_station_priv*, align 8
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
  %20 = bitcast i8* %19 to %struct.il_station_priv*
  store %struct.il_station_priv* %20, %struct.il_station_priv** %9, align 8
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @D_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %32 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @D_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @IL_INVALID_STATION, align 4
  %39 = load %struct.il_station_priv*, %struct.il_station_priv** %9, align 8
  %40 = getelementptr inbounds %struct.il_station_priv, %struct.il_station_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.il_station_priv*, %struct.il_station_priv** %9, align 8
  %43 = getelementptr inbounds %struct.il_station_priv, %struct.il_station_priv* %42, i32 0, i32 1
  %44 = call i32 @atomic_set(i32* %43, i32 0)
  %45 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %46 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %51 = call i32 @il_add_station_common(%struct.il_priv* %45, i32 %48, i32 %49, %struct.ieee80211_sta* %50, i32* %12)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %3
  %55 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @IL_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %61 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %4, align 4
  br label %80

64:                                               ; preds = %3
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.il_station_priv*, %struct.il_station_priv** %9, align 8
  %67 = getelementptr inbounds %struct.il_station_priv, %struct.il_station_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @D_INFO(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %74 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @il4965_rs_rate_init(%struct.il_priv* %73, %struct.ieee80211_sta* %74, i32 %75)
  %77 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %78 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %64, %54
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @D_INFO(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @il_add_station_common(%struct.il_priv*, i32, i32, %struct.ieee80211_sta*, i32*) #1

declare dso_local i32 @IL_ERR(i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @il4965_rs_rate_init(%struct.il_priv*, %struct.ieee80211_sta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
