; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ucc_uart.c_ucc_uart_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ucc_uart.c_ucc_uart_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device = type { i32 }
%struct.uart_qe_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"removing /dev/ttyQE%u\0A\00", align 1
@ucc_uart_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.of_device*)* @ucc_uart_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucc_uart_remove(%struct.of_device* %0) #0 {
  %2 = alloca %struct.of_device*, align 8
  %3 = alloca %struct.uart_qe_port*, align 8
  store %struct.of_device* %0, %struct.of_device** %2, align 8
  %4 = load %struct.of_device*, %struct.of_device** %2, align 8
  %5 = getelementptr inbounds %struct.of_device, %struct.of_device* %4, i32 0, i32 0
  %6 = call %struct.uart_qe_port* @dev_get_drvdata(i32* %5)
  store %struct.uart_qe_port* %6, %struct.uart_qe_port** %3, align 8
  %7 = load %struct.of_device*, %struct.of_device** %2, align 8
  %8 = getelementptr inbounds %struct.of_device, %struct.of_device* %7, i32 0, i32 0
  %9 = load %struct.uart_qe_port*, %struct.uart_qe_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_info(i32* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.uart_qe_port*, %struct.uart_qe_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %14, i32 0, i32 0
  %16 = call i32 @uart_remove_one_port(i32* @ucc_uart_driver, %struct.TYPE_2__* %15)
  %17 = load %struct.of_device*, %struct.of_device** %2, align 8
  %18 = getelementptr inbounds %struct.of_device, %struct.of_device* %17, i32 0, i32 0
  %19 = call i32 @dev_set_drvdata(i32* %18, i32* null)
  %20 = load %struct.uart_qe_port*, %struct.uart_qe_port** %3, align 8
  %21 = call i32 @kfree(%struct.uart_qe_port* %20)
  ret i32 0
}

declare dso_local %struct.uart_qe_port* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.uart_qe_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
