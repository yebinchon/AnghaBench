; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_verify_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_verify_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.serial_struct = type { i64, i32 }
%struct.sci_port = type { i64* }

@SCIx_TXI_IRQ = common dso_local global i64 0, align 8
@nr_irqs = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.serial_struct*)* @sci_verify_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_verify_port(%struct.uart_port* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  %6 = alloca %struct.sci_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %8 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %7)
  store %struct.sci_port* %8, %struct.sci_port** %6, align 8
  %9 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %10 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.sci_port*, %struct.sci_port** %6, align 8
  %13 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @SCIx_TXI_IRQ, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %11, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %21 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @nr_irqs, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %37

28:                                               ; preds = %19
  %29 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %30 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 2400
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %33, %25
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.sci_port* @to_sci_port(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
