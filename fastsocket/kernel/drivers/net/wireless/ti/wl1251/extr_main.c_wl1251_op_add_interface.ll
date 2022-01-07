; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_add_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1251* }
%struct.wl1251 = type { i32, i32, i32, i32, %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32, i32, i32 }

@IEEE80211_VIF_BEACON_FILTER = common dso_local global i32 0, align 4
@IEEE80211_VIF_SUPPORTS_CQM_RSSI = common dso_local global i32 0, align 4
@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"mac80211 add interface type %d mac %pM\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BSS_TYPE_STA_BSS = common dso_local global i32 0, align 4
@BSS_TYPE_IBSS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @wl1251_op_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_op_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.wl1251*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  store %struct.wl1251* %9, %struct.wl1251** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @IEEE80211_VIF_BEACON_FILTER, align 4
  %11 = load i32, i32* @IEEE80211_VIF_SUPPORTS_CQM_RSSI, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @DEBUG_MAC80211, align 4
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wl1251_debug(i32 %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %26 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %29 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %28, i32 0, i32 4
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %29, align 8
  %31 = icmp ne %struct.ieee80211_vif* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %86

35:                                               ; preds = %2
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %37 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %38 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %37, i32 0, i32 4
  store %struct.ieee80211_vif* %36, %struct.ieee80211_vif** %38, align 8
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %50 [
    i32 128, label %42
    i32 129, label %46
  ]

42:                                               ; preds = %35
  %43 = load i32, i32* @BSS_TYPE_STA_BSS, align 4
  %44 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %45 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  br label %53

46:                                               ; preds = %35
  %47 = load i32, i32* @BSS_TYPE_IBSS, align 4
  %48 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %49 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  br label %53

50:                                               ; preds = %35
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %86

53:                                               ; preds = %46, %42
  %54 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %55 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ETH_ALEN, align 4
  %61 = call i64 @memcmp(i32 %56, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %53
  %64 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %65 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %68 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ETH_ALEN, align 4
  %71 = call i32 @memcpy(i32 %66, i32 %69, i32 %70)
  %72 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %73 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %76 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @SET_IEEE80211_PERM_ADDR(i32 %74, i32 %77)
  %79 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %80 = call i32 @wl1251_acx_station_id(%struct.wl1251* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %63
  br label %86

84:                                               ; preds = %63
  br label %85

85:                                               ; preds = %84, %53
  br label %86

86:                                               ; preds = %85, %83, %50, %32
  %87 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %88 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @wl1251_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(i32, i32) #1

declare dso_local i32 @wl1251_acx_station_id(%struct.wl1251*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
