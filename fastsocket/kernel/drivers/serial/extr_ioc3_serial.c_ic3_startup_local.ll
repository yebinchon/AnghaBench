; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_ic3_startup_local.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_ic3_startup_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ioc3_port = type { i32 }

@PROTO_RS232 = common dso_local global i32 0, align 4
@PROTO_RS422 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @ic3_startup_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ic3_startup_local(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.ioc3_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %6 = icmp ne %struct.uart_port* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 (...) @NOT_PROGRESS()
  store i32 -1, i32* %2, align 4
  br label %32

9:                                                ; preds = %1
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = call %struct.ioc3_port* @get_ioc3_port(%struct.uart_port* %10)
  store %struct.ioc3_port* %11, %struct.ioc3_port** %4, align 8
  %12 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %13 = icmp ne %struct.ioc3_port* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = call i32 (...) @NOT_PROGRESS()
  store i32 -1, i32* %2, align 4
  br label %32

16:                                               ; preds = %9
  %17 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %18 = call i32 @local_open(%struct.ioc3_port* %17)
  %19 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @IS_RS232(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @PROTO_RS232, align 4
  br label %29

27:                                               ; preds = %16
  %28 = load i32, i32* @PROTO_RS422, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = call i32 @ioc3_set_proto(%struct.ioc3_port* %19, i32 %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %14, %7
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @NOT_PROGRESS(...) #1

declare dso_local %struct.ioc3_port* @get_ioc3_port(%struct.uart_port*) #1

declare dso_local i32 @local_open(%struct.ioc3_port*) #1

declare dso_local i32 @ioc3_set_proto(%struct.ioc3_port*, i32) #1

declare dso_local i64 @IS_RS232(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
