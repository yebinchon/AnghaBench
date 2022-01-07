; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32* }
%struct.hci_uart = type { %struct.TYPE_2__*, i32, %struct.hci_dev* }
%struct.TYPE_2__ = type { i32 (%struct.hci_uart*)* }
%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"tty %p\00", align 1
@HCI_UART_PROTO_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @hci_uart_tty_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_uart_tty_close(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = bitcast i32* %7 to i8*
  %9 = bitcast i8* %8 to %struct.hci_uart*
  store %struct.hci_uart* %9, %struct.hci_uart** %3, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.tty_struct* %10)
  %12 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  %14 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %15 = icmp ne %struct.hci_uart* %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %1
  %17 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %18 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %17, i32 0, i32 2
  %19 = load %struct.hci_dev*, %struct.hci_dev** %18, align 8
  store %struct.hci_dev* %19, %struct.hci_dev** %4, align 8
  %20 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %21 = icmp ne %struct.hci_dev* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %24 = call i32 @hci_uart_close(%struct.hci_dev* %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i32, i32* @HCI_UART_PROTO_SET, align 4
  %27 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %28 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %27, i32 0, i32 1
  %29 = call i64 @test_and_clear_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %33 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.hci_uart*)*, i32 (%struct.hci_uart*)** %35, align 8
  %37 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %38 = call i32 %36(%struct.hci_uart* %37)
  %39 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %40 = call i32 @hci_unregister_dev(%struct.hci_dev* %39)
  %41 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %42 = call i32 @hci_free_dev(%struct.hci_dev* %41)
  br label %43

43:                                               ; preds = %31, %25
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.tty_struct*) #1

declare dso_local i32 @hci_uart_close(%struct.hci_dev*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @hci_unregister_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
