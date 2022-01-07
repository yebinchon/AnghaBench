; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_dev.c_rtl8187_tx_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_dev.c_rtl8187_tx_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.ieee80211_hw** }
%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { i32, %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"transmit status queue full\0A\00", align 1
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @rtl8187_tx_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8187_tx_cb(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_tx_info*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.rtl8187_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.sk_buff*
  store %struct.sk_buff* %11, %struct.sk_buff** %3, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %12)
  store %struct.ieee80211_tx_info* %13, %struct.ieee80211_tx_info** %4, align 8
  %14 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %14, i32 0, i32 1
  %16 = load %struct.ieee80211_hw**, %struct.ieee80211_hw*** %15, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw*, %struct.ieee80211_hw** %16, i64 0
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %17, align 8
  store %struct.ieee80211_hw* %18, %struct.ieee80211_hw** %5, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 0
  %21 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %20, align 8
  store %struct.rtl8187_priv* %21, %struct.rtl8187_priv** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %6, align 8
  %24 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i64 4, i64 4
  %29 = trunc i64 %28 to i32
  %30 = call i32 @skb_pull(%struct.sk_buff* %22, i32 %29)
  %31 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %32 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %31)
  %33 = load %struct.urb*, %struct.urb** %2, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %82, label %37

37:                                               ; preds = %1
  %38 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %82, label %44

44:                                               ; preds = %37
  %45 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %6, align 8
  %46 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %44
  %50 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %6, align 8
  %51 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = call i32 @skb_queue_tail(i32* %52, %struct.sk_buff* %53)
  br label %55

55:                                               ; preds = %61, %49
  %56 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %6, align 8
  %57 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @skb_queue_len(i32* %58)
  %60 = icmp sgt i32 %59, 5
  br i1 %60, label %61, label %74

61:                                               ; preds = %55
  %62 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %6, align 8
  %63 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %62, i32 0, i32 3
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @dev_dbg(i32* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %6, align 8
  %68 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = call %struct.sk_buff* @skb_dequeue(i32* %69)
  store %struct.sk_buff* %70, %struct.sk_buff** %7, align 8
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = call i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw* %71, %struct.sk_buff* %72)
  br label %55

74:                                               ; preds = %55
  br label %101

75:                                               ; preds = %44
  %76 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %77 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %78 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %37, %1
  %83 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %6, align 8
  %84 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %90 = call i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw* %88, %struct.sk_buff* %89)
  br label %101

91:                                               ; preds = %82
  %92 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %6, align 8
  %93 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %96 = call i32 @skb_queue_tail(i32* %94, %struct.sk_buff* %95)
  %97 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %98 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %6, align 8
  %99 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %98, i32 0, i32 0
  %100 = call i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw* %97, i32* %99, i32 0)
  br label %101

101:                                              ; preds = %74, %91, %87
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
