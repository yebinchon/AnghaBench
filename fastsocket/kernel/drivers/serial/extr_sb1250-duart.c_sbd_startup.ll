; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sb1250-duart.c_sbd_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sb1250-duart.c_sbd_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sbd_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@sbd_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"sb1250-duart\00", align 1
@R_DUART_CMD = common dso_local global i32 0, align 4
@V_DUART_MISC_CMD_RESET_BREAK_INT = common dso_local global i32 0, align 4
@R_DUART_MODE_REG_1 = common dso_local global i32 0, align 4
@M_DUART_RX_IRQ_SEL_RXFULL = common dso_local global i32 0, align 4
@M_DUART_TX_IRQ_SEL_TXEMPT = common dso_local global i32 0, align 4
@M_DUART_TX_DIS = common dso_local global i32 0, align 4
@M_DUART_RX_EN = common dso_local global i32 0, align 4
@M_DUART_IMR_IN = common dso_local global i32 0, align 4
@M_DUART_IMR_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sbd_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbd_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.sbd_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.sbd_port* @to_sport(%struct.uart_port* %7)
  store %struct.sbd_port* %8, %struct.sbd_port** %4, align 8
  %9 = load %struct.sbd_port*, %struct.sbd_port** %4, align 8
  %10 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @sbd_interrupt, align 4
  %14 = load i32, i32* @IRQF_SHARED, align 4
  %15 = load %struct.sbd_port*, %struct.sbd_port** %4, align 8
  %16 = call i32 @request_irq(i32 %12, i32 %13, i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.sbd_port* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %66

21:                                               ; preds = %1
  %22 = load %struct.sbd_port*, %struct.sbd_port** %4, align 8
  %23 = call i32 @sbd_receive_drain(%struct.sbd_port* %22)
  %24 = load %struct.sbd_port*, %struct.sbd_port** %4, align 8
  %25 = load i32, i32* @R_DUART_CMD, align 4
  %26 = load i32, i32* @V_DUART_MISC_CMD_RESET_BREAK_INT, align 4
  %27 = call i32 @write_sbdchn(%struct.sbd_port* %24, i32 %25, i32 %26)
  %28 = load %struct.sbd_port*, %struct.sbd_port** %4, align 8
  %29 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %31, 2
  %33 = call i32 @R_DUART_INCHREG(i32 %32)
  %34 = call i32 @read_sbdshr(%struct.sbd_port* %28, i32 %33)
  %35 = load %struct.sbd_port*, %struct.sbd_port** %4, align 8
  %36 = load i32, i32* @R_DUART_MODE_REG_1, align 4
  %37 = call i32 @read_sbdchn(%struct.sbd_port* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @M_DUART_RX_IRQ_SEL_RXFULL, align 4
  %39 = load i32, i32* @M_DUART_TX_IRQ_SEL_TXEMPT, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.sbd_port*, %struct.sbd_port** %4, align 8
  %45 = load i32, i32* @R_DUART_MODE_REG_1, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @write_sbdchn(%struct.sbd_port* %44, i32 %45, i32 %46)
  %48 = load %struct.sbd_port*, %struct.sbd_port** %4, align 8
  %49 = load i32, i32* @R_DUART_CMD, align 4
  %50 = load i32, i32* @M_DUART_TX_DIS, align 4
  %51 = load i32, i32* @M_DUART_RX_EN, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @write_sbdchn(%struct.sbd_port* %48, i32 %49, i32 %52)
  %54 = load %struct.sbd_port*, %struct.sbd_port** %4, align 8
  %55 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.sbd_port*, %struct.sbd_port** %4, align 8
  %57 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = srem i32 %59, 2
  %61 = call i32 @R_DUART_IMRREG(i32 %60)
  %62 = load i32, i32* @M_DUART_IMR_IN, align 4
  %63 = load i32, i32* @M_DUART_IMR_RX, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @write_sbdshr(%struct.sbd_port* %56, i32 %61, i32 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %21, %19
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.sbd_port* @to_sport(%struct.uart_port*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.sbd_port*) #1

declare dso_local i32 @sbd_receive_drain(%struct.sbd_port*) #1

declare dso_local i32 @write_sbdchn(%struct.sbd_port*, i32, i32) #1

declare dso_local i32 @read_sbdshr(%struct.sbd_port*, i32) #1

declare dso_local i32 @R_DUART_INCHREG(i32) #1

declare dso_local i32 @read_sbdchn(%struct.sbd_port*, i32) #1

declare dso_local i32 @write_sbdshr(%struct.sbd_port*, i32, i32) #1

declare dso_local i32 @R_DUART_IMRREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
