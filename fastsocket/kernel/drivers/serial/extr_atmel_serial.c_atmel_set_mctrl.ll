; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@ATMEL_US_RTSEN = common dso_local global i32 0, align 4
@ATMEL_US_RTSDIS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@ATMEL_US_DTREN = common dso_local global i32 0, align 4
@ATMEL_US_DTRDIS = common dso_local global i32 0, align 4
@ATMEL_US_CHMODE = common dso_local global i32 0, align 4
@TIOCM_LOOP = common dso_local global i32 0, align 4
@ATMEL_US_CHMODE_LOC_LOOP = common dso_local global i32 0, align 4
@ATMEL_US_CHMODE_NORMAL = common dso_local global i32 0, align 4
@AT91RM9200_BASE_US0 = common dso_local global i64 0, align 8
@AT91_PIN_PA21 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @atmel_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @TIOCM_RTS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @ATMEL_US_RTSEN, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @ATMEL_US_RTSDIS, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @TIOCM_DTR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @ATMEL_US_DTREN, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %32

28:                                               ; preds = %19
  %29 = load i32, i32* @ATMEL_US_DTRDIS, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @UART_PUT_CR(%struct.uart_port* %33, i32 %34)
  %36 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %37 = call i32 @UART_GET_MR(%struct.uart_port* %36)
  %38 = load i32, i32* @ATMEL_US_CHMODE, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @TIOCM_LOOP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load i32, i32* @ATMEL_US_CHMODE_LOC_LOOP, align 4
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %53

49:                                               ; preds = %32
  %50 = load i32, i32* @ATMEL_US_CHMODE_NORMAL, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @UART_PUT_MR(%struct.uart_port* %54, i32 %55)
  ret void
}

declare dso_local i32 @UART_PUT_CR(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_GET_MR(%struct.uart_port*) #1

declare dso_local i32 @UART_PUT_MR(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
