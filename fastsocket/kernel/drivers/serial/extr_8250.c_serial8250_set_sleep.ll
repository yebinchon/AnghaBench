; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_set_sleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_set_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32 }

@UART_CAP_SLEEP = common dso_local global i32 0, align 4
@UART_CAP_EFR = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_EFR = common dso_local global i32 0, align 4
@UART_EFR_ECB = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_IERX_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*, i32)* @serial8250_set_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_set_sleep(%struct.uart_8250_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %6 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @UART_CAP_SLEEP, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %57

11:                                               ; preds = %2
  %12 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @UART_CAP_EFR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %20 = load i32, i32* @UART_LCR, align 4
  %21 = call i32 @serial_outp(%struct.uart_8250_port* %19, i32 %20, i32 191)
  %22 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %23 = load i32, i32* @UART_EFR, align 4
  %24 = load i32, i32* @UART_EFR_ECB, align 4
  %25 = call i32 @serial_outp(%struct.uart_8250_port* %22, i32 %23, i32 %24)
  %26 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %27 = load i32, i32* @UART_LCR, align 4
  %28 = call i32 @serial_outp(%struct.uart_8250_port* %26, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %18, %11
  %30 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %31 = load i32, i32* @UART_IER, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @UART_IERX_SLEEP, align 4
  br label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = call i32 @serial_outp(%struct.uart_8250_port* %30, i32 %31, i32 %38)
  %40 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %41 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UART_CAP_EFR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %37
  %47 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %48 = load i32, i32* @UART_LCR, align 4
  %49 = call i32 @serial_outp(%struct.uart_8250_port* %47, i32 %48, i32 191)
  %50 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %51 = load i32, i32* @UART_EFR, align 4
  %52 = call i32 @serial_outp(%struct.uart_8250_port* %50, i32 %51, i32 0)
  %53 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %54 = load i32, i32* @UART_LCR, align 4
  %55 = call i32 @serial_outp(%struct.uart_8250_port* %53, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %46, %37
  br label %57

57:                                               ; preds = %56, %2
  ret void
}

declare dso_local i32 @serial_outp(%struct.uart_8250_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
