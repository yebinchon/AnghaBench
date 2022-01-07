; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tx_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tx_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i32, %struct.sk_buff*, %struct.hci_dev*, %struct.tty_struct* }
%struct.sk_buff = type { i32, i32 }
%struct.hci_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.tty_struct = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.tty_struct*, i32, i32)* }
%struct.TYPE_6__ = type { i32 }

@HCI_UART_SENDING = common dso_local global i32 0, align 4
@HCI_UART_TX_WAKEUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_uart_tx_wakeup(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %8 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %9 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %8, i32 0, i32 3
  %10 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  store %struct.tty_struct* %10, %struct.tty_struct** %4, align 8
  %11 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %12 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %11, i32 0, i32 2
  %13 = load %struct.hci_dev*, %struct.hci_dev** %12, align 8
  store %struct.hci_dev* %13, %struct.hci_dev** %5, align 8
  %14 = load i32, i32* @HCI_UART_SENDING, align 4
  %15 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %16 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %15, i32 0, i32 0
  %17 = call i64 @test_and_set_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @HCI_UART_TX_WAKEUP, align 4
  %21 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %22 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %21, i32 0, i32 0
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  store i32 0, i32* %2, align 4
  br label %91

24:                                               ; preds = %1
  %25 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %85, %24
  %27 = load i32, i32* @HCI_UART_TX_WAKEUP, align 4
  %28 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %29 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %28, i32 0, i32 0
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  br label %31

31:                                               ; preds = %70, %26
  %32 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %33 = call %struct.sk_buff* @hci_uart_dequeue(%struct.hci_uart* %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %6, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %35, label %79

35:                                               ; preds = %31
  %36 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %37 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %38 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 1
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  %40 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, i32, i32)** %43, align 8
  %45 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 %44(%struct.tty_struct* %45, i32 %48, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %55 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %53
  store i32 %58, i32* %56, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @skb_pull(%struct.sk_buff* %59, i32 %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %35
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %69 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %68, i32 0, i32 1
  store %struct.sk_buff* %67, %struct.sk_buff** %69, align 8
  br label %79

70:                                               ; preds = %35
  %71 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @hci_uart_tx_complete(%struct.hci_uart* %71, i32 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = call i32 @kfree_skb(%struct.sk_buff* %77)
  br label %31

79:                                               ; preds = %66, %31
  %80 = load i32, i32* @HCI_UART_TX_WAKEUP, align 4
  %81 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %82 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %81, i32 0, i32 0
  %83 = call i64 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %26

86:                                               ; preds = %79
  %87 = load i32, i32* @HCI_UART_SENDING, align 4
  %88 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %89 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %88, i32 0, i32 0
  %90 = call i32 @clear_bit(i32 %87, i32* %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %86, %19
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @hci_uart_dequeue(%struct.hci_uart*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @hci_uart_tx_complete(%struct.hci_uart*, i32) #1

declare dso_local %struct.TYPE_6__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
