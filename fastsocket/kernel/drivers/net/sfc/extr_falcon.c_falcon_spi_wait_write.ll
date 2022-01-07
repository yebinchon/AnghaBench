; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_spi_wait_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_spi_wait_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_spi_device = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@SPI_RDSR = common dso_local global i32 0, align 4
@SPI_STATUS_NRDY = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"SPI write timeout on device %d last status=0x%02x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @falcon_spi_wait_write(%struct.efx_nic* %0, %struct.efx_spi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.efx_spi_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store %struct.efx_spi_device* %1, %struct.efx_spi_device** %5, align 8
  %9 = load i32, i32* @jiffies, align 4
  %10 = add nsw i32 %9, 1
  %11 = load i32, i32* @HZ, align 4
  %12 = call i32 @DIV_ROUND_UP(i32 %11, i32 100)
  %13 = add nsw i32 %10, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %48, %2
  %16 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %17 = load %struct.efx_spi_device*, %struct.efx_spi_device** %5, align 8
  %18 = load i32, i32* @SPI_RDSR, align 4
  %19 = call i32 @falcon_spi_cmd(%struct.efx_nic* %16, %struct.efx_spi_device* %17, i32 %18, i32 -1, i32* null, i32* %7, i32 4)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SPI_STATUS_NRDY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %50

30:                                               ; preds = %24
  %31 = load i32, i32* @jiffies, align 4
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @time_after_eq(i32 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %37 = load i32, i32* @hw, align 4
  %38 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %39 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.efx_spi_device*, %struct.efx_spi_device** %5, align 8
  %42 = getelementptr inbounds %struct.efx_spi_device, %struct.efx_spi_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @netif_err(%struct.efx_nic* %36, i32 %37, i32 %40, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %50

48:                                               ; preds = %30
  %49 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %15

50:                                               ; preds = %35, %29, %22
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @falcon_spi_cmd(%struct.efx_nic*, %struct.efx_spi_device*, i32, i32, i32*, i32*, i32) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
