; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_bfin_5xx.c_bfin_serial_stop_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_bfin_5xx.c_bfin_serial_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.bfin_serial_port = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32 }

@TEMT = common dso_local global i32 0, align 4
@ETBEI = common dso_local global i32 0, align 4
@TFI = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @bfin_serial_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_serial_stop_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.bfin_serial_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = bitcast %struct.uart_port* %4 to %struct.bfin_serial_port*
  store %struct.bfin_serial_port* %5, %struct.bfin_serial_port** %3, align 8
  br label %6

6:                                                ; preds = %13, %1
  %7 = load %struct.bfin_serial_port*, %struct.bfin_serial_port** %3, align 8
  %8 = call i32 @UART_GET_LSR(%struct.bfin_serial_port* %7)
  %9 = load i32, i32* @TEMT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = call i32 (...) @cpu_relax()
  br label %6

15:                                               ; preds = %6
  %16 = load %struct.bfin_serial_port*, %struct.bfin_serial_port** %3, align 8
  %17 = load i32, i32* @ETBEI, align 4
  %18 = call i32 @UART_CLEAR_IER(%struct.bfin_serial_port* %16, i32 %17)
  ret void
}

declare dso_local i32 @UART_GET_LSR(%struct.bfin_serial_port*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @UART_CLEAR_IER(%struct.bfin_serial_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
