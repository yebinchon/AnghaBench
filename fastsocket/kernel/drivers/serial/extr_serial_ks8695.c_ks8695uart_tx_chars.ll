; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_ks8695.c_ks8695uart_tx_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_ks8695.c_ks8695uart_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ks8695uart_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8695uart_tx_chars(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.circ_buf*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.uart_port*
  store %struct.uart_port* %10, %struct.uart_port** %6, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.circ_buf* %14, %struct.circ_buf** %7, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = call i32 (...) @KS8695_CLR_TX_INT()
  %21 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %22 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @UART_PUT_CHAR(%struct.uart_port* %21, i64 %24)
  %26 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %33, i32* %3, align 4
  br label %101

34:                                               ; preds = %2
  %35 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %36 = call i64 @uart_tx_stopped(%struct.uart_port* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %40 = call i64 @uart_circ_empty(%struct.circ_buf* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %34
  %43 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %44 = call i32 @ks8695uart_stop_tx(%struct.uart_port* %43)
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %45, i32* %3, align 4
  br label %101

46:                                               ; preds = %38
  store i32 16, i32* %8, align 4
  br label %47

47:                                               ; preds = %57, %46
  %48 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %49 = call i64 @uart_circ_empty(%struct.circ_buf* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %8, align 4
  %54 = icmp ugt i32 %52, 0
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i1 [ false, %47 ], [ %54, %51 ]
  br i1 %56, label %57, label %84

57:                                               ; preds = %55
  %58 = call i32 (...) @KS8695_CLR_TX_INT()
  %59 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %60 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %61 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %64 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @UART_PUT_CHAR(%struct.uart_port* %59, i64 %67)
  %69 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %70 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, 1
  %73 = load i32, i32* @UART_XMIT_SIZE, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = and i64 %72, %75
  %77 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %78 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %80 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  br label %47

84:                                               ; preds = %55
  %85 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %86 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %85)
  %87 = load i64, i64* @WAKEUP_CHARS, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %91 = call i32 @uart_write_wakeup(%struct.uart_port* %90)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %94 = call i64 @uart_circ_empty(%struct.circ_buf* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %98 = call i32 @ks8695uart_stop_tx(%struct.uart_port* %97)
  br label %99

99:                                               ; preds = %96, %92
  %100 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %42, %19
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @KS8695_CLR_TX_INT(...) #1

declare dso_local i32 @UART_PUT_CHAR(%struct.uart_port*, i64) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @ks8695uart_stop_tx(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
