; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_clps711x.c_clps711xuart_int_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_clps711x.c_clps711xuart_int_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @clps711xuart_int_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clps711xuart_int_tx(i32 %0, i8* %1) #0 {
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
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.circ_buf* %14, %struct.circ_buf** %7, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %24 = call i32 @UARTDR(%struct.uart_port* %23)
  %25 = call i32 @clps_writel(i64 %22, i32 %24)
  %26 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %33, i32* %3, align 4
  br label %104

34:                                               ; preds = %2
  %35 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %36 = call i64 @uart_circ_empty(%struct.circ_buf* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %40 = call i64 @uart_tx_stopped(%struct.uart_port* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %34
  %43 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %44 = call i32 @clps711xuart_stop_tx(%struct.uart_port* %43)
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %45, i32* %3, align 4
  br label %104

46:                                               ; preds = %38
  %47 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %83, %46
  %52 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %53 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %56 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %61 = call i32 @UARTDR(%struct.uart_port* %60)
  %62 = call i32 @clps_writel(i64 %59, i32 %61)
  %63 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %64 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  %67 = load i32, i32* @UART_XMIT_SIZE, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = and i64 %66, %69
  %71 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %72 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %79 = call i64 @uart_circ_empty(%struct.circ_buf* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %51
  br label %87

82:                                               ; preds = %51
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %8, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %51, label %87

87:                                               ; preds = %83, %81
  %88 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %89 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %88)
  %90 = load i64, i64* @WAKEUP_CHARS, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %94 = call i32 @uart_write_wakeup(%struct.uart_port* %93)
  br label %95

95:                                               ; preds = %92, %87
  %96 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %97 = call i64 @uart_circ_empty(%struct.circ_buf* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %101 = call i32 @clps711xuart_stop_tx(%struct.uart_port* %100)
  br label %102

102:                                              ; preds = %99, %95
  %103 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %42, %19
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @clps_writel(i64, i32) #1

declare dso_local i32 @UARTDR(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @clps711xuart_stop_tx(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
