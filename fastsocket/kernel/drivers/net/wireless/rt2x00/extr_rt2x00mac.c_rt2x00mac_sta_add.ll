; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00mac.c_rt2x00mac_sta_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00mac.c_rt2x00mac_sta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.rt2x00_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.rt2x00_sta = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00mac_sta_add(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.rt2x00_dev*, align 8
  %8 = alloca %struct.rt2x00_sta*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  store %struct.rt2x00_dev* %11, %struct.rt2x00_dev** %7, align 8
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %13 = call %struct.rt2x00_sta* @sta_to_rt2x00_sta(%struct.ieee80211_sta* %12)
  store %struct.rt2x00_sta* %13, %struct.rt2x00_sta** %8, align 8
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %15 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64 (%struct.rt2x00_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)*, i64 (%struct.rt2x00_dev*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)** %19, align 8
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %23 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %24 = call i64 %20(%struct.rt2x00_dev* %21, %struct.ieee80211_vif* %22, %struct.ieee80211_sta* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.rt2x00_sta*, %struct.rt2x00_sta** %8, align 8
  %28 = getelementptr inbounds %struct.rt2x00_sta, %struct.rt2x00_sta* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %3
  ret i32 0
}

declare dso_local %struct.rt2x00_sta* @sta_to_rt2x00_sta(%struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
