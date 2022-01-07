; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_tasklet_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_tasklet_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.atmel_uart_port = type { i32, i32 }

@ATMEL_US_RI = common dso_local global i32 0, align 4
@ATMEL_US_DSR = common dso_local global i32 0, align 4
@ATMEL_US_DCD = common dso_local global i32 0, align 4
@ATMEL_US_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @atmel_tasklet_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_tasklet_func(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.atmel_uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.uart_port*
  store %struct.uart_port* %8, %struct.uart_port** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %9)
  store %struct.atmel_uart_port* %10, %struct.atmel_uart_port** %4, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = call i64 @atmel_use_dma_tx(%struct.uart_port* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %19 = call i32 @atmel_tx_dma(%struct.uart_port* %18)
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %22 = call i32 @atmel_tx_chars(%struct.uart_port* %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %25 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %29 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %27, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ATMEL_US_RI, align 4
  %34 = load i32, i32* @ATMEL_US_DSR, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ATMEL_US_DCD, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ATMEL_US_CTS, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %32, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %102

42:                                               ; preds = %23
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @ATMEL_US_RI, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @ATMEL_US_DSR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %58, %53
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ATMEL_US_DCD, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @ATMEL_US_DCD, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @uart_handle_dcd_change(%struct.uart_port* %70, i32 %76)
  br label %78

78:                                               ; preds = %69, %64
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @ATMEL_US_CTS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @ATMEL_US_CTS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @uart_handle_cts_change(%struct.uart_port* %84, i32 %90)
  br label %92

92:                                               ; preds = %83, %78
  %93 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %94 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = call i32 @wake_up_interruptible(i32* %97)
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %101 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %92, %23
  %103 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %104 = call i64 @atmel_use_dma_rx(%struct.uart_port* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %108 = call i32 @atmel_rx_from_dma(%struct.uart_port* %107)
  br label %112

109:                                              ; preds = %102
  %110 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %111 = call i32 @atmel_rx_from_ring(%struct.uart_port* %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %114 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %113, i32 0, i32 0
  %115 = call i32 @spin_unlock(i32* %114)
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @atmel_use_dma_tx(%struct.uart_port*) #1

declare dso_local i32 @atmel_tx_dma(%struct.uart_port*) #1

declare dso_local i32 @atmel_tx_chars(%struct.uart_port*) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.uart_port*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @atmel_use_dma_rx(%struct.uart_port*) #1

declare dso_local i32 @atmel_rx_from_dma(%struct.uart_port*) #1

declare dso_local i32 @atmel_rx_from_ring(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
