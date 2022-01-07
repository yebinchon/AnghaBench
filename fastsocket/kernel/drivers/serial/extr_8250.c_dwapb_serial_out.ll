; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_dwapb_serial_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_dwapb_serial_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 (%struct.uart_port*, i32)*, i64 }
%struct.uart_8250_port = type { i32 }

@UART_LCR = common dso_local global i32 0, align 4
@UART_TX = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, i32)* @dwapb_serial_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwapb_serial_out(%struct.uart_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uart_8250_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @map_8250_out_reg(%struct.uart_port* %10, i32 %11)
  %13 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = shl i32 %12, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @UART_LCR, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %22 = bitcast %struct.uart_port* %21 to %struct.uart_8250_port*
  store %struct.uart_8250_port* %22, %struct.uart_8250_port** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %25 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %20, %3
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = call i32 @writeb(i32 %27, i64 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @UART_TX, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @UART_IER, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38, %26
  %43 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 1
  %45 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %44, align 8
  %46 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %47 = load i32, i32* @UART_IER, align 4
  %48 = call i32 %45(%struct.uart_port* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %42, %38
  ret void
}

declare dso_local i32 @map_8250_out_reg(%struct.uart_port*, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
