; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_msm_serial.c_msm_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_msm_serial.c_msm_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.msm_port = type { i32 }

@UART_MISR = common dso_local global i32 0, align 4
@UART_IMR = common dso_local global i32 0, align 4
@UART_IMR_RXLEV = common dso_local global i32 0, align 4
@UART_IMR_RXSTALE = common dso_local global i32 0, align 4
@UART_IMR_TXLEV = common dso_local global i32 0, align 4
@UART_IMR_DELTA_CTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @msm_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.msm_port*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.uart_port*
  store %struct.uart_port* %9, %struct.uart_port** %5, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %11 = call %struct.msm_port* @UART_TO_MSM(%struct.uart_port* %10)
  store %struct.msm_port* %11, %struct.msm_port** %6, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %16 = load i32, i32* @UART_MISR, align 4
  %17 = call i32 @msm_read(%struct.uart_port* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %19 = load i32, i32* @UART_IMR, align 4
  %20 = call i32 @msm_write(%struct.uart_port* %18, i32 0, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @UART_IMR_RXLEV, align 4
  %23 = load i32, i32* @UART_IMR_RXSTALE, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %29 = call i32 @handle_rx(%struct.uart_port* %28)
  br label %30

30:                                               ; preds = %27, %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @UART_IMR_TXLEV, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %37 = call i32 @handle_tx(%struct.uart_port* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @UART_IMR_DELTA_CTS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %45 = call i32 @handle_delta_cts(%struct.uart_port* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %48 = load %struct.msm_port*, %struct.msm_port** %6, align 8
  %49 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @UART_IMR, align 4
  %52 = call i32 @msm_write(%struct.uart_port* %47, i32 %50, i32 %51)
  %53 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %56
}

declare dso_local %struct.msm_port* @UART_TO_MSM(%struct.uart_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @msm_read(%struct.uart_port*, i32) #1

declare dso_local i32 @msm_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @handle_rx(%struct.uart_port*) #1

declare dso_local i32 @handle_tx(%struct.uart_port*) #1

declare dso_local i32 @handle_delta_cts(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
