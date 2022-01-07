; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_s3c24xx.c_s3c24xx_spi_chipsel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_s3c24xx.c_s3c24xx_spi_chipsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.s3c24xx_spi_devstate* }
%struct.s3c24xx_spi_devstate = type { i32 }
%struct.s3c24xx_spi = type { i32, i32 (i32, i32, i32)*, i64 }

@SPI_CS_HIGH = common dso_local global i32 0, align 4
@S3C2410_SPCON = common dso_local global i64 0, align 8
@S3C2410_SPCON_ENSCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @s3c24xx_spi_chipsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_spi_chipsel(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3c24xx_spi_devstate*, align 8
  %6 = alloca %struct.s3c24xx_spi*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 2
  %10 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %9, align 8
  store %struct.s3c24xx_spi_devstate* %10, %struct.s3c24xx_spi_devstate** %5, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = call %struct.s3c24xx_spi* @to_hw(%struct.spi_device* %11)
  store %struct.s3c24xx_spi* %12, %struct.s3c24xx_spi** %6, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SPI_CS_HIGH, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %67 [
    i32 128, label %22
    i32 129, label %44
  ]

22:                                               ; preds = %2
  %23 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %6, align 8
  %24 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %23, i32 0, i32 1
  %25 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %24, align 8
  %26 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %6, align 8
  %27 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = xor i32 %32, 1
  %34 = call i32 %25(i32 %28, i32 %31, i32 %33)
  %35 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %5, align 8
  %36 = getelementptr inbounds %struct.s3c24xx_spi_devstate, %struct.s3c24xx_spi_devstate* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %6, align 8
  %39 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @S3C2410_SPCON, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writeb(i32 %37, i64 %42)
  br label %67

44:                                               ; preds = %2
  %45 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %5, align 8
  %46 = getelementptr inbounds %struct.s3c24xx_spi_devstate, %struct.s3c24xx_spi_devstate* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @S3C2410_SPCON_ENSCK, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %6, align 8
  %51 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @S3C2410_SPCON, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writeb(i32 %49, i64 %54)
  %56 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %6, align 8
  %57 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %56, i32 0, i32 1
  %58 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %57, align 8
  %59 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %6, align 8
  %60 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %63 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 %58(i32 %61, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %2, %44, %22
  ret void
}

declare dso_local %struct.s3c24xx_spi* @to_hw(%struct.spi_device*) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
