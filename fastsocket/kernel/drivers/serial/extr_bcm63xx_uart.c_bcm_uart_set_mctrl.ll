; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_bcm63xx_uart.c_bcm_uart_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_bcm63xx_uart.c_bcm_uart_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@UART_MCTL_REG = common dso_local global i32 0, align 4
@UART_MCTL_DTR_MASK = common dso_local global i32 0, align 4
@UART_MCTL_RTS_MASK = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@UART_CTL_REG = common dso_local global i32 0, align 4
@TIOCM_LOOP = common dso_local global i32 0, align 4
@UART_CTL_LOOPBACK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @bcm_uart_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_uart_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = load i32, i32* @UART_MCTL_REG, align 4
  %8 = call i32 @bcm_uart_readl(%struct.uart_port* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @UART_MCTL_DTR_MASK, align 4
  %10 = load i32, i32* @UART_MCTL_RTS_MASK, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @TIOCM_DTR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @UART_MCTL_DTR_MASK, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @TIOCM_RTS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @UART_MCTL_RTS_MASK, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @UART_MCTL_REG, align 4
  %36 = call i32 @bcm_uart_writel(%struct.uart_port* %33, i32 %34, i32 %35)
  %37 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %38 = load i32, i32* @UART_CTL_REG, align 4
  %39 = call i32 @bcm_uart_readl(%struct.uart_port* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @TIOCM_LOOP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load i32, i32* @UART_CTL_LOOPBACK_MASK, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %53

48:                                               ; preds = %32
  %49 = load i32, i32* @UART_CTL_LOOPBACK_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @UART_CTL_REG, align 4
  %57 = call i32 @bcm_uart_writel(%struct.uart_port* %54, i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @bcm_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i32 @bcm_uart_writel(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
