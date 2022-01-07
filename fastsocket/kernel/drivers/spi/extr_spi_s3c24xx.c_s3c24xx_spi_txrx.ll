; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_s3c24xx.c_s3c24xx_spi_txrx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_s3c24xx.c_s3c24xx_spi_txrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32, i32 }
%struct.s3c24xx_spi = type { i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"txrx: tx %p, rx %p, len %d\0A\00", align 1
@S3C2410_SPTDAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @s3c24xx_spi_txrx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_spi_txrx(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.s3c24xx_spi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = call %struct.s3c24xx_spi* @to_hw(%struct.spi_device* %6)
  store %struct.s3c24xx_spi* %7, %struct.s3c24xx_spi** %5, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18)
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %24 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %29 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %34 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %36 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %38 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %37, i32 0, i32 1
  %39 = call i32 @init_completion(i32* %38)
  %40 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %41 = call i32 @hw_txbyte(%struct.s3c24xx_spi* %40, i32 0)
  %42 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %43 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @S3C2410_SPTDAT, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writeb(i32 %41, i64 %46)
  %48 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %49 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %48, i32 0, i32 1
  %50 = call i32 @wait_for_completion(i32* %49)
  %51 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %52 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  ret i32 %53
}

declare dso_local %struct.s3c24xx_spi* @to_hw(%struct.spi_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @hw_txbyte(%struct.s3c24xx_spi*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
