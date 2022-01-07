; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_autoconfig_read_divisor_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_autoconfig_read_divisor_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32 }

@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i8 0, align 1
@UART_DLL = common dso_local global i32 0, align 4
@UART_DLM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_8250_port*)* @autoconfig_read_divisor_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autoconfig_read_divisor_id(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %7 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %8 = load i32, i32* @UART_LCR, align 4
  %9 = call i32 @serial_inp(%struct.uart_8250_port* %7, i32 %8)
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %5, align 1
  %11 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %12 = load i32, i32* @UART_LCR, align 4
  %13 = load i8, i8* @UART_LCR_DLAB, align 1
  %14 = call i32 @serial_outp(%struct.uart_8250_port* %11, i32 %12, i8 zeroext %13)
  %15 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %16 = load i32, i32* @UART_DLL, align 4
  %17 = call i32 @serial_inp(%struct.uart_8250_port* %15, i32 %16)
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %3, align 1
  %19 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %20 = load i32, i32* @UART_DLM, align 4
  %21 = call i32 @serial_inp(%struct.uart_8250_port* %19, i32 %20)
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %4, align 1
  %23 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %24 = load i32, i32* @UART_DLL, align 4
  %25 = call i32 @serial_outp(%struct.uart_8250_port* %23, i32 %24, i8 zeroext 0)
  %26 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %27 = load i32, i32* @UART_DLM, align 4
  %28 = call i32 @serial_outp(%struct.uart_8250_port* %26, i32 %27, i8 zeroext 0)
  %29 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %30 = load i32, i32* @UART_DLL, align 4
  %31 = call i32 @serial_inp(%struct.uart_8250_port* %29, i32 %30)
  %32 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %33 = load i32, i32* @UART_DLM, align 4
  %34 = call i32 @serial_inp(%struct.uart_8250_port* %32, i32 %33)
  %35 = shl i32 %34, 8
  %36 = or i32 %31, %35
  store i32 %36, i32* %6, align 4
  %37 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %38 = load i32, i32* @UART_DLL, align 4
  %39 = load i8, i8* %3, align 1
  %40 = call i32 @serial_outp(%struct.uart_8250_port* %37, i32 %38, i8 zeroext %39)
  %41 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %42 = load i32, i32* @UART_DLM, align 4
  %43 = load i8, i8* %4, align 1
  %44 = call i32 @serial_outp(%struct.uart_8250_port* %41, i32 %42, i8 zeroext %43)
  %45 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %46 = load i32, i32* @UART_LCR, align 4
  %47 = load i8, i8* %5, align 1
  %48 = call i32 @serial_outp(%struct.uart_8250_port* %45, i32 %46, i8 zeroext %47)
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @serial_inp(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial_outp(%struct.uart_8250_port*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
