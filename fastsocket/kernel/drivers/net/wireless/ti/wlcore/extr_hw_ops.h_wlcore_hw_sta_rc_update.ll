; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_hw_ops.h_wlcore_hw_sta_rc_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_hw_ops.h_wlcore_hw_sta_rc_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*, i32)* }
%struct.wl12xx_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*, i32)* @wlcore_hw_sta_rc_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlcore_hw_sta_rc_update(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.ieee80211_sta* %2, i32 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %10 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*, i32)*, i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*, i32)* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %17 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*, i32)*, i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*, i32)** %19, align 8
  %21 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %22 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %23 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 %20(%struct.wl1271* %21, %struct.wl12xx_vif* %22, %struct.ieee80211_sta* %23, i32 %24)
  br label %26

26:                                               ; preds = %15, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
