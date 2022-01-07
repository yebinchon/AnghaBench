; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64 }
%struct.hci_uart = type { %struct.TYPE_2__*, i32, i32*, %struct.tty_struct* }
%struct.TYPE_2__ = type { i32 (%struct.hci_uart*)* }
%struct.tty_struct = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"hdev %p tty %p\00", align 1
@HCI_UART_PROTO_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @hci_uart_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_uart_flush(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %5 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.hci_uart*
  store %struct.hci_uart* %8, %struct.hci_uart** %3, align 8
  %9 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %10 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %9, i32 0, i32 3
  %11 = load %struct.tty_struct*, %struct.tty_struct** %10, align 8
  store %struct.tty_struct* %11, %struct.tty_struct** %4, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.hci_dev* %12, %struct.tty_struct* %13)
  %15 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %16 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %21 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @kfree_skb(i32* %22)
  %24 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %25 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %28 = call i32 @tty_ldisc_flush(%struct.tty_struct* %27)
  %29 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %30 = call i32 @tty_driver_flush_buffer(%struct.tty_struct* %29)
  %31 = load i32, i32* @HCI_UART_PROTO_SET, align 4
  %32 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %33 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %32, i32 0, i32 1
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %38 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.hci_uart*)*, i32 (%struct.hci_uart*)** %40, align 8
  %42 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %43 = call i32 %41(%struct.hci_uart* %42)
  br label %44

44:                                               ; preds = %36, %26
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_dev*, %struct.tty_struct*) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @tty_ldisc_flush(%struct.tty_struct*) #1

declare dso_local i32 @tty_driver_flush_buffer(%struct.tty_struct*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
