; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_s3c2400.c_s3c2400_serial_resetport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_s3c2400.c_s3c2400_serial_resetport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.s3c2410_uartcfg = type { i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"s3c2400_serial_resetport: port=%p (%08lx), cfg=%p\0A\00", align 1
@S3C2410_UCON = common dso_local global i32 0, align 4
@S3C2410_ULCON = common dso_local global i32 0, align 4
@S3C2410_UFCON = common dso_local global i32 0, align 4
@S3C2410_UFCON_RESETBOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.s3c2410_uartcfg*)* @s3c2400_serial_resetport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2400_serial_resetport(%struct.uart_port* %0, %struct.s3c2410_uartcfg* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.s3c2410_uartcfg*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.s3c2410_uartcfg* %1, %struct.s3c2410_uartcfg** %4, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %4, align 8
  %10 = call i32 @dbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.uart_port* %5, i32 %8, %struct.s3c2410_uartcfg* %9)
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = load i32, i32* @S3C2410_UCON, align 4
  %13 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %4, align 8
  %14 = getelementptr inbounds %struct.s3c2410_uartcfg, %struct.s3c2410_uartcfg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @wr_regl(%struct.uart_port* %11, i32 %12, i32 %15)
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = load i32, i32* @S3C2410_ULCON, align 4
  %19 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %4, align 8
  %20 = getelementptr inbounds %struct.s3c2410_uartcfg, %struct.s3c2410_uartcfg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wr_regl(%struct.uart_port* %17, i32 %18, i32 %21)
  %23 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %24 = load i32, i32* @S3C2410_UFCON, align 4
  %25 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %4, align 8
  %26 = getelementptr inbounds %struct.s3c2410_uartcfg, %struct.s3c2410_uartcfg* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @S3C2410_UFCON_RESETBOTH, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @wr_regl(%struct.uart_port* %23, i32 %24, i32 %29)
  %31 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %32 = load i32, i32* @S3C2410_UFCON, align 4
  %33 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %4, align 8
  %34 = getelementptr inbounds %struct.s3c2410_uartcfg, %struct.s3c2410_uartcfg* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @wr_regl(%struct.uart_port* %31, i32 %32, i32 %35)
  ret i32 0
}

declare dso_local i32 @dbg(i8*, %struct.uart_port*, i32, %struct.s3c2410_uartcfg*) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
