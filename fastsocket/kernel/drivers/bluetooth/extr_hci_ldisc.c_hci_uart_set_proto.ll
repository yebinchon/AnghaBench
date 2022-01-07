; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_set_proto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_set_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.hci_uart_proto* }
%struct.hci_uart_proto = type { i32 (%struct.hci_uart.0*)*, i32 (%struct.hci_uart.1*)* }
%struct.hci_uart.0 = type opaque
%struct.hci_uart.1 = type opaque

@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, i32)* @hci_uart_set_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_uart_set_proto(%struct.hci_uart* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_uart*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_uart_proto*, align 8
  %7 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.hci_uart_proto* @hci_uart_get_proto(i32 %8)
  store %struct.hci_uart_proto* %9, %struct.hci_uart_proto** %6, align 8
  %10 = load %struct.hci_uart_proto*, %struct.hci_uart_proto** %6, align 8
  %11 = icmp ne %struct.hci_uart_proto* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EPROTONOSUPPORT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.hci_uart_proto*, %struct.hci_uart_proto** %6, align 8
  %17 = getelementptr inbounds %struct.hci_uart_proto, %struct.hci_uart_proto* %16, i32 0, i32 0
  %18 = load i32 (%struct.hci_uart.0*)*, i32 (%struct.hci_uart.0*)** %17, align 8
  %19 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %20 = bitcast %struct.hci_uart* %19 to %struct.hci_uart.0*
  %21 = call i32 %18(%struct.hci_uart.0* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %43

26:                                               ; preds = %15
  %27 = load %struct.hci_uart_proto*, %struct.hci_uart_proto** %6, align 8
  %28 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %29 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %28, i32 0, i32 0
  store %struct.hci_uart_proto* %27, %struct.hci_uart_proto** %29, align 8
  %30 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %31 = call i32 @hci_uart_register_dev(%struct.hci_uart* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.hci_uart_proto*, %struct.hci_uart_proto** %6, align 8
  %36 = getelementptr inbounds %struct.hci_uart_proto, %struct.hci_uart_proto* %35, i32 0, i32 1
  %37 = load i32 (%struct.hci_uart.1*)*, i32 (%struct.hci_uart.1*)** %36, align 8
  %38 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %39 = bitcast %struct.hci_uart* %38 to %struct.hci_uart.1*
  %40 = call i32 %37(%struct.hci_uart.1* %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %34, %24, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.hci_uart_proto* @hci_uart_get_proto(i32) #1

declare dso_local i32 @hci_uart_register_dev(%struct.hci_uart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
