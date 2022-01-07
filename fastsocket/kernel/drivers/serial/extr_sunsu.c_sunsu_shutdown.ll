; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsu.c_sunsu_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsu.c_sunsu_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_sunsu_port = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@UART_IER = common dso_local global i32 0, align 4
@UPF_FOURPORT = common dso_local global i32 0, align 4
@TIOCM_OUT1 = common dso_local global i32 0, align 4
@TIOCM_OUT2 = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_SBC = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_XMIT = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sunsu_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunsu_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_sunsu_port*, align 8
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = bitcast %struct.uart_port* %5 to %struct.uart_sunsu_port*
  store %struct.uart_sunsu_port* %6, %struct.uart_sunsu_port** %3, align 8
  %7 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %10 = load i32, i32* @UART_IER, align 4
  %11 = call i32 @serial_outp(%struct.uart_sunsu_port* %9, i32 %10, i32 0)
  %12 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @UPF_FOURPORT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %1
  %25 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 4064
  %30 = or i32 %29, 31
  %31 = call i32 @inb(i32 %30)
  %32 = load i32, i32* @TIOCM_OUT1, align 4
  %33 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %34 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %32
  store i32 %37, i32* %35, align 8
  br label %46

38:                                               ; preds = %1
  %39 = load i32, i32* @TIOCM_OUT2, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %42 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %40
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %38, %24
  %47 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %48 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %47, i32 0, i32 0
  %49 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %50 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @sunsu_set_mctrl(%struct.TYPE_2__* %48, i32 %52)
  %54 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %55 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %60 = load i32, i32* @UART_LCR, align 4
  %61 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %62 = load i32, i32* @UART_LCR, align 4
  %63 = call i32 @serial_inp(%struct.uart_sunsu_port* %61, i32 %62)
  %64 = load i32, i32* @UART_LCR_SBC, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = call i32 @serial_out(%struct.uart_sunsu_port* %59, i32 %60, i32 %66)
  %68 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %69 = load i32, i32* @UART_FCR, align 4
  %70 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %71 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @serial_outp(%struct.uart_sunsu_port* %68, i32 %69, i32 %74)
  %76 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %77 = load i32, i32* @UART_FCR, align 4
  %78 = call i32 @serial_outp(%struct.uart_sunsu_port* %76, i32 %77, i32 0)
  %79 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %80 = load i32, i32* @UART_RX, align 4
  %81 = call i32 @serial_in(%struct.uart_sunsu_port* %79, i32 %80)
  %82 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %83 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %3, align 8
  %87 = call i32 @free_irq(i32 %85, %struct.uart_sunsu_port* %86)
  ret void
}

declare dso_local i32 @serial_outp(%struct.uart_sunsu_port*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @sunsu_set_mctrl(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @serial_out(%struct.uart_sunsu_port*, i32, i32) #1

declare dso_local i32 @serial_inp(%struct.uart_sunsu_port*, i32) #1

declare dso_local i32 @serial_in(%struct.uart_sunsu_port*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.uart_sunsu_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
