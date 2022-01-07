; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i32* }

@UART_TX = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"THRE...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*)* @transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %5 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.circ_buf* %9, %struct.circ_buf** %3, align 8
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %17 = load i32, i32* @UART_TX, align 4
  %18 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @serial_outp(%struct.uart_8250_port* %16, i32 %17, i64 %21)
  %23 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %24 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %30 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  br label %106

32:                                               ; preds = %1
  %33 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %34 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %33, i32 0, i32 1
  %35 = call i64 @uart_tx_stopped(%struct.TYPE_8__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %39 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %38, i32 0, i32 1
  %40 = call i32 @serial8250_stop_tx(%struct.TYPE_8__* %39)
  br label %106

41:                                               ; preds = %32
  %42 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %43 = call i64 @uart_circ_empty(%struct.circ_buf* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %47 = call i32 @__stop_tx(%struct.uart_8250_port* %46)
  br label %106

48:                                               ; preds = %41
  %49 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %50 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %85, %48
  %53 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %54 = load i32, i32* @UART_TX, align 4
  %55 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %56 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %59 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @serial_out(%struct.uart_8250_port* %53, i32 %54, i32 %62)
  %64 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %65 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  %68 = load i32, i32* @UART_XMIT_SIZE, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = and i64 %67, %70
  %72 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %73 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %75 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %81 = call i64 @uart_circ_empty(%struct.circ_buf* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %52
  br label %89

84:                                               ; preds = %52
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %4, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %52, label %89

89:                                               ; preds = %85, %83
  %90 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %91 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %90)
  %92 = load i64, i64* @WAKEUP_CHARS, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %96 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %95, i32 0, i32 1
  %97 = call i32 @uart_write_wakeup(%struct.TYPE_8__* %96)
  br label %98

98:                                               ; preds = %94, %89
  %99 = call i32 @DEBUG_INTR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %100 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %101 = call i64 @uart_circ_empty(%struct.circ_buf* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %105 = call i32 @__stop_tx(%struct.uart_8250_port* %104)
  br label %106

106:                                              ; preds = %15, %37, %45, %103, %98
  ret void
}

declare dso_local i32 @serial_outp(%struct.uart_8250_port*, i32, i64) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_8__*) #1

declare dso_local i32 @serial8250_stop_tx(%struct.TYPE_8__*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @__stop_tx(%struct.uart_8250_port*) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_8__*) #1

declare dso_local i32 @DEBUG_INTR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
