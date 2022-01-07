; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_m32r_sio_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_m32r_sio_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_sio_port = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@SIOTRCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @m32r_sio_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m32r_sio_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_sio_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = bitcast %struct.uart_port* %4 to %struct.uart_sio_port*
  store %struct.uart_sio_port* %5, %struct.uart_sio_port** %3, align 8
  %6 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %7 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %9 = load i32, i32* @SIOTRCR, align 4
  %10 = call i32 @sio_out(%struct.uart_sio_port* %8, i32 %9, i32 0)
  %11 = call i32 (...) @sio_init()
  %12 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @is_real_interrupt(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %20 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %19, i32 0, i32 0
  %21 = call i32 @del_timer_sync(i32* %20)
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %24 = call i32 @serial_unlink_irq_chain(%struct.uart_sio_port* %23)
  br label %25

25:                                               ; preds = %22, %18
  ret void
}

declare dso_local i32 @sio_out(%struct.uart_sio_port*, i32, i32) #1

declare dso_local i32 @sio_init(...) #1

declare dso_local i32 @is_real_interrupt(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @serial_unlink_irq_chain(%struct.uart_sio_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
