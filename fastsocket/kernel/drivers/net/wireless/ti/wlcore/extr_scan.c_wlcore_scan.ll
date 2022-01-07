; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_scan.c_wlcore_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_scan.c_wlcore_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__, %struct.wl12xx_vif* }
%struct.TYPE_4__ = type { i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.cfg80211_scan_request*)* }
%struct.TYPE_3__ = type { i64, i64, i32, i32, %struct.cfg80211_scan_request*, i32 }
%struct.wl12xx_vif = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.cfg80211_scan_request = type { i64 }

@WL1271_MAX_CHANNELS = common dso_local global i64 0, align 8
@WL1271_SCAN_STATE_IDLE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@WL1271_SCAN_STATE_2GHZ_ACTIVE = common dso_local global i64 0, align 8
@WL1271_SCAN_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_scan(%struct.wl1271* %0, %struct.ieee80211_vif* %1, i32* %2, i64 %3, %struct.cfg80211_scan_request* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cfg80211_scan_request*, align 8
  %12 = alloca %struct.wl12xx_vif*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.cfg80211_scan_request* %4, %struct.cfg80211_scan_request** %11, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %14 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %13)
  store %struct.wl12xx_vif* %14, %struct.wl12xx_vif** %12, align 8
  %15 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %11, align 8
  %16 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WL1271_MAX_CHANNELS, align 8
  %19 = icmp sgt i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WL1271_SCAN_STATE_IDLE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %90

31:                                               ; preds = %5
  %32 = load i64, i64* @WL1271_SCAN_STATE_2GHZ_ACTIVE, align 8
  %33 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %34 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %44 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i64 %42, i64* %45, align 8
  %46 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %47 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @memcpy(i32 %49, i32* %50, i64 %51)
  br label %57

53:                                               ; preds = %38, %31
  %54 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %55 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %41
  %58 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %12, align 8
  %59 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %60 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %59, i32 0, i32 4
  store %struct.wl12xx_vif* %58, %struct.wl12xx_vif** %60, align 8
  %61 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %11, align 8
  %62 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %63 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  store %struct.cfg80211_scan_request* %61, %struct.cfg80211_scan_request** %64, align 8
  %65 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %66 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @memset(i32 %68, i32 0, i32 4)
  %70 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %71 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  %73 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %74 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %77 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %76, i32 0, i32 1
  %78 = load i32, i32* @WL1271_SCAN_TIMEOUT, align 4
  %79 = call i32 @msecs_to_jiffies(i32 %78)
  %80 = call i32 @ieee80211_queue_delayed_work(i32 %75, i32* %77, i32 %79)
  %81 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %82 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.cfg80211_scan_request*)*, i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.cfg80211_scan_request*)** %84, align 8
  %86 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %87 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %12, align 8
  %88 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %11, align 8
  %89 = call i32 %85(%struct.wl1271* %86, %struct.wl12xx_vif* %87, %struct.cfg80211_scan_request* %88)
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %57, %28
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
