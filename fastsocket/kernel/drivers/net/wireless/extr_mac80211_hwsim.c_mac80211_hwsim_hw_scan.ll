; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_hw_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.mac80211_hwsim_data* }
%struct.mac80211_hwsim_data = type { i32, i32, i32, i64, %struct.ieee80211_vif*, %struct.cfg80211_scan_request*, i64 }
%struct.ieee80211_vif = type { i32 }
%struct.cfg80211_scan_request = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"hwsim hw_scan request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.cfg80211_scan_request*)* @mac80211_hwsim_hw_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac80211_hwsim_hw_scan(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.cfg80211_scan_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.cfg80211_scan_request*, align 8
  %8 = alloca %struct.mac80211_hwsim_data*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.cfg80211_scan_request* %2, %struct.cfg80211_scan_request** %7, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 1
  %11 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %10, align 8
  store %struct.mac80211_hwsim_data* %11, %struct.mac80211_hwsim_data** %8, align 8
  %12 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %13 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %16 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %21 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %20, i32 0, i32 5
  %22 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %21, align 8
  %23 = icmp ne %struct.cfg80211_scan_request* %22, null
  br label %24

24:                                               ; preds = %19, %3
  %25 = phi i1 [ true, %3 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %31 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %30, i32 0, i32 2
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %57

35:                                               ; preds = %24
  %36 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %37 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %38 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %37, i32 0, i32 5
  store %struct.cfg80211_scan_request* %36, %struct.cfg80211_scan_request** %38, align 8
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %40 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %41 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %40, i32 0, i32 4
  store %struct.ieee80211_vif* %39, %struct.ieee80211_vif** %41, align 8
  %42 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %43 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %45 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %44, i32 0, i32 2
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @wiphy_debug(i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %52 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %55 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %54, i32 0, i32 0
  %56 = call i32 @ieee80211_queue_delayed_work(i32 %53, i32* %55, i32 0)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %35, %29
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wiphy_debug(i32, i8*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
