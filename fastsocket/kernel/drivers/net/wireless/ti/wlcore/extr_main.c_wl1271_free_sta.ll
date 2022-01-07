; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_free_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_free_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wl12xx_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.wl1271_station = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.ieee80211_vif = type { i32 }

@WL1271_FLAG_RECOVERY_IN_PROGRESS = common dso_local global i64 0, align 8
@WL1271_TX_SQN_POST_RECOVERY_PADDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl1271_free_sta(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wl1271_station*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.ieee80211_vif*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %11 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %10)
  store %struct.ieee80211_vif* %11, %struct.ieee80211_vif** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %14 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @test_bit(i64 %12, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %93

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %23 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @clear_bit(i64 %21, i32* %25)
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %29 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %28, i32 0, i32 0
  %30 = call i32 @__clear_bit(i64 %27, i64* %29)
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %33 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %32, i32 0, i32 4
  %34 = bitcast i32* %33 to i64*
  %35 = call i32 @__clear_bit(i64 %31, i64* %34)
  %36 = call i32 (...) @rcu_read_lock()
  %37 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %38 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %39 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %37, i32 %44)
  store %struct.ieee80211_sta* %45, %struct.ieee80211_sta** %8, align 8
  %46 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %47 = icmp ne %struct.ieee80211_sta* %46, null
  br i1 %47, label %48, label %77

48:                                               ; preds = %20
  %49 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = bitcast i8* %52 to %struct.wl1271_station*
  store %struct.wl1271_station* %53, %struct.wl1271_station** %7, align 8
  %54 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %55 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.wl1271_station*, %struct.wl1271_station** %7, align 8
  %62 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i64, i64* @WL1271_FLAG_RECOVERY_IN_PROGRESS, align 8
  %64 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %65 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %64, i32 0, i32 2
  %66 = call i64 @test_bit(i64 %63, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %48
  %69 = load i64, i64* @WL1271_TX_SQN_POST_RECOVERY_PADDING, align 8
  %70 = load %struct.wl1271_station*, %struct.wl1271_station** %7, align 8
  %71 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %69
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 4
  br label %76

76:                                               ; preds = %68, %48
  br label %77

77:                                               ; preds = %76, %20
  %78 = call i32 (...) @rcu_read_unlock()
  %79 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %80 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %81 = call i32 @wl12xx_free_link(%struct.wl1271* %79, %struct.wl12xx_vif* %80, i64* %6)
  %82 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %83 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %83, align 8
  %86 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %87 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %77
  %91 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %92 = call i32 @wl12xx_rearm_tx_watchdog_locked(%struct.wl1271* %91)
  br label %93

93:                                               ; preds = %19, %90, %77
  ret void
}

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local i64 @test_bit(i64, i32*) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

declare dso_local i32 @__clear_bit(i64, i64*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @wl12xx_free_link(%struct.wl1271*, %struct.wl12xx_vif*, i64*) #1

declare dso_local i32 @wl12xx_rearm_tx_watchdog_locked(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
