; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_msm_serial.c_msm_set_baud_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_msm_serial.c_msm_set_baud_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@UART_CSR_300 = common dso_local global i32 0, align 4
@UART_CSR_600 = common dso_local global i32 0, align 4
@UART_CSR_1200 = common dso_local global i32 0, align 4
@UART_CSR_2400 = common dso_local global i32 0, align 4
@UART_CSR_4800 = common dso_local global i32 0, align 4
@UART_CSR_9600 = common dso_local global i32 0, align 4
@UART_CSR_14400 = common dso_local global i32 0, align 4
@UART_CSR_19200 = common dso_local global i32 0, align 4
@UART_CSR_28800 = common dso_local global i32 0, align 4
@UART_CSR_38400 = common dso_local global i32 0, align 4
@UART_CSR_57600 = common dso_local global i32 0, align 4
@UART_CSR_115200 = common dso_local global i32 0, align 4
@UART_CSR = common dso_local global i32 0, align 4
@UART_IPR_STALE_LSB = common dso_local global i32 0, align 4
@UART_IPR_RXSTALE_LAST = common dso_local global i32 0, align 4
@UART_IPR_STALE_TIMEOUT_MSB = common dso_local global i32 0, align 4
@UART_IPR = common dso_local global i32 0, align 4
@UART_RFWR = common dso_local global i32 0, align 4
@UART_TFWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32)* @msm_set_baud_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_set_baud_rate(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %32 [
    i32 300, label %9
    i32 600, label %11
    i32 1200, label %13
    i32 2400, label %15
    i32 4800, label %17
    i32 9600, label %19
    i32 14400, label %21
    i32 19200, label %23
    i32 28800, label %25
    i32 38400, label %27
    i32 57600, label %29
    i32 115200, label %31
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @UART_CSR_300, align 4
  store i32 %10, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %34

11:                                               ; preds = %2
  %12 = load i32, i32* @UART_CSR_600, align 4
  store i32 %12, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load i32, i32* @UART_CSR_1200, align 4
  store i32 %14, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load i32, i32* @UART_CSR_2400, align 4
  store i32 %16, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load i32, i32* @UART_CSR_4800, align 4
  store i32 %18, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %34

19:                                               ; preds = %2
  %20 = load i32, i32* @UART_CSR_9600, align 4
  store i32 %20, i32* %5, align 4
  store i32 2, i32* %6, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load i32, i32* @UART_CSR_14400, align 4
  store i32 %22, i32* %5, align 4
  store i32 3, i32* %6, align 4
  br label %34

23:                                               ; preds = %2
  %24 = load i32, i32* @UART_CSR_19200, align 4
  store i32 %24, i32* %5, align 4
  store i32 4, i32* %6, align 4
  br label %34

25:                                               ; preds = %2
  %26 = load i32, i32* @UART_CSR_28800, align 4
  store i32 %26, i32* %5, align 4
  store i32 6, i32* %6, align 4
  br label %34

27:                                               ; preds = %2
  %28 = load i32, i32* @UART_CSR_38400, align 4
  store i32 %28, i32* %5, align 4
  store i32 8, i32* %6, align 4
  br label %34

29:                                               ; preds = %2
  %30 = load i32, i32* @UART_CSR_57600, align 4
  store i32 %30, i32* %5, align 4
  store i32 16, i32* %6, align 4
  br label %34

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %2, %31
  %33 = load i32, i32* @UART_CSR_115200, align 4
  store i32 %33, i32* %5, align 4
  store i32 115200, i32* %4, align 4
  store i32 31, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9
  %35 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @UART_CSR, align 4
  %38 = call i32 @msm_write(%struct.uart_port* %35, i32 %36, i32 %37)
  %39 = load i32, i32* @UART_IPR_STALE_LSB, align 4
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @UART_IPR_RXSTALE_LAST, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @UART_IPR_STALE_TIMEOUT_MSB, align 4
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 %46, 2
  %48 = and i32 %45, %47
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @UART_IPR, align 4
  %54 = call i32 @msm_write(%struct.uart_port* %51, i32 %52, i32 %53)
  %55 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %56 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 3
  %59 = sdiv i32 %58, 4
  store i32 %59, i32* %7, align 4
  %60 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @UART_RFWR, align 4
  %63 = call i32 @msm_write(%struct.uart_port* %60, i32 %61, i32 %62)
  %64 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %65 = load i32, i32* @UART_TFWR, align 4
  %66 = call i32 @msm_write(%struct.uart_port* %64, i32 10, i32 %65)
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @msm_write(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
