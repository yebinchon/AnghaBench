; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl011.c_pl011_enable_ms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl011.c_pl011_enable_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_amba_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UART011_RIMIM = common dso_local global i32 0, align 4
@UART011_CTSMIM = common dso_local global i32 0, align 4
@UART011_DCDMIM = common dso_local global i32 0, align 4
@UART011_DSRMIM = common dso_local global i32 0, align 4
@UART011_IMSC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @pl011_enable_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl011_enable_ms(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_amba_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = bitcast %struct.uart_port* %4 to %struct.uart_amba_port*
  store %struct.uart_amba_port* %5, %struct.uart_amba_port** %3, align 8
  %6 = load i32, i32* @UART011_RIMIM, align 4
  %7 = load i32, i32* @UART011_CTSMIM, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @UART011_DCDMIM, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @UART011_DSRMIM, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UART011_IMSC, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writew(i32 %19, i64 %25)
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
