; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_s3c2410.c_s3c2410_serial_setsource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_s3c2410.c_s3c2410_serial_setsource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.s3c24xx_uart_clksrc = type { i32 }

@S3C2410_UCON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"uclk\00", align 1
@S3C2410_UCON_UCLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.s3c24xx_uart_clksrc*)* @s3c2410_serial_setsource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410_serial_setsource(%struct.uart_port* %0, %struct.s3c24xx_uart_clksrc* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.s3c24xx_uart_clksrc*, align 8
  %5 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.s3c24xx_uart_clksrc* %1, %struct.s3c24xx_uart_clksrc** %4, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = load i32, i32* @S3C2410_UCON, align 4
  %8 = call i64 @rd_regl(%struct.uart_port* %6, i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %4, align 8
  %10 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @strcmp(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i64, i64* @S3C2410_UCON_UCLK, align 8
  %16 = load i64, i64* %5, align 8
  %17 = or i64 %16, %15
  store i64 %17, i64* %5, align 8
  br label %23

18:                                               ; preds = %2
  %19 = load i64, i64* @S3C2410_UCON_UCLK, align 8
  %20 = xor i64 %19, -1
  %21 = load i64, i64* %5, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %18, %14
  %24 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %25 = load i32, i32* @S3C2410_UCON, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @wr_regl(%struct.uart_port* %24, i32 %25, i64 %26)
  ret i32 0
}

declare dso_local i64 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
