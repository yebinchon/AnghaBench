; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_uartlite.c_ulite_transmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_uartlite.c_ulite_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@ULITE_STATUS_TXFULL = common dso_local global i32 0, align 4
@ULITE_TX = common dso_local global i64 0, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32)* @ulite_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulite_transmit(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.circ_buf* %10, %struct.circ_buf** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ULITE_STATUS_TXFULL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %85

16:                                               ; preds = %2
  %17 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ULITE_TX, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writeb(i64 %24, i64 %29)
  %31 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  store i32 1, i32* %3, align 4
  br label %85

38:                                               ; preds = %16
  %39 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %40 = call i64 @uart_circ_empty(%struct.circ_buf* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %44 = call i64 @uart_tx_stopped(%struct.uart_port* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38
  store i32 0, i32* %3, align 4
  br label %85

47:                                               ; preds = %42
  %48 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %49 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %52 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ULITE_TX, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writeb(i64 %55, i64 %60)
  %62 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %63 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  %66 = load i32, i32* @UART_XMIT_SIZE, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = and i64 %65, %68
  %70 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %71 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %73 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %78 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %77)
  %79 = load i64, i64* @WAKEUP_CHARS, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %47
  %82 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %83 = call i32 @uart_write_wakeup(%struct.uart_port* %82)
  br label %84

84:                                               ; preds = %81, %47
  store i32 1, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %46, %21, %15
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @writeb(i64, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
