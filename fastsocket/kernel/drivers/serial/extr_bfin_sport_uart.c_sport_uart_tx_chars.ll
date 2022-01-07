; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_bfin_sport_uart.c_sport_uart_tx_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_bfin_sport_uart.c_sport_uart_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sport_uart_port = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@TXF = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sport_uart_port*)* @sport_uart_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sport_uart_tx_chars(%struct.sport_uart_port* %0) #0 {
  %2 = alloca %struct.sport_uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  store %struct.sport_uart_port* %0, %struct.sport_uart_port** %2, align 8
  %4 = load %struct.sport_uart_port*, %struct.sport_uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.sport_uart_port, %struct.sport_uart_port* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store %struct.circ_buf* %8, %struct.circ_buf** %3, align 8
  %9 = load %struct.sport_uart_port*, %struct.sport_uart_port** %2, align 8
  %10 = call i32 @SPORT_GET_STAT(%struct.sport_uart_port* %9)
  %11 = load i32, i32* @TXF, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %100

15:                                               ; preds = %1
  %16 = load %struct.sport_uart_port*, %struct.sport_uart_port** %2, align 8
  %17 = getelementptr inbounds %struct.sport_uart_port, %struct.sport_uart_port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.sport_uart_port*, %struct.sport_uart_port** %2, align 8
  %23 = load %struct.sport_uart_port*, %struct.sport_uart_port** %2, align 8
  %24 = getelementptr inbounds %struct.sport_uart_port, %struct.sport_uart_port* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @tx_one_byte(%struct.sport_uart_port* %22, i64 %26)
  %28 = load %struct.sport_uart_port*, %struct.sport_uart_port** %2, align 8
  %29 = getelementptr inbounds %struct.sport_uart_port, %struct.sport_uart_port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.sport_uart_port*, %struct.sport_uart_port** %2, align 8
  %35 = getelementptr inbounds %struct.sport_uart_port, %struct.sport_uart_port* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  br label %100

37:                                               ; preds = %15
  %38 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %39 = call i64 @uart_circ_empty(%struct.circ_buf* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load %struct.sport_uart_port*, %struct.sport_uart_port** %2, align 8
  %43 = getelementptr inbounds %struct.sport_uart_port, %struct.sport_uart_port* %42, i32 0, i32 0
  %44 = call i64 @uart_tx_stopped(%struct.TYPE_8__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41, %37
  %47 = load %struct.sport_uart_port*, %struct.sport_uart_port** %2, align 8
  %48 = getelementptr inbounds %struct.sport_uart_port, %struct.sport_uart_port* %47, i32 0, i32 0
  %49 = call i32 @sport_stop_tx(%struct.TYPE_8__* %48)
  br label %100

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %64, %50
  %52 = load %struct.sport_uart_port*, %struct.sport_uart_port** %2, align 8
  %53 = call i32 @SPORT_GET_STAT(%struct.sport_uart_port* %52)
  %54 = load i32, i32* @TXF, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %59 = call i64 @uart_circ_empty(%struct.circ_buf* %58)
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %57, %51
  %63 = phi i1 [ false, %51 ], [ %61, %57 ]
  br i1 %63, label %64, label %91

64:                                               ; preds = %62
  %65 = load %struct.sport_uart_port*, %struct.sport_uart_port** %2, align 8
  %66 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %67 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %70 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @tx_one_byte(%struct.sport_uart_port* %65, i64 %73)
  %75 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %76 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, 1
  %79 = load i32, i32* @UART_XMIT_SIZE, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = and i64 %78, %81
  %83 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %84 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.sport_uart_port*, %struct.sport_uart_port** %2, align 8
  %86 = getelementptr inbounds %struct.sport_uart_port, %struct.sport_uart_port* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %51

91:                                               ; preds = %62
  %92 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %93 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %92)
  %94 = load i64, i64* @WAKEUP_CHARS, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.sport_uart_port*, %struct.sport_uart_port** %2, align 8
  %98 = getelementptr inbounds %struct.sport_uart_port, %struct.sport_uart_port* %97, i32 0, i32 0
  %99 = call i32 @uart_write_wakeup(%struct.TYPE_8__* %98)
  br label %100

100:                                              ; preds = %14, %21, %46, %96, %91
  ret void
}

declare dso_local i32 @SPORT_GET_STAT(%struct.sport_uart_port*) #1

declare dso_local i32 @tx_one_byte(%struct.sport_uart_port*, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_8__*) #1

declare dso_local i32 @sport_stop_tx(%struct.TYPE_8__*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
