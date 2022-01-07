; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_uart_port = type { %struct.TYPE_4__*, %struct.TYPE_3__, i64, %struct.circ_buf }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.circ_buf = type { i64, i64* }

@UART_TX = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_uart_port*)* @sdio_uart_transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_uart_transmit_chars(%struct.sdio_uart_port* %0) #0 {
  %2 = alloca %struct.sdio_uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  store %struct.sdio_uart_port* %0, %struct.sdio_uart_port** %2, align 8
  %5 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %5, i32 0, i32 3
  store %struct.circ_buf* %6, %struct.circ_buf** %3, align 8
  %7 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %8 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %13 = load i32, i32* @UART_TX, align 4
  %14 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %15 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @sdio_out(%struct.sdio_uart_port* %12, i32 %13, i64 %16)
  %18 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %19 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %24 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  br label %100

25:                                               ; preds = %1
  %26 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %27 = call i64 @circ_empty(%struct.circ_buf* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %31 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %38 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36, %29, %25
  %44 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %45 = call i32 @sdio_uart_stop_tx(%struct.sdio_uart_port* %44)
  br label %100

46:                                               ; preds = %36
  store i32 16, i32* %4, align 4
  br label %47

47:                                               ; preds = %79, %46
  %48 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %49 = load i32, i32* @UART_TX, align 4
  %50 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %51 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %54 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @sdio_out(%struct.sdio_uart_port* %48, i32 %49, i64 %57)
  %59 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %60 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  %63 = load i32, i32* @UART_XMIT_SIZE, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = and i64 %62, %65
  %67 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %68 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %70 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %75 = call i64 @circ_empty(%struct.circ_buf* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %47
  br label %83

78:                                               ; preds = %47
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %4, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %47, label %83

83:                                               ; preds = %79, %77
  %84 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %85 = call i64 @circ_chars_pending(%struct.circ_buf* %84)
  %86 = load i64, i64* @WAKEUP_CHARS, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %90 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = call i32 @tty_wakeup(%struct.TYPE_4__* %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %95 = call i64 @circ_empty(%struct.circ_buf* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %99 = call i32 @sdio_uart_stop_tx(%struct.sdio_uart_port* %98)
  br label %100

100:                                              ; preds = %11, %43, %97, %93
  ret void
}

declare dso_local i32 @sdio_out(%struct.sdio_uart_port*, i32, i64) #1

declare dso_local i64 @circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @sdio_uart_stop_tx(%struct.sdio_uart_port*) #1

declare dso_local i64 @circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @tty_wakeup(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
