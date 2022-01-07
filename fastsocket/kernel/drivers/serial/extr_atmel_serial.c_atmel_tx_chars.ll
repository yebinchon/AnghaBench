; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_tx_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@ATMEL_US_TXRDY = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_tx_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.circ_buf* %7, %struct.circ_buf** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = call i32 @UART_GET_CSR(%struct.uart_port* %13)
  %15 = load i32, i32* @ATMEL_US_TXRDY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @UART_PUT_CHAR(%struct.uart_port* %19, i64 %22)
  %24 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %18, %12, %1
  %32 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %33 = call i64 @uart_circ_empty(%struct.circ_buf* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %37 = call i64 @uart_tx_stopped(%struct.uart_port* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31
  br label %94

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %77, %40
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = call i32 @UART_GET_CSR(%struct.uart_port* %42)
  %44 = load i32, i32* @ATMEL_US_TXRDY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %41
  %48 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %49 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %50 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %53 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @UART_PUT_CHAR(%struct.uart_port* %48, i64 %56)
  %58 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %59 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  %62 = load i32, i32* @UART_XMIT_SIZE, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = and i64 %61, %64
  %66 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %67 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %69 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %74 = call i64 @uart_circ_empty(%struct.circ_buf* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %47
  br label %78

77:                                               ; preds = %47
  br label %41

78:                                               ; preds = %76, %41
  %79 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %80 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %79)
  %81 = load i64, i64* @WAKEUP_CHARS, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %85 = call i32 @uart_write_wakeup(%struct.uart_port* %84)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %88 = call i64 @uart_circ_empty(%struct.circ_buf* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %92 = load i32, i32* @ATMEL_US_TXRDY, align 4
  %93 = call i32 @UART_PUT_IER(%struct.uart_port* %91, i32 %92)
  br label %94

94:                                               ; preds = %39, %90, %86
  ret void
}

declare dso_local i32 @UART_GET_CSR(%struct.uart_port*) #1

declare dso_local i32 @UART_PUT_CHAR(%struct.uart_port*, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @UART_PUT_IER(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
