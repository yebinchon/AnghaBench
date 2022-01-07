; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl011.c_pl011_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl011.c_pl011_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_amba_port = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@UART011_IMSC = common dso_local global i64 0, align 8
@UART011_ICR = common dso_local global i64 0, align 8
@UART01x_CR_UARTEN = common dso_local global i64 0, align 8
@UART011_CR_TXE = common dso_local global i64 0, align 8
@UART011_CR = common dso_local global i64 0, align 8
@UART011_LCRH = common dso_local global i64 0, align 8
@UART01x_LCRH_BRK = common dso_local global i64 0, align 8
@UART01x_LCRH_FEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @pl011_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl011_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_amba_port*, align 8
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = bitcast %struct.uart_port* %5 to %struct.uart_amba_port*
  store %struct.uart_amba_port* %6, %struct.uart_amba_port** %3, align 8
  %7 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %17 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UART011_IMSC, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writew(i64 %15, i64 %21)
  %23 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %24 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UART011_ICR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writew(i64 65535, i64 %28)
  %30 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %31 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = call i32 @spin_unlock_irq(i32* %32)
  %34 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %35 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %39 = call i32 @free_irq(i32 %37, %struct.uart_amba_port* %38)
  %40 = load i64, i64* @UART01x_CR_UARTEN, align 8
  %41 = load i64, i64* @UART011_CR_TXE, align 8
  %42 = or i64 %40, %41
  %43 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %44 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @UART011_CR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writew(i64 %42, i64 %48)
  %50 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %51 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @UART011_LCRH, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i64 @readw(i64 %55)
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* @UART01x_LCRH_BRK, align 8
  %58 = load i64, i64* @UART01x_LCRH_FEN, align 8
  %59 = or i64 %57, %58
  %60 = xor i64 %59, -1
  %61 = load i64, i64* %4, align 8
  %62 = and i64 %61, %60
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %65 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @UART011_LCRH, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writew(i64 %63, i64 %69)
  %71 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %72 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @clk_disable(i32 %73)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @writew(i64, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.uart_amba_port*) #1

declare dso_local i64 @readw(i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
