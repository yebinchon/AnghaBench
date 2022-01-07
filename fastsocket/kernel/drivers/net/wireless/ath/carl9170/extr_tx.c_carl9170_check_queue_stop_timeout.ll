; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_check_queue_stop_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_check_queue_stop_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i64 }
%struct.carl9170_tx_info = type { i64 }

@CARL9170_QUEUE_STUCK_TIMEOUT = common dso_local global i32 0, align 4
@CARL9170_RR_STUCK_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*)* @carl9170_check_queue_stop_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_check_queue_stop_timeout(%struct.ar9170* %0) #0 {
  %2 = alloca %struct.ar9170*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.carl9170_tx_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %2, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %62, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %11 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %8
  %17 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %18 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %26 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = call %struct.sk_buff* @skb_peek(%struct.TYPE_4__* %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %4, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %16
  br label %53

35:                                               ; preds = %16
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %36)
  store %struct.ieee80211_tx_info* %37, %struct.ieee80211_tx_info** %5, align 8
  %38 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = bitcast i8* %41 to %struct.carl9170_tx_info*
  store %struct.carl9170_tx_info* %42, %struct.carl9170_tx_info** %6, align 8
  %43 = load %struct.carl9170_tx_info*, %struct.carl9170_tx_info** %6, align 8
  %44 = getelementptr inbounds %struct.carl9170_tx_info, %struct.carl9170_tx_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @CARL9170_QUEUE_STUCK_TIMEOUT, align 4
  %47 = call i64 @msecs_to_jiffies(i32 %46)
  %48 = add nsw i64 %45, %47
  %49 = call i32 @time_is_before_jiffies(i64 %48)
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %35
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %55 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock_bh(i32* %60)
  br label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %8

65:                                               ; preds = %8
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %70 = load i32, i32* @CARL9170_RR_STUCK_TX, align 4
  %71 = call i32 @carl9170_restart(%struct.ar9170* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %65
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.TYPE_4__*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @time_is_before_jiffies(i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @carl9170_restart(%struct.ar9170*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
