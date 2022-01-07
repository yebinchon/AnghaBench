; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_ic4_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_ic4_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.uart_state* }
%struct.uart_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ioc4_port = type { i32, i32* }

@TTY_IO_ERROR = common dso_local global i32 0, align 4
@N_ALL = common dso_local global i32 0, align 4
@PORT_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @ic4_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ic4_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ioc4_port*, align 8
  %5 = alloca %struct.uart_state*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.ioc4_port* @get_ioc4_port(%struct.uart_port* %6, i32 0)
  store %struct.ioc4_port* %7, %struct.ioc4_port** %4, align 8
  %8 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %9 = icmp ne %struct.ioc4_port* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %49

11:                                               ; preds = %1
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 1
  %14 = load %struct.uart_state*, %struct.uart_state** %13, align 8
  store %struct.uart_state* %14, %struct.uart_state** %5, align 8
  %15 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %16 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %18 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = call i32 @wake_up_interruptible(i32* %19)
  %21 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %22 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %11
  %27 = load i32, i32* @TTY_IO_ERROR, align 4
  %28 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %29 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @set_bit(i32 %27, i32* %32)
  br label %34

34:                                               ; preds = %26, %11
  %35 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 0
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %40 = load i32, i32* @N_ALL, align 4
  %41 = call i32 @set_notification(%struct.ioc4_port* %39, i32 %40, i32 0)
  %42 = load i32, i32* @PORT_INACTIVE, align 4
  %43 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %44 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 0
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %34, %10
  ret void
}

declare dso_local %struct.ioc4_port* @get_ioc4_port(%struct.uart_port*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_notification(%struct.ioc4_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
