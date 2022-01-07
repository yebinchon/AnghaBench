; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_txep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_txep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ath9k_htc_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.ath9k_htc_tx_ctl = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_txep(i8* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath9k_htc_priv*, align 8
  %10 = alloca %struct.ath9k_htc_tx_ctl*, align 8
  %11 = alloca %struct.sk_buff_head*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ath9k_htc_priv*
  store %struct.ath9k_htc_priv* %13, %struct.ath9k_htc_priv** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.ath9k_htc_tx_ctl* @HTC_SKB_CB(%struct.sk_buff* %14)
  store %struct.ath9k_htc_tx_ctl* %15, %struct.ath9k_htc_tx_ctl** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %10, align 8
  %18 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @jiffies, align 4
  %20 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %10, align 8
  %21 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %4
  %25 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %26 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call i32 @skb_queue_tail(%struct.sk_buff_head* %27, %struct.sk_buff* %28)
  %30 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %31 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %30, i32 0, i32 0
  %32 = call i32 @tasklet_schedule(i32* %31)
  br label %46

33:                                               ; preds = %4
  %34 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.sk_buff_head* @get_htc_epid_queue(%struct.ath9k_htc_priv* %34, i32 %35)
  store %struct.sk_buff_head* %36, %struct.sk_buff_head** %11, align 8
  %37 = load %struct.sk_buff_head*, %struct.sk_buff_head** %11, align 8
  %38 = icmp ne %struct.sk_buff_head* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %40)
  br label %46

42:                                               ; preds = %33
  %43 = load %struct.sk_buff_head*, %struct.sk_buff_head** %11, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i32 @skb_queue_tail(%struct.sk_buff_head* %43, %struct.sk_buff* %44)
  br label %46

46:                                               ; preds = %42, %39, %24
  ret void
}

declare dso_local %struct.ath9k_htc_tx_ctl* @HTC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local %struct.sk_buff_head* @get_htc_epid_queue(%struct.ath9k_htc_priv*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
