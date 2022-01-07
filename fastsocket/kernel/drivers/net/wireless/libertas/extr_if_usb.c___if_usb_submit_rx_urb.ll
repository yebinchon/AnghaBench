; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c___if_usb_submit_rx_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c___if_usb_submit_rx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_usb_card = type { %struct.TYPE_6__*, %struct.sk_buff*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.urb = type opaque
%struct.urb.0 = type opaque

@MRVDRV_ETH_RX_PACKET_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"No free skb\0A\00", align 1
@IPFIELD_ALIGN_OFFSET = common dso_local global i64 0, align 8
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Pointer for rx_urb %p\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Submit Rx URB failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Submit Rx URB success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_usb_card*, void (%struct.urb*)*)* @__if_usb_submit_rx_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__if_usb_submit_rx_urb(%struct.if_usb_card* %0, void (%struct.urb*)* %1) #0 {
  %3 = alloca %struct.if_usb_card*, align 8
  %4 = alloca void (%struct.urb*)*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.if_usb_card* %0, %struct.if_usb_card** %3, align 8
  store void (%struct.urb*)* %1, void (%struct.urb*)** %4, align 8
  store i32 -1, i32* %6, align 4
  %7 = load i32, i32* @MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, align 4
  %8 = call %struct.sk_buff* @dev_alloc_skb(i32 %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %5, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %78

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %15 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %14, i32 0, i32 1
  store %struct.sk_buff* %13, %struct.sk_buff** %15, align 8
  %16 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %17 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %20 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %23 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %26 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @usb_rcvbulkpipe(%struct.TYPE_6__* %24, i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IPFIELD_ALIGN_OFFSET, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* @MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, align 4
  %35 = load void (%struct.urb*)*, void (%struct.urb*)** %4, align 8
  %36 = bitcast void (%struct.urb*)* %35 to void (%struct.urb.0*)*
  %37 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %38 = call i32 @usb_fill_bulk_urb(%struct.TYPE_5__* %18, %struct.TYPE_6__* %21, i32 %28, i64 %33, i32 %34, void (%struct.urb.0*)* %36, %struct.if_usb_card* %37)
  %39 = load i32, i32* @URB_ZERO_PACKET, align 4
  %40 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %41 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %39
  store i32 %45, i32* %43, align 4
  %46 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %47 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %51 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = call i32 (i32*, i8*, ...) @lbs_deb_usb2(i32* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__* %52)
  %54 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %55 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call i32 @usb_submit_urb(%struct.TYPE_5__* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %12
  %61 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %62 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @lbs_deb_usbd(i32* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i32 @kfree_skb(%struct.sk_buff* %67)
  %69 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %70 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %69, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %70, align 8
  store i32 -1, i32* %6, align 4
  br label %77

71:                                               ; preds = %12
  %72 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %73 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = call i32 (i32*, i8*, ...) @lbs_deb_usb2(i32* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %71, %60
  br label %78

78:                                               ; preds = %77, %10
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @lbs_pr_err(i8*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_5__*, %struct.TYPE_6__*, i32, i64, i32, void (%struct.urb.0*)*, %struct.if_usb_card*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @lbs_deb_usb2(i32*, i8*, ...) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @lbs_deb_usbd(i32*, i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
