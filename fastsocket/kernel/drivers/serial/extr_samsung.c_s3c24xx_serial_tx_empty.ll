; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_samsung.c_s3c24xx_serial_tx_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_samsung.c_s3c24xx_serial_tx_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.s3c24xx_uart_info = type { i64, i64 }

@S3C2410_UFSTAT = common dso_local global i32 0, align 4
@S3C2410_UFCON = common dso_local global i32 0, align 4
@S3C2410_UFCON_FIFOMODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @s3c24xx_serial_tx_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_serial_tx_empty(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.s3c24xx_uart_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.s3c24xx_uart_info* @s3c24xx_port_to_info(%struct.uart_port* %7)
  store %struct.s3c24xx_uart_info* %8, %struct.s3c24xx_uart_info** %4, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = load i32, i32* @S3C2410_UFSTAT, align 4
  %11 = call i64 @rd_regl(%struct.uart_port* %9, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = load i32, i32* @S3C2410_UFCON, align 4
  %14 = call i64 @rd_regl(%struct.uart_port* %12, i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @S3C2410_UFCON_FIFOMODE, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %4, align 8
  %22 = getelementptr inbounds %struct.s3c24xx_uart_info, %struct.s3c24xx_uart_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = and i64 %20, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %4, align 8
  %29 = getelementptr inbounds %struct.s3c24xx_uart_info, %struct.s3c24xx_uart_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %27, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %19
  store i32 0, i32* %2, align 4
  br label %38

34:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %38

35:                                               ; preds = %1
  %36 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %37 = call i32 @s3c24xx_serial_txempty_nofifo(%struct.uart_port* %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %34, %33
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.s3c24xx_uart_info* @s3c24xx_port_to_info(%struct.uart_port*) #1

declare dso_local i64 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @s3c24xx_serial_txempty_nofifo(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
