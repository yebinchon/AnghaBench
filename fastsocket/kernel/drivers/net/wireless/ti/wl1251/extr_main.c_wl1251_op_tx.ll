; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1251* }
%struct.wl1251 = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i32 }

@WL1251_TX_QUEUE_HIGH_WATERMARK = common dso_local global i64 0, align 8
@DEBUG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"op_tx: tx_queue full, stop queues\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @wl1251_op_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_op_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wl1251*, align 8
  %8 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  store %struct.wl1251* %11, %struct.wl1251** %7, align 8
  %12 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %13 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %12, i32 0, i32 3
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i32 @skb_queue_tail(i32* %13, %struct.sk_buff* %14)
  %16 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %17 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %20 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %19, i32 0, i32 4
  %21 = call i32 @ieee80211_queue_work(i32 %18, i32* %20)
  %22 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %23 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %22, i32 0, i32 3
  %24 = call i64 @skb_queue_len(i32* %23)
  %25 = load i64, i64* @WL1251_TX_QUEUE_HIGH_WATERMARK, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %3
  %28 = load i32, i32* @DEBUG_TX, align 4
  %29 = call i32 @wl1251_debug(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %31 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %30, i32 0, i32 1
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %35 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ieee80211_stop_queues(i32 %36)
  %38 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %39 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %41 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %40, i32 0, i32 1
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  br label %44

44:                                               ; preds = %27, %3
  ret void
}

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ieee80211_stop_queues(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
