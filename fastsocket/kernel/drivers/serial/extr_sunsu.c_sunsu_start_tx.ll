; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsu.c_sunsu_start_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsu.c_sunsu_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_sunsu_port = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@PORT_16C950 = common dso_local global i64 0, align 8
@UART_ACR_TXDIS = common dso_local global i32 0, align 4
@UART_ACR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sunsu_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunsu_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_sunsu_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = bitcast %struct.uart_port* %4 to %struct.uart_sunsu_port*
  store %struct.uart_sunsu_port* %5, %struct.uart_sunsu_port** %3, align 8
  %6 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %7 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @UART_IER_THRI, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @UART_IER_THRI, align 4
  %14 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %19 = load i32, i32* @UART_IER, align 4
  %20 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @serial_out(%struct.uart_sunsu_port* %18, i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %12, %1
  %25 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PORT_16C950, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %24
  %32 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %33 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @UART_ACR_TXDIS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load i32, i32* @UART_ACR_TXDIS, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %42 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %46 = load i32, i32* @UART_ACR, align 4
  %47 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %48 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @serial_icr_write(%struct.uart_sunsu_port* %45, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %38, %31, %24
  ret void
}

declare dso_local i32 @serial_out(%struct.uart_sunsu_port*, i32, i32) #1

declare dso_local i32 @serial_icr_write(%struct.uart_sunsu_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
