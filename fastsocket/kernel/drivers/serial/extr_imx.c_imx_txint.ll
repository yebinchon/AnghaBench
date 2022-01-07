; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_txint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_txint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32 }

@URTX0 = common dso_local global i64 0, align 8
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @imx_txint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_txint(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.imx_port*, align 8
  %6 = alloca %struct.circ_buf*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.imx_port*
  store %struct.imx_port* %9, %struct.imx_port** %5, align 8
  %10 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %11 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.circ_buf* %14, %struct.circ_buf** %6, align 8
  %15 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %16 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %21 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %2
  %26 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %27 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %31 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @URTX0, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i64 %29, i64 %35)
  br label %62

37:                                               ; preds = %2
  %38 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %39 = call i64 @uart_circ_empty(%struct.circ_buf* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %43 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %42, i32 0, i32 0
  %44 = call i64 @uart_tx_stopped(%struct.TYPE_6__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41, %37
  %47 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %48 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %47, i32 0, i32 0
  %49 = call i32 @imx_stop_tx(%struct.TYPE_6__* %48)
  br label %62

50:                                               ; preds = %41
  %51 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %52 = call i32 @imx_transmit_buffer(%struct.imx_port* %51)
  %53 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %54 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %53)
  %55 = load i64, i64* @WAKEUP_CHARS, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %59 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %58, i32 0, i32 0
  %60 = call i32 @uart_write_wakeup(%struct.TYPE_6__* %59)
  br label %61

61:                                               ; preds = %57, %50
  br label %62

62:                                               ; preds = %61, %46, %25
  %63 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %64 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_6__*) #1

declare dso_local i32 @imx_stop_tx(%struct.TYPE_6__*) #1

declare dso_local i32 @imx_transmit_buffer(%struct.imx_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
