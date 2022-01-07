; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mcf.c_mcf_tx_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mcf.c_mcf_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcf_uart = type { i64, %struct.uart_port }
%struct.uart_port = type { i64, %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64, i64* }

@MCFUART_UTB = common dso_local global i64 0, align 8
@MCFUART_USR = common dso_local global i64 0, align 8
@MCFUART_USR_TXREADY = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@MCFUART_UIR_TXREADY = common dso_local global i64 0, align 8
@MCFUART_UIMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcf_uart*)* @mcf_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcf_tx_chars(%struct.mcf_uart* %0) #0 {
  %2 = alloca %struct.mcf_uart*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  store %struct.mcf_uart* %0, %struct.mcf_uart** %2, align 8
  %5 = load %struct.mcf_uart*, %struct.mcf_uart** %2, align 8
  %6 = getelementptr inbounds %struct.mcf_uart, %struct.mcf_uart* %5, i32 0, i32 1
  store %struct.uart_port* %6, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.circ_buf* %10, %struct.circ_buf** %4, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MCFUART_UTB, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writeb(i64 %18, i64 %23)
  %25 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  br label %114

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %52, %32
  %34 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MCFUART_USR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readb(i64 %38)
  %40 = load i32, i32* @MCFUART_USR_TXREADY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %33
  %44 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %45 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %48 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %82

52:                                               ; preds = %43
  %53 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %54 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %57 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %62 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MCFUART_UTB, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writeb(i64 %60, i64 %65)
  %67 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %68 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  %71 = load i32, i32* @UART_XMIT_SIZE, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = and i64 %70, %73
  %75 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %76 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %78 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  br label %33

82:                                               ; preds = %51, %33
  %83 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %84 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %83)
  %85 = load i64, i64* @WAKEUP_CHARS, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %89 = call i32 @uart_write_wakeup(%struct.uart_port* %88)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %92 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %95 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %93, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %90
  %99 = load i64, i64* @MCFUART_UIR_TXREADY, align 8
  %100 = xor i64 %99, -1
  %101 = load %struct.mcf_uart*, %struct.mcf_uart** %2, align 8
  %102 = getelementptr inbounds %struct.mcf_uart, %struct.mcf_uart* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = and i64 %103, %100
  store i64 %104, i64* %102, align 8
  %105 = load %struct.mcf_uart*, %struct.mcf_uart** %2, align 8
  %106 = getelementptr inbounds %struct.mcf_uart, %struct.mcf_uart* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %109 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @MCFUART_UIMR, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @writeb(i64 %107, i64 %112)
  br label %114

114:                                              ; preds = %15, %98, %90
  ret void
}

declare dso_local i32 @writeb(i64, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
