; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_ic4_stop_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_ic4_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ioc4_port = type { i32 }

@N_OUTPUT_LOWAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @ic4_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ic4_stop_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.ioc4_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.ioc4_port* @get_ioc4_port(%struct.uart_port* %4, i32 0)
  store %struct.ioc4_port* %5, %struct.ioc4_port** %3, align 8
  %6 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = call i64 @port_is_active(%struct.ioc4_port* %6, %struct.uart_port* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %12 = load i32, i32* @N_OUTPUT_LOWAT, align 4
  %13 = call i32 @set_notification(%struct.ioc4_port* %11, i32 %12, i32 0)
  br label %14

14:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.ioc4_port* @get_ioc4_port(%struct.uart_port*, i32) #1

declare dso_local i64 @port_is_active(%struct.ioc4_port*, %struct.uart_port*) #1

declare dso_local i32 @set_notification(%struct.ioc4_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
