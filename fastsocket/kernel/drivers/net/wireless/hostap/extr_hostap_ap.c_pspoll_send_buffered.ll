; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_pspoll_send_buffered.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_pspoll_send_buffered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hostap_skb_tx_data = type { i32 }

@WLAN_STA_PS = common dso_local global i32 0, align 4
@HOSTAP_TX_FLAGS_BUFFERED_FRAME = common dso_local global i32 0, align 4
@HOSTAP_TX_FLAGS_ADD_MOREDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sta_info*, %struct.sk_buff*)* @pspoll_send_buffered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pspoll_send_buffered(i32* %0, %struct.sta_info* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.hostap_skb_tx_data*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %9 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @WLAN_STA_PS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i32 @dev_queue_xmit(%struct.sk_buff* %15)
  br label %40

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.hostap_skb_tx_data*
  store %struct.hostap_skb_tx_data* %21, %struct.hostap_skb_tx_data** %7, align 8
  %22 = load i32, i32* @HOSTAP_TX_FLAGS_BUFFERED_FRAME, align 4
  %23 = load %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data** %7, align 8
  %24 = getelementptr inbounds %struct.hostap_skb_tx_data, %struct.hostap_skb_tx_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 1
  %29 = call i32 @skb_queue_empty(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %17
  %32 = load i32, i32* @HOSTAP_TX_FLAGS_ADD_MOREDATA, align 4
  %33 = load %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data** %7, align 8
  %34 = getelementptr inbounds %struct.hostap_skb_tx_data, %struct.hostap_skb_tx_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %17
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @dev_queue_xmit(%struct.sk_buff* %38)
  br label %40

40:                                               ; preds = %37, %14
  ret void
}

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
