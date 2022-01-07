; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ll.c_send_hcill_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ll.c_send_hcill_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i64, %struct.ll_struct* }
%struct.ll_struct = type { i32 }
%struct.sk_buff = type { i8* }
%struct.hcill_cmd = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"hu %p cmd 0x%x\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot allocate memory for HCILL packet\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.hci_uart*)* @send_hcill_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_hcill_cmd(i32 %0, %struct.hci_uart* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_uart*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ll_struct*, align 8
  %8 = alloca %struct.hcill_cmd*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.hci_uart* %1, %struct.hci_uart** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %9 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %10 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %9, i32 0, i32 1
  %11 = load %struct.ll_struct*, %struct.ll_struct** %10, align 8
  store %struct.ll_struct* %11, %struct.ll_struct** %7, align 8
  %12 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %12, i32 %13)
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.sk_buff* @bt_skb_alloc(i32 1, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = call i32 @BT_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i64 @skb_put(%struct.sk_buff* %24, i32 1)
  %26 = inttoptr i64 %25 to %struct.hcill_cmd*
  store %struct.hcill_cmd* %26, %struct.hcill_cmd** %8, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.hcill_cmd*, %struct.hcill_cmd** %8, align 8
  %29 = getelementptr inbounds %struct.hcill_cmd, %struct.hcill_cmd* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %31 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ll_struct*, %struct.ll_struct** %7, align 8
  %37 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %36, i32 0, i32 0
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @skb_queue_tail(i32* %37, %struct.sk_buff* %38)
  br label %40

40:                                               ; preds = %23, %19
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*, i32) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
