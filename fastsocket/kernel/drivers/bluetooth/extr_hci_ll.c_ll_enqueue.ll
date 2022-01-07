; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ll.c_ll_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ll.c_ll_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.ll_struct* }
%struct.ll_struct = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"hu %p skb %p\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"device awake, sending normally\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"device asleep, waking up and queueing packet\00", align 1
@HCILL_WAKE_UP_IND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"cannot wake up device\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"device waking up, queueing packet\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"illegal hcill state: %ld (losing packet)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, %struct.sk_buff*)* @ll_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_enqueue(%struct.hci_uart* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ll_struct*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %8 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %7, i32 0, i32 0
  %9 = load %struct.ll_struct*, %struct.ll_struct** %8, align 8
  store %struct.ll_struct* %9, %struct.ll_struct** %6, align 8
  %10 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %10, %struct.sk_buff* %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @skb_push(%struct.sk_buff* %13, i32 1)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @memcpy(i32 %14, i32* %17, i32 1)
  %19 = load %struct.ll_struct*, %struct.ll_struct** %6, align 8
  %20 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %19, i32 0, i32 1
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.ll_struct*, %struct.ll_struct** %6, align 8
  %24 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %53 [
    i32 128, label %26
    i32 130, label %32
    i32 129, label %47
  ]

26:                                               ; preds = %2
  %27 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.ll_struct*, %struct.ll_struct** %6, align 8
  %29 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %28, i32 0, i32 3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @skb_queue_tail(i32* %29, %struct.sk_buff* %30)
  br label %60

32:                                               ; preds = %2
  %33 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.ll_struct*, %struct.ll_struct** %6, align 8
  %35 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %34, i32 0, i32 2
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @skb_queue_tail(i32* %35, %struct.sk_buff* %36)
  %38 = load i32, i32* @HCILL_WAKE_UP_IND, align 4
  %39 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %40 = call i32 @send_hcill_cmd(i32 %38, %struct.hci_uart* %39)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %60

44:                                               ; preds = %32
  %45 = load %struct.ll_struct*, %struct.ll_struct** %6, align 8
  %46 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %45, i32 0, i32 0
  store i32 129, i32* %46, align 4
  br label %60

47:                                               ; preds = %2
  %48 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %49 = load %struct.ll_struct*, %struct.ll_struct** %6, align 8
  %50 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %49, i32 0, i32 2
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @skb_queue_tail(i32* %50, %struct.sk_buff* %51)
  br label %60

53:                                               ; preds = %2
  %54 = load %struct.ll_struct*, %struct.ll_struct** %6, align 8
  %55 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @kfree_skb(%struct.sk_buff* %58)
  br label %60

60:                                               ; preds = %53, %47, %44, %42, %26
  %61 = load %struct.ll_struct*, %struct.ll_struct** %6, align 8
  %62 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %61, i32 0, i32 1
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_2__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @send_hcill_cmd(i32, %struct.hci_uart*) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
