; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_netx-serial.c_netx_txint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_netx-serial.c_netx_txint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32 }

@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @netx_txint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netx_txint(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.circ_buf* %7, %struct.circ_buf** %3, align 8
  %8 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %9 = call i64 @uart_circ_empty(%struct.circ_buf* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = call i64 @uart_tx_stopped(%struct.uart_port* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %1
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = call i32 @netx_stop_tx(%struct.uart_port* %16)
  br label %28

18:                                               ; preds = %11
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = call i32 @netx_transmit_buffer(%struct.uart_port* %19)
  %21 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %22 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %21)
  %23 = load i64, i64* @WAKEUP_CHARS, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = call i32 @uart_write_wakeup(%struct.uart_port* %26)
  br label %28

28:                                               ; preds = %15, %25, %18
  ret void
}

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @netx_stop_tx(%struct.uart_port*) #1

declare dso_local i32 @netx_transmit_buffer(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
