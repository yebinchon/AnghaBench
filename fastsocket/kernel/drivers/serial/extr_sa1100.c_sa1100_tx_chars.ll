; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sa1100.c_sa1100_tx_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sa1100.c_sa1100_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100_port = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@UTSR1_TNF = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa1100_port*)* @sa1100_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100_tx_chars(%struct.sa1100_port* %0) #0 {
  %2 = alloca %struct.sa1100_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  store %struct.sa1100_port* %0, %struct.sa1100_port** %2, align 8
  %4 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %5 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store %struct.circ_buf* %8, %struct.circ_buf** %3, align 8
  %9 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %10 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %16 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %17 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @UART_PUT_CHAR(%struct.sa1100_port* %15, i64 %19)
  %21 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %22 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %28 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  br label %101

30:                                               ; preds = %1
  %31 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %32 = call i32 @sa1100_mctrl_check(%struct.sa1100_port* %31)
  %33 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %34 = call i64 @uart_circ_empty(%struct.circ_buf* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %38 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %37, i32 0, i32 0
  %39 = call i64 @uart_tx_stopped(%struct.TYPE_8__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %30
  %42 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %43 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %42, i32 0, i32 0
  %44 = call i32 @sa1100_stop_tx(%struct.TYPE_8__* %43)
  br label %101

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %83, %45
  %47 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %48 = call i32 @UART_GET_UTSR1(%struct.sa1100_port* %47)
  %49 = load i32, i32* @UTSR1_TNF, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %84

52:                                               ; preds = %46
  %53 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %54 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %55 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %58 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @UART_PUT_CHAR(%struct.sa1100_port* %53, i64 %61)
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
  %73 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %74 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %80 = call i64 @uart_circ_empty(%struct.circ_buf* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %52
  br label %84

83:                                               ; preds = %52
  br label %46

84:                                               ; preds = %82, %46
  %85 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %86 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %85)
  %87 = load i64, i64* @WAKEUP_CHARS, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %91 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %90, i32 0, i32 0
  %92 = call i32 @uart_write_wakeup(%struct.TYPE_8__* %91)
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %95 = call i64 @uart_circ_empty(%struct.circ_buf* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %99 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %98, i32 0, i32 0
  %100 = call i32 @sa1100_stop_tx(%struct.TYPE_8__* %99)
  br label %101

101:                                              ; preds = %14, %41, %97, %93
  ret void
}

declare dso_local i32 @UART_PUT_CHAR(%struct.sa1100_port*, i64) #1

declare dso_local i32 @sa1100_mctrl_check(%struct.sa1100_port*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_8__*) #1

declare dso_local i32 @sa1100_stop_tx(%struct.TYPE_8__*) #1

declare dso_local i32 @UART_GET_UTSR1(%struct.sa1100_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
