; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_sta_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_sta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.rt2x00_sta = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2800_sta_add(%struct.rt2x00_dev* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rt2x00_sta*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %10 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %11 = call %struct.rt2x00_sta* @sta_to_rt2x00_sta(%struct.ieee80211_sta* %10)
  store %struct.rt2x00_sta* %11, %struct.rt2x00_sta** %9, align 8
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %13 = call i32 @rt2800_find_wcid(%struct.rt2x00_dev* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.rt2x00_sta*, %struct.rt2x00_sta** %9, align 8
  %16 = getelementptr inbounds %struct.rt2x00_sta, %struct.rt2x00_sta* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

20:                                               ; preds = %3
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @rt2800_delete_wcid_attr(%struct.rt2x00_dev* %21, i32 %22)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @rt2800_config_wcid(%struct.rt2x00_dev* %24, i32 %27, i32 %28)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %33 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %34 = call i32 @rt2x00lib_get_bssidx(%struct.rt2x00_dev* %32, %struct.ieee80211_vif* %33)
  %35 = call i32 @rt2800_config_wcid_attr_bssidx(%struct.rt2x00_dev* %30, i32 %31, i32 %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %20, %19
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.rt2x00_sta* @sta_to_rt2x00_sta(%struct.ieee80211_sta*) #1

declare dso_local i32 @rt2800_find_wcid(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_delete_wcid_attr(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_config_wcid(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_config_wcid_attr_bssidx(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00lib_get_bssidx(%struct.rt2x00_dev*, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
