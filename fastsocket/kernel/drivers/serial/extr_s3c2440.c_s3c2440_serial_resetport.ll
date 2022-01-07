; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_s3c2440.c_s3c2440_serial_resetport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_s3c2440.c_s3c2440_serial_resetport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.s3c2410_uartcfg = type { i64, i64, i64 }

@S3C2410_UCON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"s3c2440_serial_resetport: port=%p (%08lx), cfg=%p\0A\00", align 1
@S3C2440_UCON0_DIVMASK = common dso_local global i32 0, align 4
@S3C2410_ULCON = common dso_local global i32 0, align 4
@S3C2410_UFCON = common dso_local global i32 0, align 4
@S3C2410_UFCON_RESETBOTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.s3c2410_uartcfg*)* @s3c2440_serial_resetport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2440_serial_resetport(%struct.uart_port* %0, %struct.s3c2410_uartcfg* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.s3c2410_uartcfg*, align 8
  %5 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.s3c2410_uartcfg* %1, %struct.s3c2410_uartcfg** %4, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = load i32, i32* @S3C2410_UCON, align 4
  %8 = call i64 @rd_regl(%struct.uart_port* %6, i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %4, align 8
  %14 = call i32 @dbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.uart_port* %9, i32 %12, %struct.s3c2410_uartcfg* %13)
  %15 = load i32, i32* @S3C2440_UCON0_DIVMASK, align 4
  %16 = or i32 %15, 3072
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %5, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %5, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %21 = load i32, i32* @S3C2410_UCON, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %4, align 8
  %24 = getelementptr inbounds %struct.s3c2410_uartcfg, %struct.s3c2410_uartcfg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = or i64 %22, %25
  %27 = call i32 @wr_regl(%struct.uart_port* %20, i32 %21, i64 %26)
  %28 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %29 = load i32, i32* @S3C2410_ULCON, align 4
  %30 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %4, align 8
  %31 = getelementptr inbounds %struct.s3c2410_uartcfg, %struct.s3c2410_uartcfg* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @wr_regl(%struct.uart_port* %28, i32 %29, i64 %32)
  %34 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %35 = load i32, i32* @S3C2410_UFCON, align 4
  %36 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %4, align 8
  %37 = getelementptr inbounds %struct.s3c2410_uartcfg, %struct.s3c2410_uartcfg* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @S3C2410_UFCON_RESETBOTH, align 8
  %40 = or i64 %38, %39
  %41 = call i32 @wr_regl(%struct.uart_port* %34, i32 %35, i64 %40)
  %42 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %43 = load i32, i32* @S3C2410_UFCON, align 4
  %44 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %4, align 8
  %45 = getelementptr inbounds %struct.s3c2410_uartcfg, %struct.s3c2410_uartcfg* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @wr_regl(%struct.uart_port* %42, i32 %43, i64 %46)
  ret i32 0
}

declare dso_local i64 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @dbg(i8*, %struct.uart_port*, i32, %struct.s3c2410_uartcfg*) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
