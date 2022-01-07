; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i64 }
%struct.hci_uart = type { i32, %struct.tty_struct* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@HCI_UART_PROTO_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @hci_uart_tty_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_uart_tty_wakeup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.hci_uart*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.hci_uart*
  store %struct.hci_uart* %8, %struct.hci_uart** %3, align 8
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %11 = icmp ne %struct.hci_uart* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %33

13:                                               ; preds = %1
  %14 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %15 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 0
  %17 = call i32 @clear_bit(i32 %14, i32* %16)
  %18 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %19 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %20 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %19, i32 0, i32 1
  %21 = load %struct.tty_struct*, %struct.tty_struct** %20, align 8
  %22 = icmp ne %struct.tty_struct* %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %33

24:                                               ; preds = %13
  %25 = load i32, i32* @HCI_UART_PROTO_SET, align 4
  %26 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %27 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %26, i32 0, i32 0
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %32 = call i32 @hci_uart_tx_wakeup(%struct.hci_uart* %31)
  br label %33

33:                                               ; preds = %12, %23, %30, %24
  ret void
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_uart_tx_wakeup(%struct.hci_uart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
