; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_alloc_rx_urbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_alloc_rx_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hif_device_usb = type { i32, i32, i32 }
%struct.urb = type { i32 }
%struct.sk_buff = type { i32 }

@MAX_RX_URB_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_RX_BUF_SIZE = common dso_local global i32 0, align 4
@USB_WLAN_RX_PIPE = common dso_local global i32 0, align 4
@ath9k_hif_usb_rx_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hif_device_usb*)* @ath9k_hif_usb_alloc_rx_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hif_usb_alloc_rx_urbs(%struct.hif_device_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hif_device_usb*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hif_device_usb* %0, %struct.hif_device_usb** %3, align 8
  store %struct.urb* null, %struct.urb** %4, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  %8 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %9 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %8, i32 0, i32 0
  %10 = call i32 @init_usb_anchor(i32* %9)
  %11 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %12 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %11, i32 0, i32 2
  %13 = call i32 @spin_lock_init(i32* %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %67, %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MAX_RX_URB_NUM, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %70

18:                                               ; preds = %14
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %19)
  store %struct.urb* %20, %struct.urb** %4, align 8
  %21 = load %struct.urb*, %struct.urb** %4, align 8
  %22 = icmp eq %struct.urb* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %77

26:                                               ; preds = %18
  %27 = load i32, i32* @MAX_RX_BUF_SIZE, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.sk_buff* @alloc_skb(i32 %27, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %5, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %74

35:                                               ; preds = %26
  %36 = load %struct.urb*, %struct.urb** %4, align 8
  %37 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %38 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %41 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @USB_WLAN_RX_PIPE, align 4
  %44 = call i32 @usb_rcvbulkpipe(i32 %42, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MAX_RX_BUF_SIZE, align 4
  %49 = load i32, i32* @ath9k_hif_usb_rx_cb, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @usb_fill_bulk_urb(%struct.urb* %36, i32 %39, i32 %44, i32 %47, i32 %48, i32 %49, %struct.sk_buff* %50)
  %52 = load %struct.urb*, %struct.urb** %4, align 8
  %53 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %54 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %53, i32 0, i32 0
  %55 = call i32 @usb_anchor_urb(%struct.urb* %52, i32* %54)
  %56 = load %struct.urb*, %struct.urb** %4, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32 @usb_submit_urb(%struct.urb* %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %35
  %62 = load %struct.urb*, %struct.urb** %4, align 8
  %63 = call i32 @usb_unanchor_urb(%struct.urb* %62)
  br label %71

64:                                               ; preds = %35
  %65 = load %struct.urb*, %struct.urb** %4, align 8
  %66 = call i32 @usb_free_urb(%struct.urb* %65)
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %14

70:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %81

71:                                               ; preds = %61
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call i32 @kfree_skb(%struct.sk_buff* %72)
  br label %74

74:                                               ; preds = %71, %32
  %75 = load %struct.urb*, %struct.urb** %4, align 8
  %76 = call i32 @usb_free_urb(%struct.urb* %75)
  br label %77

77:                                               ; preds = %74, %23
  %78 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %79 = call i32 @ath9k_hif_usb_dealloc_rx_urbs(%struct.hif_device_usb* %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %70
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ath9k_hif_usb_dealloc_rx_urbs(%struct.hif_device_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
