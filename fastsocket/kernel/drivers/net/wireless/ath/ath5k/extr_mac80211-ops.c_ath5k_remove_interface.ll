; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_remove_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { i32, i32, i32, i32, %struct.ieee80211_vif**, i32, i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ath5k_vif = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ATH_BCBUF = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @ath5k_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_remove_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca %struct.ath5k_vif*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %9, align 8
  store %struct.ath5k_hw* %10, %struct.ath5k_hw** %5, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.ath5k_vif*
  store %struct.ath5k_vif* %15, %struct.ath5k_vif** %6, align 8
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %20 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ath5k_vif*, %struct.ath5k_vif** %6, align 8
  %24 = getelementptr inbounds %struct.ath5k_vif, %struct.ath5k_vif* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %68

27:                                               ; preds = %2
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %29 = load %struct.ath5k_vif*, %struct.ath5k_vif** %6, align 8
  %30 = getelementptr inbounds %struct.ath5k_vif, %struct.ath5k_vif* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = call i32 @ath5k_txbuf_free_skb(%struct.ath5k_hw* %28, %struct.TYPE_2__* %31)
  %33 = load %struct.ath5k_vif*, %struct.ath5k_vif** %6, align 8
  %34 = getelementptr inbounds %struct.ath5k_vif, %struct.ath5k_vif* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %38 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %37, i32 0, i32 5
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %62, %27
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ATH_BCBUF, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %46 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %45, i32 0, i32 4
  %47 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %47, i64 %49
  %51 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %50, align 8
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %53 = icmp eq %struct.ieee80211_vif* %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %56 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %55, i32 0, i32 4
  %57 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %57, i64 %59
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %60, align 8
  br label %65

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %40

65:                                               ; preds = %54, %40
  %66 = load %struct.ath5k_vif*, %struct.ath5k_vif** %6, align 8
  %67 = getelementptr inbounds %struct.ath5k_vif, %struct.ath5k_vif* %66, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %67, align 8
  br label %68

68:                                               ; preds = %65, %2
  %69 = load %struct.ath5k_vif*, %struct.ath5k_vif** %6, align 8
  %70 = getelementptr inbounds %struct.ath5k_vif, %struct.ath5k_vif* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %76 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 4
  br label %103

79:                                               ; preds = %68
  %80 = load %struct.ath5k_vif*, %struct.ath5k_vif** %6, align 8
  %81 = getelementptr inbounds %struct.ath5k_vif, %struct.ath5k_vif* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %87 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 8
  br label %102

90:                                               ; preds = %79
  %91 = load %struct.ath5k_vif*, %struct.ath5k_vif** %6, align 8
  %92 = getelementptr inbounds %struct.ath5k_vif, %struct.ath5k_vif* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %98 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %96, %90
  br label %102

102:                                              ; preds = %101, %85
  br label %103

103:                                              ; preds = %102, %74
  %104 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %105 = call i32 @ath5k_update_bssid_mask_and_opmode(%struct.ath5k_hw* %104, i32* null)
  %106 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %107 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath5k_txbuf_free_skb(%struct.ath5k_hw*, %struct.TYPE_2__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ath5k_update_bssid_mask_and_opmode(%struct.ath5k_hw*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
