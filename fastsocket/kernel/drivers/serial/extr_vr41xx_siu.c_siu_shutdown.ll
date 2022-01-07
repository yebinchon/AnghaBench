; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_vr41xx_siu.c_siu_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_vr41xx_siu.c_siu_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32, i32, i32 }

@UART_IER = common dso_local global i32 0, align 4
@TIOCM_OUT2 = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_SBC = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@PORT_VR41XX_DSIU = common dso_local global i64 0, align 8
@DSIUINT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @siu_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siu_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = load i32, i32* @UART_IER, align 4
  %7 = call i32 @siu_write(%struct.uart_port* %5, i32 %6, i32 0)
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 2
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* @TIOCM_OUT2, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @siu_set_mctrl(%struct.uart_port* %18, i32 %21)
  %23 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 2
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %28 = load i32, i32* @UART_LCR, align 4
  %29 = call i32 @siu_read(%struct.uart_port* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @UART_LCR_SBC, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = load i32, i32* @UART_LCR, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @siu_write(%struct.uart_port* %34, i32 %35, i32 %36)
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = call i32 @siu_clear_fifo(%struct.uart_port* %38)
  %40 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %41 = load i32, i32* @UART_RX, align 4
  %42 = call i32 @siu_read(%struct.uart_port* %40, i32 %41)
  %43 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PORT_VR41XX_DSIU, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %1
  %49 = load i32, i32* @DSIUINT_ALL, align 4
  %50 = call i32 @vr41xx_disable_dsiuint(i32 %49)
  br label %51

51:                                               ; preds = %48, %1
  %52 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %56 = call i32 @free_irq(i32 %54, %struct.uart_port* %55)
  ret void
}

declare dso_local i32 @siu_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @siu_set_mctrl(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @siu_read(%struct.uart_port*, i32) #1

declare dso_local i32 @siu_clear_fifo(%struct.uart_port*) #1

declare dso_local i32 @vr41xx_disable_dsiuint(i32) #1

declare dso_local i32 @free_irq(i32, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
