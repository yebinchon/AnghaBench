; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250_pci.c_pci_timedia_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250_pci.c_pci_timedia_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_private = type { i32 }
%struct.pciserial_board = type { i32, i32, i32 }
%struct.uart_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial_private*, %struct.pciserial_board*, %struct.uart_port*, i32)* @pci_timedia_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_timedia_setup(%struct.serial_private* %0, %struct.pciserial_board* %1, %struct.uart_port* %2, i32 %3) #0 {
  %5 = alloca %struct.serial_private*, align 8
  %6 = alloca %struct.pciserial_board*, align 8
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.serial_private* %0, %struct.serial_private** %5, align 8
  store %struct.pciserial_board* %1, %struct.pciserial_board** %6, align 8
  store %struct.uart_port* %2, %struct.uart_port** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %12 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %28 [
    i32 0, label %15
    i32 1, label %16
    i32 2, label %20
    i32 3, label %21
    i32 4, label %25
    i32 5, label %25
    i32 6, label %25
    i32 7, label %25
  ]

15:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %28

16:                                               ; preds = %4
  %17 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %18 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %28

20:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %28

21:                                               ; preds = %4
  %22 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %23 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %4, %4, %4, %4, %21
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 2
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %25, %4, %20, %16, %15
  %29 = load %struct.serial_private*, %struct.serial_private** %5, align 8
  %30 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %34 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @setup_port(%struct.serial_private* %29, %struct.uart_port* %30, i32 %31, i32 %32, i32 %35)
  ret i32 %36
}

declare dso_local i32 @setup_port(%struct.serial_private*, %struct.uart_port*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
