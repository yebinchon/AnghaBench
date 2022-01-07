; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_skb_queue_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_skb_queue_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hif_device_usb = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }

@skb_success = common dso_local global i32 0, align 4
@skb_failed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hif_device_usb*, %struct.sk_buff_head*, i32)* @ath9k_skb_queue_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_skb_queue_complete(%struct.hif_device_usb* %0, %struct.sk_buff_head* %1, i32 %2) #0 {
  %4 = alloca %struct.hif_device_usb*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.hif_device_usb* %0, %struct.hif_device_usb** %4, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %27, %3
  %9 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %10 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %7, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %14 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ath9k_htc_txcompletion_cb(i32 %15, %struct.sk_buff* %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i32, i32* @skb_success, align 4
  %23 = call i32 @TX_STAT_INC(i32 %22)
  br label %27

24:                                               ; preds = %12
  %25 = load i32, i32* @skb_failed, align 4
  %26 = call i32 @TX_STAT_INC(i32 %25)
  br label %27

27:                                               ; preds = %24, %21
  br label %8

28:                                               ; preds = %8
  ret void
}

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @ath9k_htc_txcompletion_cb(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @TX_STAT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
