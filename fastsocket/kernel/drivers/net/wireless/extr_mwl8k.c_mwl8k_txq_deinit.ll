; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_txq_deinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_txq_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, %struct.mwl8k_tx_queue* }
%struct.mwl8k_tx_queue = type { i32*, i32, i32* }

@INT_MAX = common dso_local global i32 0, align 4
@MWL8K_TX_DESCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @mwl8k_txq_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_txq_deinit(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwl8k_priv*, align 8
  %6 = alloca %struct.mwl8k_tx_queue*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %8, align 8
  store %struct.mwl8k_priv* %9, %struct.mwl8k_priv** %5, align 8
  %10 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %10, i32 0, i32 1
  %12 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %12, i64 %14
  store %struct.mwl8k_tx_queue* %15, %struct.mwl8k_tx_queue** %6, align 8
  %16 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %6, align 8
  %17 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %48

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @INT_MAX, align 4
  %25 = call i32 @mwl8k_txq_reclaim(%struct.ieee80211_hw* %22, i32 %23, i32 %24, i32 1)
  %26 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %6, align 8
  %27 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @kfree(i32* %28)
  %30 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %6, align 8
  %31 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %33 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MWL8K_TX_DESCS, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %6, align 8
  %40 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %6, align 8
  %43 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pci_free_consistent(i32 %34, i32 %38, i32* %41, i32 %44)
  %46 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %6, align 8
  %47 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @mwl8k_txq_reclaim(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
