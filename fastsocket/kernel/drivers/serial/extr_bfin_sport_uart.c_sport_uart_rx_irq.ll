; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_bfin_sport_uart.c_sport_uart_rx_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_bfin_sport_uart.c_sport_uart_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sport_uart_port = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@TTY_NORMAL = common dso_local global i32 0, align 4
@RXNE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sport_uart_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sport_uart_rx_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sport_uart_port*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sport_uart_port*
  store %struct.sport_uart_port* %9, %struct.sport_uart_port** %5, align 8
  %10 = load %struct.sport_uart_port*, %struct.sport_uart_port** %5, align 8
  %11 = getelementptr inbounds %struct.sport_uart_port, %struct.sport_uart_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.tty_struct*, %struct.tty_struct** %15, align 8
  store %struct.tty_struct* %16, %struct.tty_struct** %6, align 8
  br label %17

17:                                               ; preds = %38, %2
  %18 = load %struct.sport_uart_port*, %struct.sport_uart_port** %5, align 8
  %19 = call i32 @rx_one_byte(%struct.sport_uart_port* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.sport_uart_port*, %struct.sport_uart_port** %5, align 8
  %21 = getelementptr inbounds %struct.sport_uart_port, %struct.sport_uart_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.sport_uart_port*, %struct.sport_uart_port** %5, align 8
  %27 = getelementptr inbounds %struct.sport_uart_port, %struct.sport_uart_port* %26, i32 0, i32 0
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @uart_handle_sysrq_char(%struct.TYPE_8__* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %37

32:                                               ; preds = %17
  %33 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @TTY_NORMAL, align 4
  %36 = call i32 @tty_insert_flip_char(%struct.tty_struct* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %31
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.sport_uart_port*, %struct.sport_uart_port** %5, align 8
  %40 = call i32 @SPORT_GET_STAT(%struct.sport_uart_port* %39)
  %41 = load i32, i32* @RXNE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %17, label %44

44:                                               ; preds = %38
  %45 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %46 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %45)
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %47
}

declare dso_local i32 @rx_one_byte(%struct.sport_uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @SPORT_GET_STAT(%struct.sport_uart_port*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
