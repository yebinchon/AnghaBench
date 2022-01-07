; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_hif_usb_send_mgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_hif_usb_send_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hif_device_usb = type { i32, i32 }
%struct.sk_buff = type { i64, i32 }
%struct.urb = type { i32 }
%struct.cmd_buf = type { %struct.hif_device_usb*, %struct.sk_buff* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH_USB_TX_STREAM_MODE_TAG = common dso_local global i64 0, align 8
@USB_WLAN_TX_PIPE = common dso_local global i32 0, align 4
@hif_usb_mgmt_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hif_device_usb*, %struct.sk_buff*)* @hif_usb_send_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hif_usb_send_mgmt(%struct.hif_device_usb* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hif_device_usb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.cmd_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.hif_device_usb* %0, %struct.hif_device_usb** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %10)
  store %struct.urb* %11, %struct.urb** %6, align 8
  %12 = load %struct.urb*, %struct.urb** %6, align 8
  %13 = icmp eq %struct.urb* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %86

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.cmd_buf* @kzalloc(i32 16, i32 %18)
  store %struct.cmd_buf* %19, %struct.cmd_buf** %7, align 8
  %20 = load %struct.cmd_buf*, %struct.cmd_buf** %7, align 8
  %21 = icmp eq %struct.cmd_buf* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.urb*, %struct.urb** %6, align 8
  %24 = call i32 @usb_free_urb(%struct.urb* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %86

27:                                               ; preds = %17
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load %struct.cmd_buf*, %struct.cmd_buf** %7, align 8
  %30 = getelementptr inbounds %struct.cmd_buf, %struct.cmd_buf* %29, i32 0, i32 1
  store %struct.sk_buff* %28, %struct.sk_buff** %30, align 8
  %31 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %32 = load %struct.cmd_buf*, %struct.cmd_buf** %7, align 8
  %33 = getelementptr inbounds %struct.cmd_buf, %struct.cmd_buf* %32, i32 0, i32 0
  store %struct.hif_device_usb* %31, %struct.hif_device_usb** %33, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i64 @skb_push(%struct.sk_buff* %34, i32 4)
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %9, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, 4
  %41 = call i8* @cpu_to_le16(i64 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %45 = load i64, i64* @ATH_USB_TX_STREAM_MODE_TAG, align 8
  %46 = call i8* @cpu_to_le16(i64 %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  %50 = load %struct.urb*, %struct.urb** %6, align 8
  %51 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %52 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %55 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @USB_WLAN_TX_PIPE, align 4
  %58 = call i32 @usb_sndbulkpipe(i32 %56, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @hif_usb_mgmt_cb, align 4
  %66 = load %struct.cmd_buf*, %struct.cmd_buf** %7, align 8
  %67 = call i32 @usb_fill_bulk_urb(%struct.urb* %50, i32 %53, i32 %58, i32 %61, i64 %64, i32 %65, %struct.cmd_buf* %66)
  %68 = load %struct.urb*, %struct.urb** %6, align 8
  %69 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %70 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %69, i32 0, i32 0
  %71 = call i32 @usb_anchor_urb(%struct.urb* %68, i32* %70)
  %72 = load %struct.urb*, %struct.urb** %6, align 8
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call i32 @usb_submit_urb(%struct.urb* %72, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %27
  %78 = load %struct.urb*, %struct.urb** %6, align 8
  %79 = call i32 @usb_unanchor_urb(%struct.urb* %78)
  %80 = load %struct.cmd_buf*, %struct.cmd_buf** %7, align 8
  %81 = call i32 @kfree(%struct.cmd_buf* %80)
  br label %82

82:                                               ; preds = %77, %27
  %83 = load %struct.urb*, %struct.urb** %6, align 8
  %84 = call i32 @usb_free_urb(%struct.urb* %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %22, %14
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.cmd_buf* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i64, i32, %struct.cmd_buf*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @kfree(%struct.cmd_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
