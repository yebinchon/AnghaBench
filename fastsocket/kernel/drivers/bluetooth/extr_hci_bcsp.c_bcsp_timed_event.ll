; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_bcsp.c_bcsp_timed_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_bcsp.c_bcsp_timed_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.bcsp_struct* }
%struct.bcsp_struct = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"hu %p retransmitting %u pkts\00", align 1
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @bcsp_timed_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcsp_timed_event(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.bcsp_struct*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.hci_uart*
  store %struct.hci_uart* %8, %struct.hci_uart** %3, align 8
  %9 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %10 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %9, i32 0, i32 0
  %11 = load %struct.bcsp_struct*, %struct.bcsp_struct** %10, align 8
  store %struct.bcsp_struct* %11, %struct.bcsp_struct** %4, align 8
  %12 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %13 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %14 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %12, i32 %16)
  %18 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %19 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %23 = call i32 @spin_lock_irqsave_nested(i32* %20, i64 %21, i32 %22)
  br label %24

24:                                               ; preds = %29, %1
  %25 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %26 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %25, i32 0, i32 1
  %27 = call %struct.sk_buff* @__skb_dequeue_tail(%struct.TYPE_2__* %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %5, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %31 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %33, 7
  %35 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %36 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %38 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %37, i32 0, i32 2
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @skb_queue_head(i32* %38, %struct.sk_buff* %39)
  br label %24

41:                                               ; preds = %24
  %42 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %43 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %48 = call i32 @hci_uart_tx_wakeup(%struct.hci_uart* %47)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*, i32) #1

declare dso_local i32 @spin_lock_irqsave_nested(i32*, i64, i32) #1

declare dso_local %struct.sk_buff* @__skb_dequeue_tail(%struct.TYPE_2__*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hci_uart_tx_wakeup(%struct.hci_uart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
