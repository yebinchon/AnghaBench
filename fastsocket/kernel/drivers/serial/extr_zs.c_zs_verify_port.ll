; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_verify_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_verify_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32 }
%struct.serial_struct = type { i64, i64, i32 }
%struct.zs_port = type { i32 }

@PORT_UNKNOWN = common dso_local global i64 0, align 8
@PORT_ZS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.serial_struct*)* @zs_verify_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zs_verify_port(%struct.uart_port* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.serial_struct*, align 8
  %5 = alloca %struct.zs_port*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %4, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.zs_port* @to_zport(%struct.uart_port* %7)
  store %struct.zs_port* %8, %struct.zs_port** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %10 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PORT_UNKNOWN, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %16 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PORT_ZS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %14, %2
  %24 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %25 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %23
  %35 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %36 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %42 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %40, %43
  %45 = sdiv i32 %44, 4
  %46 = icmp ne i32 %37, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %34
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.zs_port* @to_zport(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
