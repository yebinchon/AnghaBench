; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_tx_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_tx_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, i64, i32, i32*, i32 }

@MWL8K_A2H_INT_TX_DONE = common dso_local global i32 0, align 4
@MWL8K_HIU_A2H_INTERRUPT_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mwl8k_tx_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_tx_poll(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.mwl8k_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.ieee80211_hw*
  store %struct.ieee80211_hw* %8, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %10, align 8
  store %struct.mwl8k_priv* %11, %struct.mwl8k_priv** %4, align 8
  store i32 32, i32* %5, align 4
  %12 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %12, i32 0, i32 2
  %14 = call i32 @spin_lock_bh(i32* %13)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %29, %1
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %18 = call i32 @mwl8k_tx_queues(%struct.mwl8k_priv* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @mwl8k_txq_reclaim(%struct.ieee80211_hw* %21, i32 %22, i32 %23, i32 0)
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %15

32:                                               ; preds = %15
  %33 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %34 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %32
  %38 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %39 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %44 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @complete(i32* %45)
  %47 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %48 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %47, i32 0, i32 3
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %42, %37, %32
  %50 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %51 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %50, i32 0, i32 2
  %52 = call i32 @spin_unlock_bh(i32* %51)
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load i32, i32* @MWL8K_A2H_INT_TX_DONE, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %59 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MWL8K_HIU_A2H_INTERRUPT_STATUS, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  br label %68

64:                                               ; preds = %49
  %65 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %66 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %65, i32 0, i32 0
  %67 = call i32 @tasklet_schedule(i32* %66)
  br label %68

68:                                               ; preds = %64, %55
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mwl8k_tx_queues(%struct.mwl8k_priv*) #1

declare dso_local i64 @mwl8k_txq_reclaim(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
