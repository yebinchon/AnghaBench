; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ucc_uart.c_qe_uart_verify_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ucc_uart.c_qe_uart_verify_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.serial_struct = type { i64, i64, i32 }

@PORT_UNKNOWN = common dso_local global i64 0, align 8
@PORT_CPM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@nr_irqs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.serial_struct*)* @qe_uart_verify_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_uart_verify_port(%struct.uart_port* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  %6 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %7 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PORT_UNKNOWN, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %13 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PORT_CPM, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %43

20:                                               ; preds = %11, %2
  %21 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %22 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %27 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @nr_irqs, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %20
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %43

34:                                               ; preds = %25
  %35 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %36 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 9600
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %39, %31, %17
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
