; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_ioc4_serial_remove_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_ioc4_serial_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc4_driver_data = type { %struct.ioc4_soft* }
%struct.ioc4_soft = type { i64, i32, %struct.ioc4_soft*, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ioc4_soft*, %struct.uart_port* }
%struct.uart_port = type { i32 }
%struct.ioc4_control = type { i64, i32, %struct.ioc4_control*, i32, i32, i32, %struct.TYPE_2__* }
%struct.ioc4_port = type { i64, i32, %struct.ioc4_port*, i32, i32, i32, %struct.TYPE_2__* }

@IOC4_NUM_SERIAL_PORTS = common dso_local global i32 0, align 4
@UART_PORT_MIN = common dso_local global i32 0, align 4
@UART_PORT_COUNT = common dso_local global i32 0, align 4
@ioc4_uart_rs422 = common dso_local global i32 0, align 4
@ioc4_uart_rs232 = common dso_local global i32 0, align 4
@TOTAL_RING_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioc4_driver_data*)* @ioc4_serial_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioc4_serial_remove_one(%struct.ioc4_driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ioc4_driver_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ioc4_control*, align 8
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca %struct.ioc4_port*, align 8
  %9 = alloca %struct.ioc4_soft*, align 8
  store %struct.ioc4_driver_data* %0, %struct.ioc4_driver_data** %3, align 8
  %10 = load %struct.ioc4_driver_data*, %struct.ioc4_driver_data** %3, align 8
  %11 = getelementptr inbounds %struct.ioc4_driver_data, %struct.ioc4_driver_data* %10, i32 0, i32 0
  %12 = load %struct.ioc4_soft*, %struct.ioc4_soft** %11, align 8
  %13 = bitcast %struct.ioc4_soft* %12 to %struct.ioc4_control*
  store %struct.ioc4_control* %13, %struct.ioc4_control** %6, align 8
  %14 = load %struct.ioc4_control*, %struct.ioc4_control** %6, align 8
  %15 = icmp ne %struct.ioc4_control* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %126

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %88, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @IOC4_NUM_SERIAL_PORTS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %91

22:                                               ; preds = %18
  %23 = load i32, i32* @UART_PORT_MIN, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %53, %22
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @UART_PORT_COUNT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = load %struct.ioc4_control*, %struct.ioc4_control** %6, align 8
  %30 = getelementptr inbounds %struct.ioc4_control, %struct.ioc4_control* %29, i32 0, i32 6
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.uart_port*, %struct.uart_port** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i64 %38
  store %struct.uart_port* %39, %struct.uart_port** %7, align 8
  %40 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %41 = icmp ne %struct.uart_port* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %28
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %47 [
    i32 128, label %44
    i32 129, label %48
  ]

44:                                               ; preds = %42
  %45 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %46 = call i32 @uart_remove_one_port(i32* @ioc4_uart_rs422, %struct.uart_port* %45)
  br label %51

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %42, %47
  %49 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %50 = call i32 @uart_remove_one_port(i32* @ioc4_uart_rs232, %struct.uart_port* %49)
  br label %51

51:                                               ; preds = %48, %44
  br label %52

52:                                               ; preds = %51, %28
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %24

56:                                               ; preds = %24
  %57 = load %struct.ioc4_control*, %struct.ioc4_control** %6, align 8
  %58 = getelementptr inbounds %struct.ioc4_control, %struct.ioc4_control* %57, i32 0, i32 6
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.ioc4_soft*, %struct.ioc4_soft** %63, align 8
  %65 = bitcast %struct.ioc4_soft* %64 to %struct.ioc4_port*
  store %struct.ioc4_port* %65, %struct.ioc4_port** %8, align 8
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %56
  %70 = load %struct.ioc4_port*, %struct.ioc4_port** %8, align 8
  %71 = icmp ne %struct.ioc4_port* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load %struct.ioc4_port*, %struct.ioc4_port** %8, align 8
  %74 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @TOTAL_RING_BUF_SIZE, align 4
  %77 = load %struct.ioc4_port*, %struct.ioc4_port** %8, align 8
  %78 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ioc4_port*, %struct.ioc4_port** %8, align 8
  %81 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @pci_free_consistent(i32 %75, i32 %76, i32 %79, i32 %82)
  %84 = load %struct.ioc4_port*, %struct.ioc4_port** %8, align 8
  %85 = bitcast %struct.ioc4_port* %84 to %struct.ioc4_soft*
  %86 = call i32 @kfree(%struct.ioc4_soft* %85)
  br label %87

87:                                               ; preds = %72, %69, %56
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %18

91:                                               ; preds = %18
  %92 = load %struct.ioc4_control*, %struct.ioc4_control** %6, align 8
  %93 = getelementptr inbounds %struct.ioc4_control, %struct.ioc4_control* %92, i32 0, i32 2
  %94 = load %struct.ioc4_control*, %struct.ioc4_control** %93, align 8
  %95 = bitcast %struct.ioc4_control* %94 to %struct.ioc4_soft*
  store %struct.ioc4_soft* %95, %struct.ioc4_soft** %9, align 8
  %96 = load %struct.ioc4_soft*, %struct.ioc4_soft** %9, align 8
  %97 = icmp ne %struct.ioc4_soft* %96, null
  br i1 %97, label %98, label %120

98:                                               ; preds = %91
  %99 = load %struct.ioc4_control*, %struct.ioc4_control** %6, align 8
  %100 = getelementptr inbounds %struct.ioc4_control, %struct.ioc4_control* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ioc4_soft*, %struct.ioc4_soft** %9, align 8
  %103 = call i32 @free_irq(i32 %101, %struct.ioc4_soft* %102)
  %104 = load %struct.ioc4_soft*, %struct.ioc4_soft** %9, align 8
  %105 = getelementptr inbounds %struct.ioc4_soft, %struct.ioc4_soft* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %98
  %109 = load %struct.ioc4_soft*, %struct.ioc4_soft** %9, align 8
  %110 = getelementptr inbounds %struct.ioc4_soft, %struct.ioc4_soft* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @iounmap(i64 %111)
  %113 = load %struct.ioc4_soft*, %struct.ioc4_soft** %9, align 8
  %114 = getelementptr inbounds %struct.ioc4_soft, %struct.ioc4_soft* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @release_mem_region(i64 %115, i32 4)
  br label %117

117:                                              ; preds = %108, %98
  %118 = load %struct.ioc4_soft*, %struct.ioc4_soft** %9, align 8
  %119 = call i32 @kfree(%struct.ioc4_soft* %118)
  br label %120

120:                                              ; preds = %117, %91
  %121 = load %struct.ioc4_control*, %struct.ioc4_control** %6, align 8
  %122 = bitcast %struct.ioc4_control* %121 to %struct.ioc4_soft*
  %123 = call i32 @kfree(%struct.ioc4_soft* %122)
  %124 = load %struct.ioc4_driver_data*, %struct.ioc4_driver_data** %3, align 8
  %125 = getelementptr inbounds %struct.ioc4_driver_data, %struct.ioc4_driver_data* %124, i32 0, i32 0
  store %struct.ioc4_soft* null, %struct.ioc4_soft** %125, align 8
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %120, %16
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @uart_remove_one_port(i32*, %struct.uart_port*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ioc4_soft*) #1

declare dso_local i32 @free_irq(i32, %struct.ioc4_soft*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
