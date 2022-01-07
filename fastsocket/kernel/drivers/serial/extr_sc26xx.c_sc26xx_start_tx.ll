; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sc26xx.c_sc26xx_start_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sc26xx.c_sc26xx_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i32* }

@SR = common dso_local global i32 0, align 4
@SR_TXRDY = common dso_local global i32 0, align 4
@IMR_TXRDY = common dso_local global i32 0, align 4
@THR = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sc26xx_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc26xx_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store %struct.circ_buf* %7, %struct.circ_buf** %3, align 8
  br label %8

8:                                                ; preds = %24, %1
  %9 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %10 = call i32 @uart_circ_empty(%struct.circ_buf* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %51

13:                                               ; preds = %8
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = load i32, i32* @SR, align 4
  %16 = call i32 @READ_SC_PORT(%struct.uart_port* %14, i32 %15)
  %17 = load i32, i32* @SR_TXRDY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = load i32, i32* @IMR_TXRDY, align 4
  %23 = call i32 @sc26xx_enable_irq(%struct.uart_port* %21, i32 %22)
  br label %51

24:                                               ; preds = %13
  %25 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %26 = load i32, i32* @THR, align 4
  %27 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %28 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %31 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @WRITE_SC_PORT(%struct.uart_port* %25, i32 %26, i32 %34)
  %36 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %37 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  %40 = load i32, i32* @UART_XMIT_SIZE, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = and i64 %39, %42
  %44 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %45 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  br label %8

51:                                               ; preds = %20, %8
  ret void
}

declare dso_local i32 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @READ_SC_PORT(%struct.uart_port*, i32) #1

declare dso_local i32 @sc26xx_enable_irq(%struct.uart_port*, i32) #1

declare dso_local i32 @WRITE_SC_PORT(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
