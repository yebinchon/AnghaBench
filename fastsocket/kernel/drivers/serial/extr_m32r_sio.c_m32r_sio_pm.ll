; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_m32r_sio_pm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_m32r_sio_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_sio_port = type { i32 (%struct.uart_port.0*, i32, i32)* }
%struct.uart_port.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, i32)* @m32r_sio_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m32r_sio_pm(%struct.uart_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_sio_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %9 = bitcast %struct.uart_port* %8 to %struct.uart_sio_port*
  store %struct.uart_sio_port* %9, %struct.uart_sio_port** %7, align 8
  %10 = load %struct.uart_sio_port*, %struct.uart_sio_port** %7, align 8
  %11 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %10, i32 0, i32 0
  %12 = load i32 (%struct.uart_port.0*, i32, i32)*, i32 (%struct.uart_port.0*, i32, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.uart_port.0*, i32, i32)* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.uart_sio_port*, %struct.uart_sio_port** %7, align 8
  %16 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %15, i32 0, i32 0
  %17 = load i32 (%struct.uart_port.0*, i32, i32)*, i32 (%struct.uart_port.0*, i32, i32)** %16, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %19 = bitcast %struct.uart_port* %18 to %struct.uart_port.0*
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 %17(%struct.uart_port.0* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %14, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
