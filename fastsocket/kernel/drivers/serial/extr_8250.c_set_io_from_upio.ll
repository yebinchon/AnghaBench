; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_set_io_from_upio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_set_io_from_upio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i8* }
%struct.uart_8250_port = type { i32 }

@hub6_serial_in = common dso_local global i8* null, align 8
@hub6_serial_out = common dso_local global i32 0, align 4
@mem_serial_in = common dso_local global i8* null, align 8
@mem_serial_out = common dso_local global i32 0, align 4
@mem32_serial_in = common dso_local global i8* null, align 8
@mem32_serial_out = common dso_local global i32 0, align 4
@tsi_serial_in = common dso_local global i8* null, align 8
@tsi_serial_out = common dso_local global i32 0, align 4
@dwapb_serial_out = common dso_local global i32 0, align 4
@io_serial_in = common dso_local global i8* null, align 8
@io_serial_out = common dso_local global i32 0, align 4
@au_serial_in = common dso_local global i8* null, align 8
@au_serial_out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @set_io_from_upio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_io_from_upio(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_8250_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = bitcast %struct.uart_port* %4 to %struct.uart_8250_port*
  store %struct.uart_8250_port* %5, %struct.uart_8250_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %44 [
    i32 132, label %9
    i32 131, label %16
    i32 129, label %23
    i32 130, label %23
    i32 128, label %30
    i32 133, label %37
  ]

9:                                                ; preds = %1
  %10 = load i8*, i8** @hub6_serial_in, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 2
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* @hub6_serial_out, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  br label %51

16:                                               ; preds = %1
  %17 = load i8*, i8** @mem_serial_in, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @mem_serial_out, align 4
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %51

23:                                               ; preds = %1, %1
  %24 = load i8*, i8** @mem32_serial_in, align 8
  %25 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @mem32_serial_out, align 4
  %28 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %51

30:                                               ; preds = %1
  %31 = load i8*, i8** @tsi_serial_in, align 8
  %32 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @tsi_serial_out, align 4
  %35 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %51

37:                                               ; preds = %1
  %38 = load i8*, i8** @mem_serial_in, align 8
  %39 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @dwapb_serial_out, align 4
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %51

44:                                               ; preds = %1
  %45 = load i8*, i8** @io_serial_in, align 8
  %46 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @io_serial_out, align 4
  %49 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %44, %37, %30, %23, %16, %9
  %52 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %56 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
