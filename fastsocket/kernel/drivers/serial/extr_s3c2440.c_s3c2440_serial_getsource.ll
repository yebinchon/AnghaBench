; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_s3c2440.c_s3c2440_serial_getsource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_s3c2440.c_s3c2440_serial_getsource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.s3c24xx_uart_clksrc = type { i32, i8* }

@S3C2410_UCON = common dso_local global i64 0, align 8
@S3C2440_UCON_CLKMASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"uclk\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@S3C24XX_VA_UART0 = common dso_local global i64 0, align 8
@S3C24XX_VA_UART1 = common dso_local global i64 0, align 8
@S3C24XX_VA_UART2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"ucons: %08lx, %08lx, %08lx\0A\00", align 1
@S3C2440_UCON0_DIVMASK = common dso_local global i64 0, align 8
@S3C2440_UCON1_DIVMASK = common dso_local global i64 0, align 8
@S3C2440_UCON2_DIVMASK = common dso_local global i64 0, align 8
@S3C2440_UCON_DIVSHIFT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"fclk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.s3c24xx_uart_clksrc*)* @s3c2440_serial_getsource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2440_serial_getsource(%struct.uart_port* %0, %struct.s3c24xx_uart_clksrc* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.s3c24xx_uart_clksrc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.s3c24xx_uart_clksrc* %1, %struct.s3c24xx_uart_clksrc** %4, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = load i64, i64* @S3C2410_UCON, align 8
  %11 = call i64 @rd_regl(%struct.uart_port* %9, i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @S3C2440_UCON_CLKMASK, align 8
  %14 = and i64 %12, %13
  switch i64 %14, label %100 [
    i64 128, label %15
    i64 130, label %20
    i64 129, label %20
    i64 131, label %25
  ]

15:                                               ; preds = %2
  %16 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %4, align 8
  %17 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %4, align 8
  %19 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %18, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  br label %100

20:                                               ; preds = %2, %2
  %21 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %4, align 8
  %22 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %4, align 8
  %24 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %23, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 8
  br label %100

25:                                               ; preds = %2
  %26 = load i64, i64* @S3C24XX_VA_UART0, align 8
  %27 = load i64, i64* @S3C2410_UCON, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i64 @__raw_readl(i64 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* @S3C24XX_VA_UART1, align 8
  %31 = load i64, i64* @S3C2410_UCON, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i64 @__raw_readl(i64 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* @S3C24XX_VA_UART2, align 8
  %35 = load i64, i64* @S3C2410_UCON, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i64 @__raw_readl(i64 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %38, i64 %39, i64 %40)
  %42 = load i64, i64* @S3C2440_UCON0_DIVMASK, align 8
  %43 = load i64, i64* %6, align 8
  %44 = and i64 %43, %42
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* @S3C2440_UCON1_DIVMASK, align 8
  %46 = load i64, i64* %7, align 8
  %47 = and i64 %46, %45
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* @S3C2440_UCON2_DIVMASK, align 8
  %49 = load i64, i64* %8, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %25
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @S3C2440_UCON_DIVSHIFT, align 8
  %56 = lshr i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %4, align 8
  %59 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %4, align 8
  %61 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 6
  store i32 %63, i32* %61, align 8
  br label %97

64:                                               ; preds = %25
  %65 = load i64, i64* %7, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @S3C2440_UCON_DIVSHIFT, align 8
  %70 = lshr i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %4, align 8
  %73 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %4, align 8
  %75 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 21
  store i32 %77, i32* %75, align 8
  br label %96

78:                                               ; preds = %64
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @S3C2440_UCON_DIVSHIFT, align 8
  %84 = lshr i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %4, align 8
  %87 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %4, align 8
  %89 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 36
  store i32 %91, i32* %89, align 8
  br label %95

92:                                               ; preds = %78
  %93 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %4, align 8
  %94 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %93, i32 0, i32 0
  store i32 9, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %81
  br label %96

96:                                               ; preds = %95, %67
  br label %97

97:                                               ; preds = %96, %53
  %98 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %4, align 8
  %99 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %98, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %99, align 8
  br label %100

100:                                              ; preds = %2, %97, %20, %15
  ret i32 0
}

declare dso_local i64 @rd_regl(%struct.uart_port*, i64) #1

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i32 @printk(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
