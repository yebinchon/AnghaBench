; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sc26xx.c_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sc26xx.c_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i32* }

@IMR_TXRDY = common dso_local global i32 0, align 4
@SR = common dso_local global i32 0, align 4
@SR_TXRDY = common dso_local global i32 0, align 4
@THR = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %74

9:                                                ; preds = %1
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.circ_buf* %13, %struct.circ_buf** %3, align 8
  %14 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %15 = call i64 @uart_circ_empty(%struct.circ_buf* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = call i64 @uart_tx_stopped(%struct.uart_port* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %9
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = load i32, i32* @IMR_TXRDY, align 4
  %24 = call i32 @sc26xx_disable_irq(%struct.uart_port* %22, i32 %23)
  br label %74

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %39, %25
  %27 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %28 = call i64 @uart_circ_empty(%struct.circ_buf* %27)
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %66

31:                                               ; preds = %26
  %32 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %33 = load i32, i32* @SR, align 4
  %34 = call i32 @READ_SC_PORT(%struct.uart_port* %32, i32 %33)
  %35 = load i32, i32* @SR_TXRDY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %66

39:                                               ; preds = %31
  %40 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %41 = load i32, i32* @THR, align 4
  %42 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %43 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %46 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @WRITE_SC_PORT(%struct.uart_port* %40, i32 %41, i32 %49)
  %51 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %52 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  %55 = load i32, i32* @UART_XMIT_SIZE, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = and i64 %54, %57
  %59 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %60 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %62 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  br label %26

66:                                               ; preds = %38, %26
  %67 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %68 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %67)
  %69 = load i64, i64* @WAKEUP_CHARS, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %73 = call i32 @uart_write_wakeup(%struct.uart_port* %72)
  br label %74

74:                                               ; preds = %8, %21, %71, %66
  ret void
}

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @sc26xx_disable_irq(%struct.uart_port*, i32) #1

declare dso_local i32 @READ_SC_PORT(%struct.uart_port*, i32) #1

declare dso_local i32 @WRITE_SC_PORT(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
