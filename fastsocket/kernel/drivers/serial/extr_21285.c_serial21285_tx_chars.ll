; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_21285.c_serial21285_tx_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_21285.c_serial21285_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@CSR_UARTDR = common dso_local global i64* null, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@CSR_UARTFLG = common dso_local global i32* null, align 8
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @serial21285_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial21285_tx_chars(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.circ_buf*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.uart_port*
  store %struct.uart_port* %9, %struct.uart_port** %5, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.circ_buf* %13, %struct.circ_buf** %6, align 8
  store i32 256, i32* %7, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** @CSR_UARTDR, align 8
  store i64 %21, i64* %22, align 8
  %23 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  br label %100

30:                                               ; preds = %2
  %31 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %32 = call i64 @uart_circ_empty(%struct.circ_buf* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %36 = call i64 @uart_tx_stopped(%struct.uart_port* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %30
  %39 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %40 = call i32 @serial21285_stop_tx(%struct.uart_port* %39)
  br label %100

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %82, %41
  %43 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %44 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %47 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** @CSR_UARTDR, align 8
  store i64 %50, i64* %51, align 8
  %52 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %53 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  %56 = load i32, i32* @UART_XMIT_SIZE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = and i64 %55, %58
  %60 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %61 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %68 = call i64 @uart_circ_empty(%struct.circ_buf* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %42
  br label %84

71:                                               ; preds = %42
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %7, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32*, i32** @CSR_UARTFLG, align 8
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 32
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br label %82

82:                                               ; preds = %76, %72
  %83 = phi i1 [ false, %72 ], [ %81, %76 ]
  br i1 %83, label %42, label %84

84:                                               ; preds = %82, %70
  %85 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %86 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %85)
  %87 = load i64, i64* @WAKEUP_CHARS, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %91 = call i32 @uart_write_wakeup(%struct.uart_port* %90)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %94 = call i64 @uart_circ_empty(%struct.circ_buf* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %98 = call i32 @serial21285_stop_tx(%struct.uart_port* %97)
  br label %99

99:                                               ; preds = %96, %92
  br label %100

100:                                              ; preds = %99, %38, %18
  %101 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %101
}

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @serial21285_stop_tx(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
