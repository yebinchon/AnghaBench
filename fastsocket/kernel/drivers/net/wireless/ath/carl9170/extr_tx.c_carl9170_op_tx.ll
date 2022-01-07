; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_op_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_op_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar9170* }
%struct.ar9170 = type { i32, i32, i32* }
%struct.ieee80211_tx_control = type { %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.carl9170_sta_info = type { i32 }

@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @carl9170_op_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ar9170*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.carl9170_sta_info*, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.ar9170*, %struct.ar9170** %14, align 8
  store %struct.ar9170* %15, %struct.ar9170** %7, align 8
  %16 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %16, i32 0, i32 0
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  store %struct.ieee80211_sta* %18, %struct.ieee80211_sta** %9, align 8
  %19 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %20 = call i32 @IS_STARTED(%struct.ar9170* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %85

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %28)
  store %struct.ieee80211_tx_info* %29, %struct.ieee80211_tx_info** %8, align 8
  %30 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @carl9170_tx_prepare(%struct.ar9170* %30, %struct.ieee80211_sta* %31, %struct.sk_buff* %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %85

37:                                               ; preds = %27
  %38 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call i32 @carl9170_tx_accounting(%struct.ar9170* %38, %struct.sk_buff* %39)
  %41 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %42 = icmp ne %struct.ieee80211_sta* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = bitcast i8* %47 to %struct.carl9170_sta_info*
  store %struct.carl9170_sta_info* %48, %struct.carl9170_sta_info** %11, align 8
  %49 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %11, align 8
  %50 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %49, i32 0, i32 0
  %51 = call i32 @atomic_inc(i32* %50)
  br label %52

52:                                               ; preds = %43, %37
  %53 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %54 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %52
  %60 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %61 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %64 = call i32 @carl9170_tx_ampdu_queue(%struct.ar9170* %60, %struct.ieee80211_sta* %61, %struct.sk_buff* %62, %struct.ieee80211_tx_info* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %69 = call i32 @carl9170_tx_ampdu(%struct.ar9170* %68)
  br label %70

70:                                               ; preds = %67, %59
  br label %82

71:                                               ; preds = %52
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %72)
  store i32 %73, i32* %12, align 4
  %74 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %75 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = call i32 @skb_queue_tail(i32* %79, %struct.sk_buff* %80)
  br label %82

82:                                               ; preds = %71, %70
  %83 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %84 = call i32 @carl9170_tx(%struct.ar9170* %83)
  br label %95

85:                                               ; preds = %36, %26
  %86 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %87 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %91 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = call i32 @ieee80211_free_txskb(i32 %92, %struct.sk_buff* %93)
  br label %95

95:                                               ; preds = %85, %82
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_STARTED(%struct.ar9170*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @carl9170_tx_prepare(%struct.ar9170*, %struct.ieee80211_sta*, %struct.sk_buff*) #1

declare dso_local i32 @carl9170_tx_accounting(%struct.ar9170*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @carl9170_tx_ampdu_queue(%struct.ar9170*, %struct.ieee80211_sta*, %struct.sk_buff*, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @carl9170_tx_ampdu(%struct.ar9170*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @carl9170_tx(%struct.ar9170*) #1

declare dso_local i32 @ieee80211_free_txskb(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
