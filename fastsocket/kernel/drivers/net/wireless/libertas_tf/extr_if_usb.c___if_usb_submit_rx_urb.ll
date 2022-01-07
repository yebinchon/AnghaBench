; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c___if_usb_submit_rx_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c___if_usb_submit_rx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_usb_card = type { %struct.TYPE_6__*, %struct.sk_buff*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.urb = type opaque
%struct.urb.0 = type opaque

@LBTF_DEB_USB = common dso_local global i32 0, align 4
@MRVDRV_ETH_RX_PACKET_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"No free skb\0A\00", align 1
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Pointer for rx_urb %p\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Submit Rx URB failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Submit Rx URB success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_usb_card*, void (%struct.urb*)*)* @__if_usb_submit_rx_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__if_usb_submit_rx_urb(%struct.if_usb_card* %0, void (%struct.urb*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.if_usb_card*, align 8
  %5 = alloca void (%struct.urb*)*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.if_usb_card* %0, %struct.if_usb_card** %4, align 8
  store void (%struct.urb*)* %1, void (%struct.urb*)** %5, align 8
  store i32 -1, i32* %7, align 4
  %8 = load i32, i32* @LBTF_DEB_USB, align 4
  %9 = call i32 @lbtf_deb_enter(i32 %8)
  %10 = load i32, i32* @MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, align 4
  %11 = call %struct.sk_buff* @dev_alloc_skb(i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @LBTF_DEB_USB, align 4
  %17 = call i32 @lbtf_deb_leave(i32 %16)
  store i32 -1, i32* %3, align 4
  br label %85

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %21 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %20, i32 0, i32 1
  store %struct.sk_buff* %19, %struct.sk_buff** %21, align 8
  %22 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %23 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %26 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %29 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %32 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @usb_rcvbulkpipe(%struct.TYPE_6__* %30, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @skb_tail_pointer(%struct.sk_buff* %35)
  %37 = load i32, i32* @MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, align 4
  %38 = load void (%struct.urb*)*, void (%struct.urb*)** %5, align 8
  %39 = bitcast void (%struct.urb*)* %38 to void (%struct.urb.0*)*
  %40 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %41 = call i32 @usb_fill_bulk_urb(%struct.TYPE_5__* %24, %struct.TYPE_6__* %27, i32 %34, i32 %36, i32 %37, void (%struct.urb.0*)* %39, %struct.if_usb_card* %40)
  %42 = load i32, i32* @URB_ZERO_PACKET, align 4
  %43 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %44 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %42
  store i32 %48, i32* %46, align 4
  %49 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %50 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %54 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = call i32 (i32*, i8*, ...) @lbtf_deb_usb2(i32* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__* %55)
  %57 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %58 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* @GFP_ATOMIC, align 4
  %61 = call i32 @usb_submit_urb(%struct.TYPE_5__* %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %18
  %65 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %66 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @lbtf_deb_usbd(i32* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = call i32 @kfree_skb(%struct.sk_buff* %71)
  %73 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %74 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %73, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %74, align 8
  %75 = load i32, i32* @LBTF_DEB_USB, align 4
  %76 = call i32 @lbtf_deb_leave(i32 %75)
  store i32 -1, i32* %3, align 4
  br label %85

77:                                               ; preds = %18
  %78 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %79 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = call i32 (i32*, i8*, ...) @lbtf_deb_usb2(i32* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @LBTF_DEB_USB, align 4
  %84 = call i32 @lbtf_deb_leave(i32 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %77, %64, %14
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32, i32, void (%struct.urb.0*)*, %struct.if_usb_card*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @lbtf_deb_usb2(i32*, i8*, ...) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @lbtf_deb_usbd(i32*, i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
