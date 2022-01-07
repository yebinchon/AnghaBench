; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_ps.c_wl12xx_ps_link_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_ps.c_wl12xx_ps_link_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wl12xx_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_vif = type { i32 }

@DEBUG_PSM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"start mac80211 PSM on hlid %d pkts %d clean_queues %d\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"could not find sta %pM for starting ps\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl12xx_ps_link_start(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.ieee80211_vif*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %12 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %11)
  store %struct.ieee80211_vif* %12, %struct.ieee80211_vif** %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %15 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %14, i32 0, i32 0
  %16 = call i64 @test_bit(i64 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %68

19:                                               ; preds = %4
  %20 = load i32, i32* @DEBUG_PSM, align 4
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @wl1271_debug(i32 %20, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %21, i32 %28, i32 %29)
  %31 = call i32 (...) @rcu_read_lock()
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %33 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %34 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %32, i32 %39)
  store %struct.ieee80211_sta* %40, %struct.ieee80211_sta** %9, align 8
  %41 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %42 = icmp ne %struct.ieee80211_sta* %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %19
  %44 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %45 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @wl1271_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = call i32 (...) @rcu_read_unlock()
  br label %68

53:                                               ; preds = %19
  %54 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %55 = call i32 @ieee80211_sta_ps_transition_ni(%struct.ieee80211_sta* %54, i32 1)
  %56 = call i32 (...) @rcu_read_unlock()
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @wl1271_ps_filter_frames(%struct.wl1271* %60, i64 %61)
  br label %63

63:                                               ; preds = %59, %53
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %66 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %65, i32 0, i32 0
  %67 = call i32 @__set_bit(i64 %64, i32* %66)
  br label %68

68:                                               ; preds = %63, %43, %18
  ret void
}

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local i64 @test_bit(i64, i32*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i32) #1

declare dso_local i32 @wl1271_error(i8*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee80211_sta_ps_transition_ni(%struct.ieee80211_sta*, i32) #1

declare dso_local i32 @wl1271_ps_filter_frames(%struct.wl1271*, i64) #1

declare dso_local i32 @__set_bit(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
