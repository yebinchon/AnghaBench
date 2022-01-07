; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pnx8xxx_uart.c_pnx8xxx_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pnx8xxx_uart.c_pnx8xxx_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.pnx8xxx_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@pnx8xxx_int = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"pnx8xxx-uart\00", align 1
@PNX8XXX_ICLR = common dso_local global i32 0, align 4
@PNX8XXX_UART_INT_ALLRX = common dso_local global i32 0, align 4
@PNX8XXX_UART_INT_ALLTX = common dso_local global i32 0, align 4
@PNX8XXX_IEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @pnx8xxx_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnx8xxx_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.pnx8xxx_port*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = bitcast %struct.uart_port* %6 to %struct.pnx8xxx_port*
  store %struct.pnx8xxx_port* %7, %struct.pnx8xxx_port** %4, align 8
  %8 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %4, align 8
  %9 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @pnx8xxx_int, align 4
  %13 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %4, align 8
  %14 = call i32 @request_irq(i32 %11, i32 %12, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.pnx8xxx_port* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %1
  %20 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %4, align 8
  %21 = load i32, i32* @PNX8XXX_ICLR, align 4
  %22 = load i32, i32* @PNX8XXX_UART_INT_ALLRX, align 4
  %23 = load i32, i32* @PNX8XXX_UART_INT_ALLTX, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @serial_out(%struct.pnx8xxx_port* %20, i32 %21, i32 %24)
  %26 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %4, align 8
  %27 = load i32, i32* @PNX8XXX_IEN, align 4
  %28 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %4, align 8
  %29 = load i32, i32* @PNX8XXX_IEN, align 4
  %30 = call i32 @serial_in(%struct.pnx8xxx_port* %28, i32 %29)
  %31 = load i32, i32* @PNX8XXX_UART_INT_ALLRX, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @PNX8XXX_UART_INT_ALLTX, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @serial_out(%struct.pnx8xxx_port* %26, i32 %27, i32 %34)
  %36 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %4, align 8
  %37 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %4, align 8
  %41 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %40, i32 0, i32 0
  %42 = call i32 @pnx8xxx_enable_ms(%struct.TYPE_2__* %41)
  %43 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %4, align 8
  %44 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_irq(i32* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %19, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.pnx8xxx_port*) #1

declare dso_local i32 @serial_out(%struct.pnx8xxx_port*, i32, i32) #1

declare dso_local i32 @serial_in(%struct.pnx8xxx_port*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @pnx8xxx_enable_ms(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
