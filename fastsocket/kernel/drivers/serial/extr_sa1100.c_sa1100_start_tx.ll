; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sa1100.c_sa1100_start_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sa1100.c_sa1100_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sa1100_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UTSR0_TFS = common dso_local global i32 0, align 4
@UTCR3_TIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sa1100_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.sa1100_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = bitcast %struct.uart_port* %5 to %struct.sa1100_port*
  store %struct.sa1100_port* %6, %struct.sa1100_port** %3, align 8
  %7 = load %struct.sa1100_port*, %struct.sa1100_port** %3, align 8
  %8 = call i32 @UART_GET_UTCR3(%struct.sa1100_port* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @UTSR0_TFS, align 4
  %10 = call i32 @UTSR0_TO_SM(i32 %9)
  %11 = load %struct.sa1100_port*, %struct.sa1100_port** %3, align 8
  %12 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %10
  store i32 %15, i32* %13, align 4
  %16 = load %struct.sa1100_port*, %struct.sa1100_port** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @UTCR3_TIE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @UART_PUT_UTCR3(%struct.sa1100_port* %16, i32 %19)
  ret void
}

declare dso_local i32 @UART_GET_UTCR3(%struct.sa1100_port*) #1

declare dso_local i32 @UTSR0_TO_SM(i32) #1

declare dso_local i32 @UART_PUT_UTCR3(%struct.sa1100_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
