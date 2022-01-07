; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_get_completed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_get_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.bfusb_data = type { i32 }
%struct.sk_buff = type { i64 }
%struct.bfusb_data_scb = type { %struct.urb* }

@.str = private unnamed_addr constant [9 x i8] c"bfusb %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.bfusb_data*)* @bfusb_get_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @bfusb_get_completed(%struct.bfusb_data* %0) #0 {
  %2 = alloca %struct.bfusb_data*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.urb*, align 8
  store %struct.bfusb_data* %0, %struct.bfusb_data** %2, align 8
  store %struct.urb* null, %struct.urb** %4, align 8
  %5 = load %struct.bfusb_data*, %struct.bfusb_data** %2, align 8
  %6 = call i32 @BT_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.bfusb_data* %5)
  %7 = load %struct.bfusb_data*, %struct.bfusb_data** %2, align 8
  %8 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %7, i32 0, i32 0
  %9 = call %struct.sk_buff* @skb_dequeue(i32* %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.bfusb_data_scb*
  %17 = getelementptr inbounds %struct.bfusb_data_scb, %struct.bfusb_data_scb* %16, i32 0, i32 0
  %18 = load %struct.urb*, %struct.urb** %17, align 8
  store %struct.urb* %18, %struct.urb** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call i32 @kfree_skb(%struct.sk_buff* %19)
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.urb*, %struct.urb** %4, align 8
  ret %struct.urb* %22
}

declare dso_local i32 @BT_DBG(i8*, %struct.bfusb_data*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
