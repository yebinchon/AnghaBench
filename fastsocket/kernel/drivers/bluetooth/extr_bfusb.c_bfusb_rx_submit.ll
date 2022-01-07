; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_rx_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_rx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfusb_data = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32 }
%struct.bfusb_data_scb = type { %struct.urb* }
%struct.sk_buff = type { i32, i64, i8* }

@HCI_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bfusb %p urb %p\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bfusb_rx_complete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s bulk rx submit failed urb %p err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfusb_data*, %struct.urb*)* @bfusb_rx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfusb_rx_submit(%struct.bfusb_data* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfusb_data*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.bfusb_data_scb*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bfusb_data* %0, %struct.bfusb_data** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %11 = load i32, i32* @HCI_MAX_FRAME_SIZE, align 4
  %12 = add nsw i32 %11, 32
  store i32 %12, i32* %10, align 4
  %13 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %14 = load %struct.urb*, %struct.urb** %5, align 8
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.bfusb_data* %13, %struct.urb* %14)
  %16 = load %struct.urb*, %struct.urb** %5, align 8
  %17 = icmp ne %struct.urb* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %19)
  store %struct.urb* %20, %struct.urb** %5, align 8
  %21 = icmp ne %struct.urb* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %95

25:                                               ; preds = %18, %2
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.sk_buff* @bt_skb_alloc(i32 %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %7, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.urb*, %struct.urb** %5, align 8
  %33 = call i32 @usb_free_urb(%struct.urb* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %95

36:                                               ; preds = %25
  %37 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %38 = bitcast %struct.bfusb_data* %37 to i8*
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.bfusb_data_scb*
  store %struct.bfusb_data_scb* %44, %struct.bfusb_data_scb** %6, align 8
  %45 = load %struct.urb*, %struct.urb** %5, align 8
  %46 = load %struct.bfusb_data_scb*, %struct.bfusb_data_scb** %6, align 8
  %47 = getelementptr inbounds %struct.bfusb_data_scb, %struct.bfusb_data_scb* %46, i32 0, i32 0
  store %struct.urb* %45, %struct.urb** %47, align 8
  %48 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %49 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %52 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @usb_rcvbulkpipe(i32 %50, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.urb*, %struct.urb** %5, align 8
  %56 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %57 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @bfusb_rx_complete, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = call i32 @usb_fill_bulk_urb(%struct.urb* %55, i32 %58, i32 %59, i32 %62, i32 %63, i32 %64, %struct.sk_buff* %65)
  %67 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %68 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %67, i32 0, i32 0
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = call i32 @skb_queue_tail(i32* %68, %struct.sk_buff* %69)
  %71 = load %struct.urb*, %struct.urb** %5, align 8
  %72 = load i32, i32* @GFP_ATOMIC, align 4
  %73 = call i32 @usb_submit_urb(%struct.urb* %71, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %36
  %77 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %78 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.urb*, %struct.urb** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @BT_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %81, %struct.urb* %82, i32 %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %87 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %86, i32 0, i32 0
  %88 = call i32 @skb_unlink(%struct.sk_buff* %85, i32* %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %90 = call i32 @kfree_skb(%struct.sk_buff* %89)
  %91 = load %struct.urb*, %struct.urb** %5, align 8
  %92 = call i32 @usb_free_urb(%struct.urb* %91)
  br label %93

93:                                               ; preds = %76, %36
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %31, %22
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @BT_DBG(i8*, %struct.bfusb_data*, %struct.urb*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32, %struct.urb*, i32) #1

declare dso_local i32 @skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
