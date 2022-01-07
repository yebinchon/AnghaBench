; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_ic3_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_ic3_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.uart_state* }
%struct.uart_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ioc3_port = type { i32 }

@N_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @ic3_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ic3_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ioc3_port*, align 8
  %5 = alloca %struct.uart_state*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.ioc3_port* @get_ioc3_port(%struct.uart_port* %6)
  store %struct.ioc3_port* %7, %struct.ioc3_port** %4, align 8
  %8 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %9 = icmp ne %struct.ioc3_port* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 1
  %14 = load %struct.uart_state*, %struct.uart_state** %13, align 8
  store %struct.uart_state* %14, %struct.uart_state** %5, align 8
  %15 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %16 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @wake_up_interruptible(i32* %17)
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 0
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %24 = load i32, i32* @N_ALL, align 4
  %25 = call i32 @set_notification(%struct.ioc3_port* %23, i32 %24, i32 0)
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 0
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  br label %30

30:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.ioc3_port* @get_ioc3_port(%struct.uart_port*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_notification(%struct.ioc3_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
