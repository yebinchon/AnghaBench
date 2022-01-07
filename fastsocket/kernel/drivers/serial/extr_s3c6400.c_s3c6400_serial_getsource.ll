; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_s3c6400.c_s3c6400_serial_getsource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_s3c6400.c_s3c6400_serial_getsource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.s3c24xx_uart_clksrc = type { i32, i8* }

@S3C2410_UCON = common dso_local global i32 0, align 4
@S3C6400_UCON_CLKMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"uclk0\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"uclk1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.s3c24xx_uart_clksrc*)* @s3c6400_serial_getsource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c6400_serial_getsource(%struct.uart_port* %0, %struct.s3c24xx_uart_clksrc* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.s3c24xx_uart_clksrc*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.s3c24xx_uart_clksrc* %1, %struct.s3c24xx_uart_clksrc** %4, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = load i32, i32* @S3C2410_UCON, align 4
  %8 = call i32 @rd_regl(%struct.uart_port* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %4, align 8
  %10 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @S3C6400_UCON_CLKMASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %23 [
    i32 129, label %14
    i32 128, label %17
    i32 131, label %20
    i32 130, label %20
  ]

14:                                               ; preds = %2
  %15 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %4, align 8
  %16 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %4, align 8
  %19 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %18, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  br label %23

20:                                               ; preds = %2, %2
  %21 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %4, align 8
  %22 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  br label %23

23:                                               ; preds = %2, %20, %17, %14
  ret i32 0
}

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
