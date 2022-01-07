; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_probe_spi_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_probe_spi_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.falcon_nic_data* }
%struct.falcon_nic_data = type { i32, i32, i32 }

@FR_AB_GPIO_CTL = common dso_local global i32 0, align 4
@FR_AB_NIC_STAT = common dso_local global i32 0, align 4
@FR_AB_EE_VPD_CFG0 = common dso_local global i32 0, align 4
@FRF_AB_GPIO3_PWRUP_VALUE = common dso_local global i32 0, align 4
@FRF_AB_SF_PRST = common dso_local global i32 0, align 4
@FFE_AB_SPI_DEVICE_FLASH = common dso_local global i32 0, align 4
@FFE_AB_SPI_DEVICE_EEPROM = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Booted from %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"EEPROM\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Booted from internal ASIC settings; setting SPI config\0A\00", align 1
@FRF_AB_EE_VPD_EN = common dso_local global i32 0, align 4
@FRF_AB_EE_SF_CLOCK_DIV = common dso_local global i32 0, align 4
@FRF_AB_EE_EE_CLOCK_DIV = common dso_local global i32 0, align 4
@default_flash_type = common dso_local global i32 0, align 4
@large_eeprom_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @falcon_probe_spi_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_probe_spi_devices(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.falcon_nic_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 1
  %10 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %9, align 8
  store %struct.falcon_nic_data* %10, %struct.falcon_nic_data** %3, align 8
  %11 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %12 = load i32, i32* @FR_AB_GPIO_CTL, align 4
  %13 = call i32 @efx_reado(%struct.efx_nic* %11, i32* %5, i32 %12)
  %14 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %15 = load i32, i32* @FR_AB_NIC_STAT, align 4
  %16 = call i32 @efx_reado(%struct.efx_nic* %14, i32* %4, i32 %15)
  %17 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %18 = load i32, i32* @FR_AB_EE_VPD_CFG0, align 4
  %19 = call i32 @efx_reado(%struct.efx_nic* %17, i32* %6, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @FRF_AB_GPIO3_PWRUP_VALUE, align 4
  %22 = call i64 @EFX_OWORD_FIELD(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @FRF_AB_SF_PRST, align 4
  %27 = call i64 @EFX_OWORD_FIELD(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @FFE_AB_SPI_DEVICE_FLASH, align 4
  br label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @FFE_AB_SPI_DEVICE_EEPROM, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %7, align 4
  %35 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %36 = load i32, i32* @probe, align 4
  %37 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %38 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @FFE_AB_SPI_DEVICE_FLASH, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %45 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.efx_nic* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %44)
  br label %61

46:                                               ; preds = %1
  store i32 -1, i32* %7, align 4
  %47 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %48 = load i32, i32* @probe, align 4
  %49 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %50 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.efx_nic* %47, i32 %48, i32 %51, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @FRF_AB_EE_VPD_EN, align 4
  %55 = load i32, i32* @FRF_AB_EE_SF_CLOCK_DIV, align 4
  %56 = load i32, i32* @FRF_AB_EE_EE_CLOCK_DIV, align 4
  %57 = call i32 @EFX_POPULATE_OWORD_3(i32 %53, i32 %54, i32 0, i32 %55, i32 7, i32 %56, i32 63)
  %58 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %59 = load i32, i32* @FR_AB_EE_VPD_CFG0, align 4
  %60 = call i32 @efx_writeo(%struct.efx_nic* %58, i32* %6, i32 %59)
  br label %61

61:                                               ; preds = %46, %33
  %62 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %63 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %62, i32 0, i32 2
  %64 = call i32 @mutex_init(i32* %63)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @FFE_AB_SPI_DEVICE_FLASH, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %70 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %71 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %70, i32 0, i32 1
  %72 = load i32, i32* @FFE_AB_SPI_DEVICE_FLASH, align 4
  %73 = load i32, i32* @default_flash_type, align 4
  %74 = call i32 @falcon_spi_device_init(%struct.efx_nic* %69, i32* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %68, %61
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @FFE_AB_SPI_DEVICE_EEPROM, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %81 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %82 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %81, i32 0, i32 0
  %83 = load i32, i32* @FFE_AB_SPI_DEVICE_EEPROM, align 4
  %84 = load i32, i32* @large_eeprom_type, align 4
  %85 = call i32 @falcon_spi_device_init(%struct.efx_nic* %80, i32* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %79, %75
  ret void
}

declare dso_local i32 @efx_reado(%struct.efx_nic*, i32*, i32) #1

declare dso_local i64 @EFX_OWORD_FIELD(i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @EFX_POPULATE_OWORD_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @falcon_spi_device_init(%struct.efx_nic*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
