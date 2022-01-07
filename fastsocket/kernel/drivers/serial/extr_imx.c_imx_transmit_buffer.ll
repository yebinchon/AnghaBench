; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_transmit_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_transmit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__, i64, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i32* }

@UTS = common dso_local global i64 0, align 8
@UTS_TXFULL = common dso_local global i32 0, align 4
@URTX0 = common dso_local global i64 0, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_port*)* @imx_transmit_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_transmit_buffer(%struct.imx_port* %0) #0 {
  %2 = alloca %struct.imx_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  store %struct.imx_port* %0, %struct.imx_port** %2, align 8
  %4 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %5 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store %struct.circ_buf* %8, %struct.circ_buf** %3, align 8
  br label %9

9:                                                ; preds = %57, %1
  %10 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %11 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @UTS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  %17 = load i32, i32* @UTS_TXFULL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %58

21:                                               ; preds = %9
  %22 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %23 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %26 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %31 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @URTX0, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %29, i64 %35)
  %37 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %38 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  %41 = load i32, i32* @UART_XMIT_SIZE, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = and i64 %40, %43
  %45 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %46 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %48 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %54 = call i64 @uart_circ_empty(%struct.circ_buf* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %21
  br label %58

57:                                               ; preds = %21
  br label %9

58:                                               ; preds = %56, %9
  %59 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %60 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %59)
  %61 = load i64, i64* @WAKEUP_CHARS, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %65 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %64, i32 0, i32 0
  %66 = call i32 @uart_write_wakeup(%struct.TYPE_7__* %65)
  br label %67

67:                                               ; preds = %63, %58
  %68 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %69 = call i64 @uart_circ_empty(%struct.circ_buf* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %73 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %72, i32 0, i32 0
  %74 = call i32 @imx_stop_tx(%struct.TYPE_7__* %73)
  br label %75

75:                                               ; preds = %71, %67
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_7__*) #1

declare dso_local i32 @imx_stop_tx(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
