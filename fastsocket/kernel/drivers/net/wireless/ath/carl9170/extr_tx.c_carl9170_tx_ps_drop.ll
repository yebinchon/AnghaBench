; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_ps_drop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_ps_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.carl9170_sta_info = type { i32 }
%struct.ieee80211_tx_info = type { i32 }

@IEEE80211_TX_CTL_NO_PS_BUFFER = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_CLEAR_PS_FILT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_TX_FILTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, %struct.sk_buff*)* @carl9170_tx_ps_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_tx_ps_drop(%struct.ar9170* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.carl9170_sta_info*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.ieee80211_sta* @__carl9170_get_tx_sta(%struct.ar9170* %10, %struct.sk_buff* %11)
  store %struct.ieee80211_sta* %12, %struct.ieee80211_sta** %6, align 8
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %14 = icmp ne %struct.ieee80211_sta* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %63

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.carl9170_sta_info*
  store %struct.carl9170_sta_info* %21, %struct.carl9170_sta_info** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %22)
  store %struct.ieee80211_tx_info* %23, %struct.ieee80211_tx_info** %8, align 8
  %24 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %7, align 8
  %25 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %16
  %30 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %31 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IEEE80211_TX_CTL_NO_PS_BUFFER, align 4
  %34 = load i32, i32* @IEEE80211_TX_CTL_CLEAR_PS_FILT, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %62, label %38

38:                                               ; preds = %29
  %39 = call i32 (...) @rcu_read_unlock()
  %40 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %48 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %47, i32 0, i32 0
  %49 = call i32 @atomic_dec(i32* %48)
  br label %50

50:                                               ; preds = %46, %38
  %51 = load i32, i32* @IEEE80211_TX_STAT_TX_FILTERED, align 4
  %52 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %53 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call i32 @carl9170_release_dev_space(%struct.ar9170* %56, %struct.sk_buff* %57)
  %59 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i32 @carl9170_tx_status(%struct.ar9170* %59, %struct.sk_buff* %60, i32 0)
  store i32 1, i32* %3, align 4
  br label %65

62:                                               ; preds = %29, %16
  br label %63

63:                                               ; preds = %62, %15
  %64 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %50
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @__carl9170_get_tx_sta(%struct.ar9170*, %struct.sk_buff*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @carl9170_release_dev_space(%struct.ar9170*, %struct.sk_buff*) #1

declare dso_local i32 @carl9170_tx_status(%struct.ar9170*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
