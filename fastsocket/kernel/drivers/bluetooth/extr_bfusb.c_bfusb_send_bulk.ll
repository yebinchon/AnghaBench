; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_send_bulk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_send_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfusb_data = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.bfusb_data_scb = type { %struct.urb* }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"bfusb %p skb %p len %d\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bfusb_tx_complete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s bulk tx submit failed urb %p err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfusb_data*, %struct.sk_buff*)* @bfusb_send_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfusb_send_bulk(%struct.bfusb_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfusb_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.bfusb_data_scb*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bfusb_data* %0, %struct.bfusb_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.bfusb_data_scb*
  store %struct.bfusb_data_scb* %14, %struct.bfusb_data_scb** %6, align 8
  %15 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %16 = call %struct.urb* @bfusb_get_completed(%struct.bfusb_data* %15)
  store %struct.urb* %16, %struct.urb** %7, align 8
  %17 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.bfusb_data* %17, %struct.sk_buff* %18, i32 %21)
  %23 = load %struct.urb*, %struct.urb** %7, align 8
  %24 = icmp ne %struct.urb* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %26)
  store %struct.urb* %27, %struct.urb** %7, align 8
  %28 = icmp ne %struct.urb* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %87

32:                                               ; preds = %25, %2
  %33 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %34 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %37 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @usb_sndbulkpipe(i32 %35, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.urb*, %struct.urb** %7, align 8
  %41 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %42 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @bfusb_tx_complete, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i32 @usb_fill_bulk_urb(%struct.urb* %40, i32 %43, i32 %44, i32 %47, i32 %50, i32 %51, %struct.sk_buff* %52)
  %54 = load %struct.urb*, %struct.urb** %7, align 8
  %55 = load %struct.bfusb_data_scb*, %struct.bfusb_data_scb** %6, align 8
  %56 = getelementptr inbounds %struct.bfusb_data_scb, %struct.bfusb_data_scb* %55, i32 0, i32 0
  store %struct.urb* %54, %struct.urb** %56, align 8
  %57 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %58 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %57, i32 0, i32 1
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call i32 @skb_queue_tail(i32* %58, %struct.sk_buff* %59)
  %61 = load %struct.urb*, %struct.urb** %7, align 8
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  %63 = call i32 @usb_submit_urb(%struct.urb* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %32
  %67 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %68 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.urb*, %struct.urb** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @BT_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %71, %struct.urb* %72, i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %77 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %76, i32 0, i32 1
  %78 = call i32 @skb_unlink(%struct.sk_buff* %75, i32* %77)
  %79 = load %struct.urb*, %struct.urb** %7, align 8
  %80 = call i32 @usb_free_urb(%struct.urb* %79)
  br label %85

81:                                               ; preds = %32
  %82 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %83 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %82, i32 0, i32 0
  %84 = call i32 @atomic_inc(i32* %83)
  br label %85

85:                                               ; preds = %81, %66
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %29
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.urb* @bfusb_get_completed(%struct.bfusb_data*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.bfusb_data*, %struct.sk_buff*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32, %struct.urb*, i32) #1

declare dso_local i32 @skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
