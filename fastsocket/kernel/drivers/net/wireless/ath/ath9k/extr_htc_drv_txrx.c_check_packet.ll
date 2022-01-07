; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_check_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_check_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_htc_tx_ctl = type { i64 }

@jiffies = common dso_local global i32 0, align 4
@ATH9K_HTC_TX_TIMEOUT_INTERVAL = common dso_local global i32 0, align 4
@XMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Dropping a packet due to TX timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*, %struct.sk_buff*)* @check_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_packet(%struct.ath9k_htc_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath9k_htc_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath9k_htc_tx_ctl*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ath_common* @ath9k_hw_common(i32 %10)
  store %struct.ath_common* %11, %struct.ath_common** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.ath9k_htc_tx_ctl* @HTC_SKB_CB(%struct.sk_buff* %12)
  store %struct.ath9k_htc_tx_ctl* %13, %struct.ath9k_htc_tx_ctl** %7, align 8
  %14 = load i32, i32* @jiffies, align 4
  %15 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %7, align 8
  %16 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @ATH9K_HTC_TX_TIMEOUT_INTERVAL, align 4
  %19 = call i64 @msecs_to_jiffies(i32 %18)
  %20 = add nsw i64 %17, %19
  %21 = call i64 @time_after(i32 %14, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %25 = load i32, i32* @XMIT, align 4
  %26 = call i32 @ath_dbg(%struct.ath_common* %24, i32 %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local %struct.ath9k_htc_tx_ctl* @HTC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
