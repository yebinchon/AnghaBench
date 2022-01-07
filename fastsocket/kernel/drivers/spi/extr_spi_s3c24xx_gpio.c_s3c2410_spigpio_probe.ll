; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_s3c24xx_gpio.c_s3c2410_spigpio_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_s3c24xx_gpio.c_s3c2410_spigpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.s3c2410_spigpio_info* }
%struct.s3c2410_spigpio_info = type { i64, i64, i64, i32, i32 }
%struct.spi_master = type { i32 }
%struct.s3c2410_spigpio = type { %struct.TYPE_7__, %struct.s3c2410_spigpio_info* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to allocate spi master\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@s3c2410_spigpio_chipselect = common dso_local global i32 0, align 4
@s3c2410_spigpio_txrx_mode0 = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i64 0, align 8
@s3c2410_spigpio_txrx_mode1 = common dso_local global i32 0, align 4
@SPI_MODE_1 = common dso_local global i64 0, align 8
@s3c2410_spigpio_txrx_mode2 = common dso_local global i32 0, align 4
@SPI_MODE_2 = common dso_local global i64 0, align 8
@s3c2410_spigpio_txrx_mode3 = common dso_local global i32 0, align 4
@SPI_MODE_3 = common dso_local global i64 0, align 8
@S3C2410_GPIO_OUTPUT = common dso_local global i32 0, align 4
@S3C2410_GPH10 = common dso_local global i64 0, align 8
@S3C2410_GPA0 = common dso_local global i64 0, align 8
@S3C2410_GPIO_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c2410_spigpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410_spigpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.s3c2410_spigpio_info*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.s3c2410_spigpio*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_8__* %9, i32 32)
  store %struct.spi_master* %10, %struct.spi_master** %5, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %12 = icmp eq %struct.spi_master* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(%struct.TYPE_8__* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  br label %140

19:                                               ; preds = %1
  %20 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %21 = call %struct.s3c2410_spigpio* @spi_master_get_devdata(%struct.spi_master* %20)
  store %struct.s3c2410_spigpio* %21, %struct.s3c2410_spigpio** %6, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.s3c2410_spigpio*, %struct.s3c2410_spigpio** %6, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.s3c2410_spigpio* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.s3c2410_spigpio_info*, %struct.s3c2410_spigpio_info** %27, align 8
  %29 = load %struct.s3c2410_spigpio*, %struct.s3c2410_spigpio** %6, align 8
  %30 = getelementptr inbounds %struct.s3c2410_spigpio, %struct.s3c2410_spigpio* %29, i32 0, i32 1
  store %struct.s3c2410_spigpio_info* %28, %struct.s3c2410_spigpio_info** %30, align 8
  store %struct.s3c2410_spigpio_info* %28, %struct.s3c2410_spigpio_info** %4, align 8
  %31 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %32 = call %struct.TYPE_6__* @spi_master_get(%struct.spi_master* %31)
  %33 = load %struct.s3c2410_spigpio*, %struct.s3c2410_spigpio** %6, align 8
  %34 = getelementptr inbounds %struct.s3c2410_spigpio, %struct.s3c2410_spigpio* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %35, align 8
  %36 = load %struct.s3c2410_spigpio_info*, %struct.s3c2410_spigpio_info** %4, align 8
  %37 = getelementptr inbounds %struct.s3c2410_spigpio_info, %struct.s3c2410_spigpio_info* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.s3c2410_spigpio*, %struct.s3c2410_spigpio** %6, align 8
  %40 = getelementptr inbounds %struct.s3c2410_spigpio, %struct.s3c2410_spigpio* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 %38, i32* %43, align 4
  %44 = load %struct.s3c2410_spigpio_info*, %struct.s3c2410_spigpio_info** %4, align 8
  %45 = getelementptr inbounds %struct.s3c2410_spigpio_info, %struct.s3c2410_spigpio_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.s3c2410_spigpio*, %struct.s3c2410_spigpio** %6, align 8
  %48 = getelementptr inbounds %struct.s3c2410_spigpio, %struct.s3c2410_spigpio* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 4
  %52 = load i32, i32* @s3c2410_spigpio_chipselect, align 4
  %53 = load %struct.s3c2410_spigpio*, %struct.s3c2410_spigpio** %6, align 8
  %54 = getelementptr inbounds %struct.s3c2410_spigpio, %struct.s3c2410_spigpio* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @s3c2410_spigpio_txrx_mode0, align 4
  %57 = load %struct.s3c2410_spigpio*, %struct.s3c2410_spigpio** %6, align 8
  %58 = getelementptr inbounds %struct.s3c2410_spigpio, %struct.s3c2410_spigpio* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @SPI_MODE_0, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load i32, i32* @s3c2410_spigpio_txrx_mode1, align 4
  %64 = load %struct.s3c2410_spigpio*, %struct.s3c2410_spigpio** %6, align 8
  %65 = getelementptr inbounds %struct.s3c2410_spigpio, %struct.s3c2410_spigpio* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @SPI_MODE_1, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load i32, i32* @s3c2410_spigpio_txrx_mode2, align 4
  %71 = load %struct.s3c2410_spigpio*, %struct.s3c2410_spigpio** %6, align 8
  %72 = getelementptr inbounds %struct.s3c2410_spigpio, %struct.s3c2410_spigpio* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @SPI_MODE_2, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %70, i32* %76, align 4
  %77 = load i32, i32* @s3c2410_spigpio_txrx_mode3, align 4
  %78 = load %struct.s3c2410_spigpio*, %struct.s3c2410_spigpio** %6, align 8
  %79 = getelementptr inbounds %struct.s3c2410_spigpio, %struct.s3c2410_spigpio* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @SPI_MODE_3, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 %77, i32* %83, align 4
  %84 = load %struct.s3c2410_spigpio_info*, %struct.s3c2410_spigpio_info** %4, align 8
  %85 = getelementptr inbounds %struct.s3c2410_spigpio_info, %struct.s3c2410_spigpio_info* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @s3c2410_gpio_setpin(i64 %86, i32 0)
  %88 = load %struct.s3c2410_spigpio_info*, %struct.s3c2410_spigpio_info** %4, align 8
  %89 = getelementptr inbounds %struct.s3c2410_spigpio_info, %struct.s3c2410_spigpio_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @S3C2410_GPIO_OUTPUT, align 4
  %92 = call i32 @s3c2410_gpio_cfgpin(i64 %90, i32 %91)
  %93 = load %struct.s3c2410_spigpio_info*, %struct.s3c2410_spigpio_info** %4, align 8
  %94 = getelementptr inbounds %struct.s3c2410_spigpio_info, %struct.s3c2410_spigpio_info* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @S3C2410_GPH10, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %19
  %99 = load %struct.s3c2410_spigpio_info*, %struct.s3c2410_spigpio_info** %4, align 8
  %100 = getelementptr inbounds %struct.s3c2410_spigpio_info, %struct.s3c2410_spigpio_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @s3c2410_gpio_setpin(i64 %101, i32 0)
  %103 = load %struct.s3c2410_spigpio_info*, %struct.s3c2410_spigpio_info** %4, align 8
  %104 = getelementptr inbounds %struct.s3c2410_spigpio_info, %struct.s3c2410_spigpio_info* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @S3C2410_GPIO_OUTPUT, align 4
  %107 = call i32 @s3c2410_gpio_cfgpin(i64 %105, i32 %106)
  br label %108

108:                                              ; preds = %98, %19
  %109 = load %struct.s3c2410_spigpio_info*, %struct.s3c2410_spigpio_info** %4, align 8
  %110 = getelementptr inbounds %struct.s3c2410_spigpio_info, %struct.s3c2410_spigpio_info* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @S3C2410_GPA0, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %108
  %115 = load %struct.s3c2410_spigpio_info*, %struct.s3c2410_spigpio_info** %4, align 8
  %116 = getelementptr inbounds %struct.s3c2410_spigpio_info, %struct.s3c2410_spigpio_info* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @S3C2410_GPH10, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load %struct.s3c2410_spigpio_info*, %struct.s3c2410_spigpio_info** %4, align 8
  %122 = getelementptr inbounds %struct.s3c2410_spigpio_info, %struct.s3c2410_spigpio_info* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @S3C2410_GPIO_INPUT, align 4
  %125 = call i32 @s3c2410_gpio_cfgpin(i64 %123, i32 %124)
  br label %126

126:                                              ; preds = %120, %114, %108
  %127 = load %struct.s3c2410_spigpio*, %struct.s3c2410_spigpio** %6, align 8
  %128 = getelementptr inbounds %struct.s3c2410_spigpio, %struct.s3c2410_spigpio* %127, i32 0, i32 0
  %129 = call i32 @spi_bitbang_start(%struct.TYPE_7__* %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %134

133:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %142

134:                                              ; preds = %132
  %135 = load %struct.s3c2410_spigpio*, %struct.s3c2410_spigpio** %6, align 8
  %136 = getelementptr inbounds %struct.s3c2410_spigpio, %struct.s3c2410_spigpio* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = call i32 @spi_master_put(%struct.TYPE_6__* %138)
  br label %140

140:                                              ; preds = %134, %13
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %140, %133
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local %struct.s3c2410_spigpio* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.s3c2410_spigpio*) #1

declare dso_local %struct.TYPE_6__* @spi_master_get(%struct.spi_master*) #1

declare dso_local i32 @s3c2410_gpio_setpin(i64, i32) #1

declare dso_local i32 @s3c2410_gpio_cfgpin(i64, i32) #1

declare dso_local i32 @spi_bitbang_start(%struct.TYPE_7__*) #1

declare dso_local i32 @spi_master_put(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
