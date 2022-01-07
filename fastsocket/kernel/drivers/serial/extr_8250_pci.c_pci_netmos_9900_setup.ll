; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250_pci.c_pci_netmos_9900_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250_pci.c_pci_netmos_9900_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pciserial_board = type { i32 }
%struct.uart_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial_private*, %struct.pciserial_board*, %struct.uart_port*, i32)* @pci_netmos_9900_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_netmos_9900_setup(%struct.serial_private* %0, %struct.pciserial_board* %1, %struct.uart_port* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.serial_private*, align 8
  %7 = alloca %struct.pciserial_board*, align 8
  %8 = alloca %struct.uart_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.serial_private* %0, %struct.serial_private** %6, align 8
  store %struct.pciserial_board* %1, %struct.pciserial_board** %7, align 8
  store %struct.uart_port* %2, %struct.uart_port** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.serial_private*, %struct.serial_private** %6, align 8
  %12 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 65280
  %17 = icmp eq i32 %16, 12288
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = mul nsw i32 3, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.serial_private*, %struct.serial_private** %6, align 8
  %22 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.pciserial_board*, %struct.pciserial_board** %7, align 8
  %25 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @setup_port(%struct.serial_private* %21, %struct.uart_port* %22, i32 %23, i32 0, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %34

28:                                               ; preds = %4
  %29 = load %struct.serial_private*, %struct.serial_private** %6, align 8
  %30 = load %struct.pciserial_board*, %struct.pciserial_board** %7, align 8
  %31 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @pci_default_setup(%struct.serial_private* %29, %struct.pciserial_board* %30, %struct.uart_port* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %28, %18
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @setup_port(%struct.serial_private*, %struct.uart_port*, i32, i32, i32) #1

declare dso_local i32 @pci_default_setup(%struct.serial_private*, %struct.pciserial_board*, %struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
