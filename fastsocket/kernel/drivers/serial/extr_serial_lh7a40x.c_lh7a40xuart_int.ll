; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_lh7a40x.c_lh7a40xuart_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_lh7a40x.c_lh7a40xuart_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@ISR_LOOP_LIMIT = common dso_local global i32 0, align 4
@UART_R_ISR = common dso_local global i32 0, align 4
@RxInt = common dso_local global i32 0, align 4
@RxTimeoutInt = common dso_local global i32 0, align 4
@ModemInt = common dso_local global i32 0, align 4
@TxInt = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lh7a40xuart_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lh7a40xuart_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.uart_port*
  store %struct.uart_port* %9, %struct.uart_port** %5, align 8
  %10 = load i32, i32* @ISR_LOOP_LIMIT, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %12 = load i32, i32* @UART_R_ISR, align 4
  %13 = call i32 @UR(%struct.uart_port* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %49, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @RxInt, align 4
  %17 = load i32, i32* @RxTimeoutInt, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %23 = call i32 @lh7a40xuart_rx_chars(%struct.uart_port* %22)
  br label %24

24:                                               ; preds = %21, %14
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ModemInt, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %31 = call i32 @lh7a40xuart_modem_status(%struct.uart_port* %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @TxInt, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %39 = call i32 @lh7a40xuart_tx_chars(%struct.uart_port* %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, -1
  store i32 %42, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %58

45:                                               ; preds = %40
  %46 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %47 = load i32, i32* @UART_R_ISR, align 4
  %48 = call i32 @UR(%struct.uart_port* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @RxInt, align 4
  %52 = load i32, i32* @TxInt, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @RxTimeoutInt, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %50, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %14, label %58

58:                                               ; preds = %49, %44
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %59
}

declare dso_local i32 @UR(%struct.uart_port*, i32) #1

declare dso_local i32 @lh7a40xuart_rx_chars(%struct.uart_port*) #1

declare dso_local i32 @lh7a40xuart_modem_status(%struct.uart_port*) #1

declare dso_local i32 @lh7a40xuart_tx_chars(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
