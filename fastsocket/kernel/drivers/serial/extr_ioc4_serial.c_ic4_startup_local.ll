; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_ic4_startup_local.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_ic4_startup_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.uart_state* }
%struct.uart_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ioc4_port = type { i32 }
%struct.ktermios = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @ic4_startup_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ic4_startup_local(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.ioc4_port*, align 8
  %5 = alloca %struct.uart_state*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = icmp ne %struct.uart_port* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %34

9:                                                ; preds = %1
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = call %struct.ioc4_port* @get_ioc4_port(%struct.uart_port* %10, i32 0)
  store %struct.ioc4_port* %11, %struct.ioc4_port** %4, align 8
  %12 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %13 = icmp ne %struct.ioc4_port* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %34

15:                                               ; preds = %9
  %16 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 1
  %18 = load %struct.uart_state*, %struct.uart_state** %17, align 8
  store %struct.uart_state* %18, %struct.uart_state** %5, align 8
  %19 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %20 = call i32 @local_open(%struct.ioc4_port* %19)
  %21 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %22 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ioc4_set_proto(%struct.ioc4_port* %21, i32 %24)
  %26 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %27 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %28 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ioc4_change_speed(%struct.uart_port* %26, i32 %32, %struct.ktermios* null)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %15, %14, %8
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.ioc4_port* @get_ioc4_port(%struct.uart_port*, i32) #1

declare dso_local i32 @local_open(%struct.ioc4_port*) #1

declare dso_local i32 @ioc4_set_proto(%struct.ioc4_port*, i32) #1

declare dso_local i32 @ioc4_change_speed(%struct.uart_port*, i32, %struct.ktermios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
