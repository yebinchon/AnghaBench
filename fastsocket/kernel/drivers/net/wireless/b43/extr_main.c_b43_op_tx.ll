; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_op_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_op_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.b43_wl = type { i32, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @b43_op_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_op_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.b43_wl*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = call %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw* %8)
  store %struct.b43_wl* %9, %struct.b43_wl** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 10
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i32 @ieee80211_free_txskb(%struct.ieee80211_hw* %18, %struct.sk_buff* %19)
  br label %60

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @B43_WARN_ON(i32 %25)
  %27 = load %struct.b43_wl*, %struct.b43_wl** %7, align 8
  %28 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call i32 @skb_queue_tail(i32* %33, %struct.sk_buff* %34)
  %36 = load %struct.b43_wl*, %struct.b43_wl** %7, align 8
  %37 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %21
  %46 = load %struct.b43_wl*, %struct.b43_wl** %7, align 8
  %47 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.b43_wl*, %struct.b43_wl** %7, align 8
  %50 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %49, i32 0, i32 1
  %51 = call i32 @ieee80211_queue_work(i32 %48, i32* %50)
  br label %60

52:                                               ; preds = %21
  %53 = load %struct.b43_wl*, %struct.b43_wl** %7, align 8
  %54 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @ieee80211_stop_queue(i32 %55, i64 %58)
  br label %60

60:                                               ; preds = %17, %52, %45
  ret void
}

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ieee80211_free_txskb(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

declare dso_local i32 @ieee80211_stop_queue(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
