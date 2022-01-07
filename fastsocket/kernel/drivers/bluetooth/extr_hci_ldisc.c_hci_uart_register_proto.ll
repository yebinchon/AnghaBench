; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_register_proto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_register_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart_proto = type { i64 }

@HCI_UART_MAX_PROTO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@hup = common dso_local global %struct.hci_uart_proto** null, align 8
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_uart_register_proto(%struct.hci_uart_proto* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart_proto*, align 8
  store %struct.hci_uart_proto* %0, %struct.hci_uart_proto** %3, align 8
  %4 = load %struct.hci_uart_proto*, %struct.hci_uart_proto** %3, align 8
  %5 = getelementptr inbounds %struct.hci_uart_proto, %struct.hci_uart_proto* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HCI_UART_MAX_PROTO, align 8
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.hci_uart_proto**, %struct.hci_uart_proto*** @hup, align 8
  %14 = load %struct.hci_uart_proto*, %struct.hci_uart_proto** %3, align 8
  %15 = getelementptr inbounds %struct.hci_uart_proto, %struct.hci_uart_proto* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.hci_uart_proto*, %struct.hci_uart_proto** %13, i64 %16
  %18 = load %struct.hci_uart_proto*, %struct.hci_uart_proto** %17, align 8
  %19 = icmp ne %struct.hci_uart_proto* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @EEXIST, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %30

23:                                               ; preds = %12
  %24 = load %struct.hci_uart_proto*, %struct.hci_uart_proto** %3, align 8
  %25 = load %struct.hci_uart_proto**, %struct.hci_uart_proto*** @hup, align 8
  %26 = load %struct.hci_uart_proto*, %struct.hci_uart_proto** %3, align 8
  %27 = getelementptr inbounds %struct.hci_uart_proto, %struct.hci_uart_proto* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.hci_uart_proto*, %struct.hci_uart_proto** %25, i64 %28
  store %struct.hci_uart_proto* %24, %struct.hci_uart_proto** %29, align 8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %23, %20, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
