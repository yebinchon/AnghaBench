; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_tsi_serial_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_tsi_serial_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64 }

@UART_IER = common dso_local global i32 0, align 4
@UART_IER_UUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, i32)* @tsi_serial_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi_serial_out(%struct.uart_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @map_8250_out_reg(%struct.uart_port* %7, i32 %8)
  %10 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 %9, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @UART_IER, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @UART_IER_UUE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %17, %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call i32 @writeb(i32 %23, i64 %29)
  br label %31

31:                                               ; preds = %22, %17
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
