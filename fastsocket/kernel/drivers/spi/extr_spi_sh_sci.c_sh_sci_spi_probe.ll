; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_sh_sci.c_sh_sci_spi_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_sh_sci.c_sh_sci_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.resource = type { i64, i64 }
%struct.spi_master = type { i32 }
%struct.sh_sci_spi = type { %struct.TYPE_9__, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to allocate spi master\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@sh_sci_spi_chipselect = common dso_local global i32 0, align 4
@sh_sci_spi_txrx_mode0 = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i64 0, align 8
@sh_sci_spi_txrx_mode1 = common dso_local global i32 0, align 4
@SPI_MODE_1 = common dso_local global i64 0, align 8
@sh_sci_spi_txrx_mode2 = common dso_local global i32 0, align 4
@SPI_MODE_2 = common dso_local global i64 0, align 8
@sh_sci_spi_txrx_mode3 = common dso_local global i32 0, align 4
@SPI_MODE_3 = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PIN_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sh_sci_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_sci_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.sh_sci_spi*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_10__* %9, i32 40)
  store %struct.spi_master* %10, %struct.spi_master** %5, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %12 = icmp eq %struct.spi_master* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(%struct.TYPE_10__* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  br label %147

19:                                               ; preds = %1
  %20 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %21 = call %struct.sh_sci_spi* @spi_master_get_devdata(%struct.spi_master* %20)
  store %struct.sh_sci_spi* %21, %struct.sh_sci_spi** %6, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.sh_sci_spi* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %30 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %29, i32 0, i32 3
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %30, align 8
  %31 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %32 = call %struct.TYPE_8__* @spi_master_get(%struct.spi_master* %31)
  %33 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %34 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %35, align 8
  %36 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %37 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %36, i32 0, i32 3
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %42 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i32 %40, i32* %45, align 4
  %46 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %47 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %46, i32 0, i32 3
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %52 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* @sh_sci_spi_chipselect, align 4
  %57 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %58 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @sh_sci_spi_txrx_mode0, align 4
  %61 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %62 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @SPI_MODE_0, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load i32, i32* @sh_sci_spi_txrx_mode1, align 4
  %68 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %69 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @SPI_MODE_1, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 %67, i32* %73, align 4
  %74 = load i32, i32* @sh_sci_spi_txrx_mode2, align 4
  %75 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %76 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @SPI_MODE_2, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %74, i32* %80, align 4
  %81 = load i32, i32* @sh_sci_spi_txrx_mode3, align 4
  %82 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %83 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @SPI_MODE_3, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %81, i32* %87, align 4
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = load i32, i32* @IORESOURCE_MEM, align 4
  %90 = call %struct.resource* @platform_get_resource(%struct.platform_device* %88, i32 %89, i32 0)
  store %struct.resource* %90, %struct.resource** %4, align 8
  %91 = load %struct.resource*, %struct.resource** %4, align 8
  %92 = icmp eq %struct.resource* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %19
  %94 = load i32, i32* @ENOENT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %7, align 4
  br label %141

96:                                               ; preds = %19
  %97 = load %struct.resource*, %struct.resource** %4, align 8
  %98 = getelementptr inbounds %struct.resource, %struct.resource* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.resource*, %struct.resource** %4, align 8
  %101 = getelementptr inbounds %struct.resource, %struct.resource* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.resource*, %struct.resource** %4, align 8
  %104 = getelementptr inbounds %struct.resource, %struct.resource* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %102, %105
  %107 = add nsw i64 %106, 1
  %108 = call i32 @ioremap(i64 %99, i64 %107)
  %109 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %110 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %112 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %96
  %116 = load i32, i32* @ENXIO, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %7, align 4
  br label %141

118:                                              ; preds = %96
  %119 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %120 = call i32 @SCSPTR(%struct.sh_sci_spi* %119)
  %121 = call i32 @ioread8(i32 %120)
  %122 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %123 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %125 = load i32, i32* @PIN_INIT, align 4
  %126 = call i32 @setbits(%struct.sh_sci_spi* %124, i32 %125, i32 1)
  %127 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %128 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %127, i32 0, i32 0
  %129 = call i32 @spi_bitbang_start(%struct.TYPE_9__* %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %149

133:                                              ; preds = %118
  %134 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %135 = load i32, i32* @PIN_INIT, align 4
  %136 = call i32 @setbits(%struct.sh_sci_spi* %134, i32 %135, i32 0)
  %137 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %138 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @iounmap(i32 %139)
  br label %141

141:                                              ; preds = %133, %115, %93
  %142 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %143 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = call i32 @spi_master_put(%struct.TYPE_8__* %145)
  br label %147

147:                                              ; preds = %141, %13
  %148 = load i32, i32* %7, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %147, %132
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local %struct.sh_sci_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sh_sci_spi*) #1

declare dso_local %struct.TYPE_8__* @spi_master_get(%struct.spi_master*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @ioremap(i64, i64) #1

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @SCSPTR(%struct.sh_sci_spi*) #1

declare dso_local i32 @setbits(%struct.sh_sci_spi*, i32, i32) #1

declare dso_local i32 @spi_bitbang_start(%struct.TYPE_9__*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @spi_master_put(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
