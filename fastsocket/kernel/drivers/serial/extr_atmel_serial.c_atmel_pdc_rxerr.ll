; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_pdc_rxerr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_pdc_rxerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@ATMEL_US_RSTSTA = common dso_local global i32 0, align 4
@ATMEL_US_RXBRK = common dso_local global i32 0, align 4
@ATMEL_US_PARE = common dso_local global i32 0, align 4
@ATMEL_US_FRAME = common dso_local global i32 0, align 4
@ATMEL_US_OVRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @atmel_pdc_rxerr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_pdc_rxerr(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %6 = load i32, i32* @ATMEL_US_RSTSTA, align 4
  %7 = call i32 @UART_PUT_CR(%struct.uart_port* %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load i32, i32* @ATMEL_US_PARE, align 4
  %14 = load i32, i32* @ATMEL_US_FRAME, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %12, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ATMEL_US_PARE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %24
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ATMEL_US_FRAME, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %35
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @ATMEL_US_OVRE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %46
  ret void
}

declare dso_local i32 @UART_PUT_CR(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
