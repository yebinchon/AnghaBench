; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_er_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_er_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }

@PORT_SCI = common dso_local global i64 0, align 8
@SCxSR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sci_er_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_er_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.uart_port*
  store %struct.uart_port* %7, %struct.uart_port** %5, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PORT_SCI, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %15 = call i64 @sci_handle_errors(%struct.uart_port* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %19 = load i32, i32* @SCxSR, align 4
  %20 = call i32 @sci_in(%struct.uart_port* %18, i32 %19)
  %21 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %22 = load i32, i32* @SCxSR, align 4
  %23 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %24 = call i32 @SCxSR_RDxF_CLEAR(%struct.uart_port* %23)
  %25 = call i32 @sci_out(%struct.uart_port* %21, i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %17, %13
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %29 = call i32 @sci_handle_fifo_overrun(%struct.uart_port* %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @sci_rx_interrupt(i32 %30, i8* %31)
  br label %33

33:                                               ; preds = %27, %26
  %34 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %35 = load i32, i32* @SCxSR, align 4
  %36 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %37 = call i32 @SCxSR_ERROR_CLEAR(%struct.uart_port* %36)
  %38 = call i32 @sci_out(%struct.uart_port* %34, i32 %35, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @sci_tx_interrupt(i32 %39, i8* %40)
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %42
}

declare dso_local i64 @sci_handle_errors(%struct.uart_port*) #1

declare dso_local i32 @sci_in(%struct.uart_port*, i32) #1

declare dso_local i32 @sci_out(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @SCxSR_RDxF_CLEAR(%struct.uart_port*) #1

declare dso_local i32 @sci_handle_fifo_overrun(%struct.uart_port*) #1

declare dso_local i32 @sci_rx_interrupt(i32, i8*) #1

declare dso_local i32 @SCxSR_ERROR_CLEAR(%struct.uart_port*) #1

declare dso_local i32 @sci_tx_interrupt(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
