; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_throttle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__*, %struct.sdio_uart_port* }
%struct.TYPE_2__ = type { i32 }
%struct.sdio_uart_port = type { i32, i32 }

@CRTSCTS = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @sdio_uart_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_uart_throttle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.sdio_uart_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 1
  %6 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  store %struct.sdio_uart_port* %6, %struct.sdio_uart_port** %3, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = call i64 @I_IXOFF(%struct.tty_struct* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CRTSCTS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %56

20:                                               ; preds = %10, %1
  %21 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %22 = call i64 @sdio_uart_claim_func(%struct.sdio_uart_port* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %56

25:                                               ; preds = %20
  %26 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %27 = call i64 @I_IXOFF(%struct.tty_struct* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %31 = call i32 @STOP_CHAR(%struct.tty_struct* %30)
  %32 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %33 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %35 = call i32 @sdio_uart_start_tx(%struct.sdio_uart_port* %34)
  br label %36

36:                                               ; preds = %29, %25
  %37 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %38 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CRTSCTS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %47 = load i32, i32* @TIOCM_RTS, align 4
  %48 = call i32 @sdio_uart_clear_mctrl(%struct.sdio_uart_port* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %36
  %50 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %51 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sdio_uart_irq(i32 %52)
  %54 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %55 = call i32 @sdio_uart_release_func(%struct.sdio_uart_port* %54)
  br label %56

56:                                               ; preds = %49, %24, %19
  ret void
}

declare dso_local i64 @I_IXOFF(%struct.tty_struct*) #1

declare dso_local i64 @sdio_uart_claim_func(%struct.sdio_uart_port*) #1

declare dso_local i32 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @sdio_uart_start_tx(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_uart_clear_mctrl(%struct.sdio_uart_port*, i32) #1

declare dso_local i32 @sdio_uart_irq(i32) #1

declare dso_local i32 @sdio_uart_release_func(%struct.sdio_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
