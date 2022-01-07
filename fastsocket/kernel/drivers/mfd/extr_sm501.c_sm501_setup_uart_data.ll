; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_setup_uart_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_setup_uart_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm501_devdata = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.plat_serial8250_port = type { i32, i32, i32, i32, i32, i64, i64 }

@UPIO_MEM = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_SKIP_TEST = common dso_local global i32 0, align 4
@UPF_SHARE_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sm501_devdata*, %struct.plat_serial8250_port*, i32)* @sm501_setup_uart_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm501_setup_uart_data(%struct.sm501_devdata* %0, %struct.plat_serial8250_port* %1, i32 %2) #0 {
  %4 = alloca %struct.sm501_devdata*, align 8
  %5 = alloca %struct.plat_serial8250_port*, align 8
  %6 = alloca i32, align 4
  store %struct.sm501_devdata* %0, %struct.sm501_devdata** %4, align 8
  store %struct.plat_serial8250_port* %1, %struct.plat_serial8250_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %8 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  %12 = add nsw i64 %9, %11
  %13 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %5, align 8
  %14 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %13, i32 0, i32 6
  store i64 %12, i64* %14, align 8
  %15 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %16 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %5, align 8
  %24 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %23, i32 0, i32 5
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* @UPIO_MEM, align 4
  %26 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %5, align 8
  %27 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %29 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %5, align 8
  %32 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %34 = load i32, i32* @UPF_SKIP_TEST, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @UPF_SHARE_IRQ, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %5, align 8
  %39 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %5, align 8
  %41 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %40, i32 0, i32 1
  store i32 2, i32* %41, align 4
  %42 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %5, align 8
  %43 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %42, i32 0, i32 2
  store i32 153600, i32* %43, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
