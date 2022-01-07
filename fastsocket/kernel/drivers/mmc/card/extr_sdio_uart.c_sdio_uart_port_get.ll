; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_port_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_port_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_uart_port = type { i32 }

@UART_NR = common dso_local global i32 0, align 4
@sdio_uart_table_lock = common dso_local global i32 0, align 4
@sdio_uart_table = common dso_local global %struct.sdio_uart_port** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdio_uart_port* (i32)* @sdio_uart_port_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdio_uart_port* @sdio_uart_port_get(i32 %0) #0 {
  %2 = alloca %struct.sdio_uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_uart_port*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @UART_NR, align 4
  %7 = icmp uge i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.sdio_uart_port* null, %struct.sdio_uart_port** %2, align 8
  br label %25

9:                                                ; preds = %1
  %10 = call i32 @spin_lock(i32* @sdio_uart_table_lock)
  %11 = load %struct.sdio_uart_port**, %struct.sdio_uart_port*** @sdio_uart_table, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.sdio_uart_port*, %struct.sdio_uart_port** %11, i64 %13
  %15 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %14, align 8
  store %struct.sdio_uart_port* %15, %struct.sdio_uart_port** %4, align 8
  %16 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %17 = icmp ne %struct.sdio_uart_port* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %9
  %19 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %20 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %19, i32 0, i32 0
  %21 = call i32 @kref_get(i32* %20)
  br label %22

22:                                               ; preds = %18, %9
  %23 = call i32 @spin_unlock(i32* @sdio_uart_table_lock)
  %24 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  store %struct.sdio_uart_port* %24, %struct.sdio_uart_port** %2, align 8
  br label %25

25:                                               ; preds = %22, %8
  %26 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  ret %struct.sdio_uart_port* %26
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
