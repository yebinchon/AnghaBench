; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsu.c_sunsu_serial_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsu.c_sunsu_serial_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sunsu_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tty_struct = type { i32 }

@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i8 0, align 1
@UART_LSR_THRE = common dso_local global i8 0, align 1
@UART_IIR = common dso_local global i32 0, align 4
@UART_IIR_NO_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sunsu_serial_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunsu_serial_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_sunsu_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.tty_struct*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.uart_sunsu_port*
  store %struct.uart_sunsu_port* %10, %struct.uart_sunsu_port** %5, align 8
  %11 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %12 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  br label %16

16:                                               ; preds = %58, %2
  %17 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %18 = load i32, i32* @UART_LSR, align 4
  %19 = call zeroext i8 @serial_inp(%struct.uart_sunsu_port* %17, i32 %18)
  store i8 %19, i8* %7, align 1
  store %struct.tty_struct* null, %struct.tty_struct** %8, align 8
  %20 = load i8, i8* %7, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @UART_LSR_DR, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %28 = call %struct.tty_struct* @receive_chars(%struct.uart_sunsu_port* %27, i8* %7)
  store %struct.tty_struct* %28, %struct.tty_struct** %8, align 8
  br label %29

29:                                               ; preds = %26, %16
  %30 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %31 = call i32 @check_modem_status(%struct.uart_sunsu_port* %30)
  %32 = load i8, i8* %7, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @UART_LSR_THRE, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %40 = call i32 @transmit_chars(%struct.uart_sunsu_port* %39)
  br label %41

41:                                               ; preds = %38, %29
  %42 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %43 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %48 = icmp ne %struct.tty_struct* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %51 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %50)
  br label %52

52:                                               ; preds = %49, %41
  %53 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %54 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  br label %58

58:                                               ; preds = %52
  %59 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %60 = load i32, i32* @UART_IIR, align 4
  %61 = call i32 @serial_in(%struct.uart_sunsu_port* %59, i32 %60)
  %62 = load i32, i32* @UART_IIR_NO_INT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br i1 %65, label %16, label %66

66:                                               ; preds = %58
  %67 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %5, align 8
  %68 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %72
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @serial_inp(%struct.uart_sunsu_port*, i32) #1

declare dso_local %struct.tty_struct* @receive_chars(%struct.uart_sunsu_port*, i8*) #1

declare dso_local i32 @check_modem_status(%struct.uart_sunsu_port*) #1

declare dso_local i32 @transmit_chars(%struct.uart_sunsu_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i32 @serial_in(%struct.uart_sunsu_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
