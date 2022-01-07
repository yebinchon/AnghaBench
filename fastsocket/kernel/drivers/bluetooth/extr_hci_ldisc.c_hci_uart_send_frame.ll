; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_send_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.hci_dev = type { i32, i64, i32 }
%struct.tty_struct = type { i32 }
%struct.hci_uart = type { %struct.TYPE_3__*, %struct.tty_struct* }
%struct.TYPE_3__ = type { i32 (%struct.hci_uart*, %struct.sk_buff*)* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Frame for uknown device (hdev=NULL)\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HCI_RUNNING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: type %d len %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @hci_uart_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_uart_send_frame(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.hci_uart*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.hci_dev*
  store %struct.hci_dev* %10, %struct.hci_dev** %4, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %12 = icmp ne %struct.hci_dev* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = call i32 @BT_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %55

17:                                               ; preds = %1
  %18 = load i32, i32* @HCI_RUNNING, align 4
  %19 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %19, i32 0, i32 2
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %55

26:                                               ; preds = %17
  %27 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.hci_uart*
  store %struct.hci_uart* %30, %struct.hci_uart** %6, align 8
  %31 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %32 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %31, i32 0, i32 1
  %33 = load %struct.tty_struct*, %struct.tty_struct** %32, align 8
  store %struct.tty_struct* %33, %struct.tty_struct** %5, align 8
  %34 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %40, i32 %43)
  %45 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %46 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.hci_uart*, %struct.sk_buff*)*, i32 (%struct.hci_uart*, %struct.sk_buff*)** %48, align 8
  %50 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = call i32 %49(%struct.hci_uart* %50, %struct.sk_buff* %51)
  %53 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %54 = call i32 @hci_uart_tx_wakeup(%struct.hci_uart* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %26, %23, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @hci_uart_tx_wakeup(%struct.hci_uart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
