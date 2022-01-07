; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_bcm63xx_uart.c_bcm_uart_verify_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_bcm63xx_uart.c_bcm_uart_verify_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i64, i64, i64 }
%struct.serial_struct = type { i64, i64, i64 }

@PORT_BCM63XX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.serial_struct*)* @bcm_uart_verify_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_uart_verify_port(%struct.uart_port* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PORT_BCM63XX, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %48

14:                                               ; preds = %2
  %15 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %19 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %48

25:                                               ; preds = %14
  %26 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %30 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %48

36:                                               ; preds = %25
  %37 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %41 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %44, %33, %22, %11
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
