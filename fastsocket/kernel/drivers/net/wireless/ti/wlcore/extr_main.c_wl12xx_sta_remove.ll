; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_sta_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_sta_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_sta = type { i64, i64 }
%struct.wl1271_station = type { i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"mac80211 remove sta %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*)* @wl12xx_sta_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_sta_remove(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.wl1271_station*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @DEBUG_MAC80211, align 4
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @wl1271_debug(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.wl1271_station*
  store %struct.wl1271_station* %20, %struct.wl1271_station** %8, align 8
  %21 = load %struct.wl1271_station*, %struct.wl1271_station** %8, align 8
  %22 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %26 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @test_bit(i32 %24, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %56

38:                                               ; preds = %3
  %39 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %40 = load %struct.wl1271_station*, %struct.wl1271_station** %8, align 8
  %41 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @wl12xx_cmd_remove_peer(%struct.wl1271* %39, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %56

48:                                               ; preds = %38
  %49 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %50 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %51 = load %struct.wl1271_station*, %struct.wl1271_station** %8, align 8
  %52 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @wl1271_free_sta(%struct.wl1271* %49, %struct.wl12xx_vif* %50, i32 %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %48, %46, %35
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @wl12xx_cmd_remove_peer(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_free_sta(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
