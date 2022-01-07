; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_get_ioc4_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_get_ioc4_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc4_port = type { %struct.uart_port*, %struct.uart_port** }
%struct.uart_port = type { i32 }
%struct.ioc4_driver_data = type { %struct.ioc4_control* }
%struct.ioc4_control = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ioc4_port* }

@IOC4_NUM_SERIAL_PORTS = common dso_local global i32 0, align 4
@UART_PORT_MIN = common dso_local global i32 0, align 4
@UART_PORT_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ioc4_port* (%struct.uart_port*, i32)* @get_ioc4_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ioc4_port* @get_ioc4_port(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.ioc4_port*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ioc4_driver_data*, align 8
  %7 = alloca %struct.ioc4_control*, align 8
  %8 = alloca %struct.ioc4_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ioc4_driver_data* @dev_get_drvdata(i32 %13)
  store %struct.ioc4_driver_data* %14, %struct.ioc4_driver_data** %6, align 8
  %15 = load %struct.ioc4_driver_data*, %struct.ioc4_driver_data** %6, align 8
  %16 = getelementptr inbounds %struct.ioc4_driver_data, %struct.ioc4_driver_data* %15, i32 0, i32 0
  %17 = load %struct.ioc4_control*, %struct.ioc4_control** %16, align 8
  store %struct.ioc4_control* %17, %struct.ioc4_control** %7, align 8
  %18 = load %struct.ioc4_control*, %struct.ioc4_control** %7, align 8
  %19 = icmp ne %struct.ioc4_control* %18, null
  br i1 %19, label %20, label %71

20:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %67, %20
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @IOC4_NUM_SERIAL_PORTS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %21
  %26 = load %struct.ioc4_control*, %struct.ioc4_control** %7, align 8
  %27 = getelementptr inbounds %struct.ioc4_control, %struct.ioc4_control* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.ioc4_port*, %struct.ioc4_port** %32, align 8
  store %struct.ioc4_port* %33, %struct.ioc4_port** %8, align 8
  %34 = load %struct.ioc4_port*, %struct.ioc4_port** %8, align 8
  %35 = icmp ne %struct.ioc4_port* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  br label %67

37:                                               ; preds = %25
  %38 = load i32, i32* @UART_PORT_MIN, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %63, %37
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @UART_PORT_COUNT, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %39
  %44 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %45 = load %struct.ioc4_port*, %struct.ioc4_port** %8, align 8
  %46 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %45, i32 0, i32 1
  %47 = load %struct.uart_port**, %struct.uart_port*** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.uart_port*, %struct.uart_port** %47, i64 %49
  %51 = load %struct.uart_port*, %struct.uart_port** %50, align 8
  %52 = icmp eq %struct.uart_port* %44, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %58 = load %struct.ioc4_port*, %struct.ioc4_port** %8, align 8
  %59 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %58, i32 0, i32 0
  store %struct.uart_port* %57, %struct.uart_port** %59, align 8
  br label %60

60:                                               ; preds = %56, %53
  %61 = load %struct.ioc4_port*, %struct.ioc4_port** %8, align 8
  store %struct.ioc4_port* %61, %struct.ioc4_port** %3, align 8
  br label %72

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %39

66:                                               ; preds = %39
  br label %67

67:                                               ; preds = %66, %36
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %21

70:                                               ; preds = %21
  br label %71

71:                                               ; preds = %70, %2
  store %struct.ioc4_port* null, %struct.ioc4_port** %3, align 8
  br label %72

72:                                               ; preds = %71, %60
  %73 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  ret %struct.ioc4_port* %73
}

declare dso_local %struct.ioc4_driver_data* @dev_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
