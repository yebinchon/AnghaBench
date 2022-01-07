; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_ks8695.c_ks8695uart_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_ks8695.c_ks8695uart_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@KS8695_IRQ_UART_RX = common dso_local global i32 0, align 4
@KS8695_IRQ_UART_TX = common dso_local global i32 0, align 4
@KS8695_IRQ_UART_MODEM_STATUS = common dso_local global i32 0, align 4
@KS8695_IRQ_UART_LINE_STATUS = common dso_local global i32 0, align 4
@URLC_URSBC = common dso_local global i32 0, align 4
@URFC_URFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @ks8695uart_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8695uart_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %3 = load i32, i32* @KS8695_IRQ_UART_RX, align 4
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call i32 @free_irq(i32 %3, %struct.uart_port* %4)
  %6 = load i32, i32* @KS8695_IRQ_UART_TX, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = call i32 @free_irq(i32 %6, %struct.uart_port* %7)
  %9 = load i32, i32* @KS8695_IRQ_UART_MODEM_STATUS, align 4
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = call i32 @free_irq(i32 %9, %struct.uart_port* %10)
  %12 = load i32, i32* @KS8695_IRQ_UART_LINE_STATUS, align 4
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = call i32 @free_irq(i32 %12, %struct.uart_port* %13)
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = call i32 @UART_GET_LCR(%struct.uart_port* %16)
  %18 = load i32, i32* @URLC_URSBC, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = call i32 @UART_PUT_LCR(%struct.uart_port* %15, i32 %20)
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %24 = call i32 @UART_GET_FCR(%struct.uart_port* %23)
  %25 = load i32, i32* @URFC_URFE, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @UART_PUT_FCR(%struct.uart_port* %22, i32 %27)
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.uart_port*) #1

declare dso_local i32 @UART_PUT_LCR(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_GET_LCR(%struct.uart_port*) #1

declare dso_local i32 @UART_PUT_FCR(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_GET_FCR(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
