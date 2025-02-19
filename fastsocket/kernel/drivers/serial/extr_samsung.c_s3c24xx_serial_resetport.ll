; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_samsung.c_s3c24xx_serial_resetport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_samsung.c_s3c24xx_serial_resetport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.s3c2410_uartcfg = type { i32 }
%struct.s3c24xx_uart_info = type { i32 (%struct.uart_port*, %struct.s3c2410_uartcfg.0*)* }
%struct.s3c2410_uartcfg.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.s3c2410_uartcfg*)* @s3c24xx_serial_resetport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_serial_resetport(%struct.uart_port* %0, %struct.s3c2410_uartcfg* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.s3c2410_uartcfg*, align 8
  %5 = alloca %struct.s3c24xx_uart_info*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.s3c2410_uartcfg* %1, %struct.s3c2410_uartcfg** %4, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = call %struct.s3c24xx_uart_info* @s3c24xx_port_to_info(%struct.uart_port* %6)
  store %struct.s3c24xx_uart_info* %7, %struct.s3c24xx_uart_info** %5, align 8
  %8 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %5, align 8
  %9 = getelementptr inbounds %struct.s3c24xx_uart_info, %struct.s3c24xx_uart_info* %8, i32 0, i32 0
  %10 = load i32 (%struct.uart_port*, %struct.s3c2410_uartcfg.0*)*, i32 (%struct.uart_port*, %struct.s3c2410_uartcfg.0*)** %9, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %4, align 8
  %13 = bitcast %struct.s3c2410_uartcfg* %12 to %struct.s3c2410_uartcfg.0*
  %14 = call i32 %10(%struct.uart_port* %11, %struct.s3c2410_uartcfg.0* %13)
  ret i32 %14
}

declare dso_local %struct.s3c24xx_uart_info* @s3c24xx_port_to_info(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
