; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_ps_unblock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_ps_unblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.carl9170_sta_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, %struct.sk_buff*)* @carl9170_tx_ps_unblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_tx_ps_unblock(%struct.ar9170* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.carl9170_sta_info*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.ieee80211_sta* @__carl9170_get_tx_sta(%struct.ar9170* %8, %struct.sk_buff* %9)
  store %struct.ieee80211_sta* %10, %struct.ieee80211_sta** %5, align 8
  %11 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %12 = icmp ne %struct.ieee80211_sta* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.carl9170_sta_info*
  store %struct.carl9170_sta_info* %22, %struct.carl9170_sta_info** %6, align 8
  %23 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %6, align 8
  %24 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %23, i32 0, i32 0
  %25 = call i64 @atomic_dec_return(i32* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %29 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %32 = call i32 @ieee80211_sta_block_awake(i32 %30, %struct.ieee80211_sta* %31, i32 0)
  br label %33

33:                                               ; preds = %27, %18
  br label %34

34:                                               ; preds = %33, %17
  %35 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @__carl9170_get_tx_sta(%struct.ar9170*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @ieee80211_sta_block_awake(i32, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
