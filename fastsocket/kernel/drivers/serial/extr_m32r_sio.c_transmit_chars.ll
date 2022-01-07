; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sio_port = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@UART_TX = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"THRE...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_sio_port*)* @transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars(%struct.uart_sio_port* %0) #0 {
  %2 = alloca %struct.uart_sio_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_sio_port* %0, %struct.uart_sio_port** %2, align 8
  %5 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.circ_buf* %9, %struct.circ_buf** %3, align 8
  %10 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %17 = load i32, i32* @UART_TX, align 4
  %18 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @serial_out(%struct.uart_sio_port* %16, i32 %17, i64 %21)
  %23 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %24 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %30 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  br label %115

32:                                               ; preds = %1
  %33 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %34 = call i64 @uart_circ_empty(%struct.circ_buf* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %38 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %37, i32 0, i32 0
  %39 = call i64 @uart_tx_stopped(%struct.TYPE_8__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %32
  %42 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %43 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %42, i32 0, i32 0
  %44 = call i32 @m32r_sio_stop_tx(%struct.TYPE_8__* %43)
  br label %115

45:                                               ; preds = %36
  %46 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %47 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %93, %45
  %51 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %52 = load i32, i32* @UART_TX, align 4
  %53 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %54 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %57 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @serial_out(%struct.uart_sio_port* %51, i32 %52, i64 %60)
  %62 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %63 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  %66 = load i32, i32* @UART_XMIT_SIZE, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = and i64 %65, %68
  %70 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %71 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %73 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %79 = call i64 @uart_circ_empty(%struct.circ_buf* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %50
  br label %97

82:                                               ; preds = %50
  br label %83

83:                                               ; preds = %91, %82
  %84 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %85 = load i32, i32* @UART_LSR, align 4
  %86 = call i32 @serial_in(%struct.uart_sio_port* %84, i32 %85)
  %87 = load i32, i32* @UART_LSR_THRE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %83

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %4, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %50, label %97

97:                                               ; preds = %93, %81
  %98 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %99 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %98)
  %100 = load i64, i64* @WAKEUP_CHARS, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %104 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %103, i32 0, i32 0
  %105 = call i32 @uart_write_wakeup(%struct.TYPE_8__* %104)
  br label %106

106:                                              ; preds = %102, %97
  %107 = call i32 @DEBUG_INTR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %108 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %109 = call i64 @uart_circ_empty(%struct.circ_buf* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %113 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %112, i32 0, i32 0
  %114 = call i32 @m32r_sio_stop_tx(%struct.TYPE_8__* %113)
  br label %115

115:                                              ; preds = %15, %41, %111, %106
  ret void
}

declare dso_local i32 @serial_out(%struct.uart_sio_port*, i32, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_8__*) #1

declare dso_local i32 @m32r_sio_stop_tx(%struct.TYPE_8__*) #1

declare dso_local i32 @serial_in(%struct.uart_sio_port*, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_8__*) #1

declare dso_local i32 @DEBUG_INTR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
