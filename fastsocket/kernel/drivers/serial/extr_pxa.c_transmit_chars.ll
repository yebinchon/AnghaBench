; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pxa.c_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pxa.c_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pxa_port = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@UART_TX = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_pxa_port*)* @transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars(%struct.uart_pxa_port* %0) #0 {
  %2 = alloca %struct.uart_pxa_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_pxa_port* %0, %struct.uart_pxa_port** %2, align 8
  %5 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.circ_buf* %9, %struct.circ_buf** %3, align 8
  %10 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %2, align 8
  %17 = load i32, i32* @UART_TX, align 4
  %18 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @serial_out(%struct.uart_pxa_port* %16, i32 %17, i64 %21)
  %23 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %2, align 8
  %24 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %2, align 8
  %30 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  br label %105

32:                                               ; preds = %1
  %33 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %34 = call i64 @uart_circ_empty(%struct.circ_buf* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %2, align 8
  %38 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %37, i32 0, i32 0
  %39 = call i64 @uart_tx_stopped(%struct.TYPE_8__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %32
  %42 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %2, align 8
  %43 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %42, i32 0, i32 0
  %44 = call i32 @serial_pxa_stop_tx(%struct.TYPE_8__* %43)
  br label %105

45:                                               ; preds = %36
  %46 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %2, align 8
  %47 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sdiv i32 %49, 2
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %84, %45
  %52 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %2, align 8
  %53 = load i32, i32* @UART_TX, align 4
  %54 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %55 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %58 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @serial_out(%struct.uart_pxa_port* %52, i32 %53, i64 %61)
  %63 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %64 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  %67 = load i32, i32* @UART_XMIT_SIZE, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = and i64 %66, %69
  %71 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %72 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %2, align 8
  %74 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %80 = call i64 @uart_circ_empty(%struct.circ_buf* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %51
  br label %88

83:                                               ; preds = %51
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %4, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %51, label %88

88:                                               ; preds = %84, %82
  %89 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %90 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %89)
  %91 = load i64, i64* @WAKEUP_CHARS, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %2, align 8
  %95 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %94, i32 0, i32 0
  %96 = call i32 @uart_write_wakeup(%struct.TYPE_8__* %95)
  br label %97

97:                                               ; preds = %93, %88
  %98 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %99 = call i64 @uart_circ_empty(%struct.circ_buf* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %2, align 8
  %103 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %102, i32 0, i32 0
  %104 = call i32 @serial_pxa_stop_tx(%struct.TYPE_8__* %103)
  br label %105

105:                                              ; preds = %15, %41, %101, %97
  ret void
}

declare dso_local i32 @serial_out(%struct.uart_pxa_port*, i32, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_8__*) #1

declare dso_local i32 @serial_pxa_stop_tx(%struct.TYPE_8__*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
