; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_h4.c_h4_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_h4.c_h4_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.h4_struct* }
%struct.h4_struct = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"hu %p skb %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, %struct.sk_buff*)* @h4_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h4_enqueue(%struct.hci_uart* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.h4_struct*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %7 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %6, i32 0, i32 0
  %8 = load %struct.h4_struct*, %struct.h4_struct** %7, align 8
  store %struct.h4_struct* %8, %struct.h4_struct** %5, align 8
  %9 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %9, %struct.sk_buff* %10)
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @skb_push(%struct.sk_buff* %12, i32 1)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @memcpy(i32 %13, i32* %16, i32 1)
  %18 = load %struct.h4_struct*, %struct.h4_struct** %5, align 8
  %19 = getelementptr inbounds %struct.h4_struct, %struct.h4_struct* %18, i32 0, i32 0
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @skb_queue_tail(i32* %19, %struct.sk_buff* %20)
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*, %struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_2__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
