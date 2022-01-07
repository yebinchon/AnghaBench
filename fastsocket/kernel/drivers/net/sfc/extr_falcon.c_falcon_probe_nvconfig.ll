; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_probe_nvconfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_probe_nvconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_6__, i32, %struct.TYPE_8__*, %struct.falcon_nic_data* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.falcon_nic_data = type { i32, i32 }
%struct.falcon_nvconfig = type { %struct.TYPE_7__, i32*, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FFE_AB_SPI_DEVICE_FLASH = common dso_local global i64 0, align 8
@FFE_AB_SPI_DEVICE_EEPROM = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"PHY is %d phy_id %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @falcon_probe_nvconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_probe_nvconfig(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.falcon_nic_data*, align 8
  %5 = alloca %struct.falcon_nvconfig*, align 8
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 3
  %9 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %8, align 8
  store %struct.falcon_nic_data* %9, %struct.falcon_nic_data** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.falcon_nvconfig* @kmalloc(i32 40, i32 %10)
  store %struct.falcon_nvconfig* %11, %struct.falcon_nvconfig** %5, align 8
  %12 = load %struct.falcon_nvconfig*, %struct.falcon_nvconfig** %5, align 8
  %13 = icmp ne %struct.falcon_nvconfig* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %107

17:                                               ; preds = %1
  %18 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %19 = load %struct.falcon_nvconfig*, %struct.falcon_nvconfig** %5, align 8
  %20 = call i32 @falcon_read_nvram(%struct.efx_nic* %18, %struct.falcon_nvconfig* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %103

24:                                               ; preds = %17
  %25 = load %struct.falcon_nvconfig*, %struct.falcon_nvconfig** %5, align 8
  %26 = getelementptr inbounds %struct.falcon_nvconfig, %struct.falcon_nvconfig* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %30 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.falcon_nvconfig*, %struct.falcon_nvconfig** %5, align 8
  %32 = getelementptr inbounds %struct.falcon_nvconfig, %struct.falcon_nvconfig* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %36 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.falcon_nvconfig*, %struct.falcon_nvconfig** %5, align 8
  %39 = getelementptr inbounds %struct.falcon_nvconfig, %struct.falcon_nvconfig* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = icmp sge i32 %41, 3
  br i1 %42, label %43, label %70

43:                                               ; preds = %24
  %44 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %45 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %46 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %45, i32 0, i32 1
  %47 = load i64, i64* @FFE_AB_SPI_DEVICE_FLASH, align 8
  %48 = load %struct.falcon_nvconfig*, %struct.falcon_nvconfig** %5, align 8
  %49 = getelementptr inbounds %struct.falcon_nvconfig, %struct.falcon_nvconfig* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @FFE_AB_SPI_DEVICE_FLASH, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = call i32 @falcon_spi_device_init(%struct.efx_nic* %44, i32* %46, i64 %47, i32 %55)
  %57 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %58 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %59 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %58, i32 0, i32 0
  %60 = load i64, i64* @FFE_AB_SPI_DEVICE_EEPROM, align 8
  %61 = load %struct.falcon_nvconfig*, %struct.falcon_nvconfig** %5, align 8
  %62 = getelementptr inbounds %struct.falcon_nvconfig, %struct.falcon_nvconfig* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @FFE_AB_SPI_DEVICE_EEPROM, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  %69 = call i32 @falcon_spi_device_init(%struct.efx_nic* %57, i32* %59, i64 %60, i32 %68)
  br label %70

70:                                               ; preds = %43, %24
  %71 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %72 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %71, i32 0, i32 2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.falcon_nvconfig*, %struct.falcon_nvconfig** %5, align 8
  %77 = getelementptr inbounds %struct.falcon_nvconfig, %struct.falcon_nvconfig* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ETH_ALEN, align 4
  %82 = call i32 @memcpy(i32 %75, i32 %80, i32 %81)
  %83 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %84 = load i32, i32* @probe, align 4
  %85 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %86 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %85, i32 0, i32 2
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %89 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %92 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @netif_dbg(%struct.efx_nic* %83, i32 %84, %struct.TYPE_8__* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %94)
  %96 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %97 = load %struct.falcon_nvconfig*, %struct.falcon_nvconfig** %5, align 8
  %98 = getelementptr inbounds %struct.falcon_nvconfig, %struct.falcon_nvconfig* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @le16_to_cpu(i32 %100)
  %102 = call i32 @falcon_probe_board(%struct.efx_nic* %96, i32 %101)
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %70, %23
  %104 = load %struct.falcon_nvconfig*, %struct.falcon_nvconfig** %5, align 8
  %105 = call i32 @kfree(%struct.falcon_nvconfig* %104)
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %103, %14
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.falcon_nvconfig* @kmalloc(i32, i32) #1

declare dso_local i32 @falcon_read_nvram(%struct.efx_nic*, %struct.falcon_nvconfig*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @falcon_spi_device_init(%struct.efx_nic*, i32*, i64, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, %struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @falcon_probe_board(%struct.efx_nic*, i32) #1

declare dso_local i32 @kfree(%struct.falcon_nvconfig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
