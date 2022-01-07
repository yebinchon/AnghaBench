; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mtd.c_falcon_mtd_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mtd.c_falcon_mtd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.falcon_nic_data* }
%struct.falcon_nic_data = type { %struct.efx_spi_device, %struct.efx_spi_device }
%struct.efx_spi_device = type { i64, i32 }
%struct.efx_mtd = type { i8*, i32, %struct.TYPE_4__*, i32*, %struct.efx_spi_device* }
%struct.TYPE_4__ = type { i8*, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@FALCON_FLASH_BOOTCODE_START = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@falcon_mtd_ops = common dso_local global i32 0, align 4
@MTD_NORFLASH = common dso_local global i32 0, align 4
@MTD_CAP_NORFLASH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"sfc_flash_bootrom\00", align 1
@EFX_EEPROM_BOOTCONFIG_START = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"EEPROM\00", align 1
@MTD_RAM = common dso_local global i32 0, align 4
@MTD_CAP_RAM = common dso_local global i32 0, align 4
@EFX_EEPROM_BOOTCONFIG_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"sfc_bootconfig\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @falcon_mtd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_mtd_probe(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.falcon_nic_data*, align 8
  %5 = alloca %struct.efx_spi_device*, align 8
  %6 = alloca %struct.efx_mtd*, align 8
  %7 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 0
  %10 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %9, align 8
  store %struct.falcon_nic_data* %10, %struct.falcon_nic_data** %4, align 8
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = call i32 (...) @ASSERT_RTNL()
  %14 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %15 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %14, i32 0, i32 1
  store %struct.efx_spi_device* %15, %struct.efx_spi_device** %5, align 8
  %16 = load %struct.efx_spi_device*, %struct.efx_spi_device** %5, align 8
  %17 = call i64 @efx_spi_present(%struct.efx_spi_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %98

19:                                               ; preds = %1
  %20 = load %struct.efx_spi_device*, %struct.efx_spi_device** %5, align 8
  %21 = getelementptr inbounds %struct.efx_spi_device, %struct.efx_spi_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FALCON_FLASH_BOOTCODE_START, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %98

25:                                               ; preds = %19
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.efx_mtd* @kzalloc(i32 80, i32 %26)
  store %struct.efx_mtd* %27, %struct.efx_mtd** %6, align 8
  %28 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %29 = icmp ne %struct.efx_mtd* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %187

33:                                               ; preds = %25
  %34 = load %struct.efx_spi_device*, %struct.efx_spi_device** %5, align 8
  %35 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %36 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %35, i32 0, i32 4
  store %struct.efx_spi_device* %34, %struct.efx_spi_device** %36, align 8
  %37 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %38 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %38, align 8
  %39 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %40 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %39, i32 0, i32 3
  store i32* @falcon_mtd_ops, i32** %40, align 8
  %41 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %42 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %41, i32 0, i32 1
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* @MTD_NORFLASH, align 4
  %44 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %45 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i32 %43, i32* %49, align 4
  %50 = load i32, i32* @MTD_CAP_NORFLASH, align 4
  %51 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %52 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i32 %50, i32* %56, align 8
  %57 = load %struct.efx_spi_device*, %struct.efx_spi_device** %5, align 8
  %58 = getelementptr inbounds %struct.efx_spi_device, %struct.efx_spi_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FALCON_FLASH_BOOTCODE_START, align 8
  %61 = sub nsw i64 %59, %60
  %62 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %63 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i64 %61, i64* %67, align 8
  %68 = load %struct.efx_spi_device*, %struct.efx_spi_device** %5, align 8
  %69 = getelementptr inbounds %struct.efx_spi_device, %struct.efx_spi_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %72 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 %70, i32* %76, align 8
  %77 = load i64, i64* @FALCON_FLASH_BOOTCODE_START, align 8
  %78 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %79 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i64 %77, i64* %82, align 8
  %83 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %84 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %87, align 8
  %88 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %89 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %90 = call i32 @efx_mtd_probe_device(%struct.efx_nic* %88, %struct.efx_mtd* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %33
  %94 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %95 = call i32 @kfree(%struct.efx_mtd* %94)
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %187

97:                                               ; preds = %33
  br label %98

98:                                               ; preds = %97, %19, %1
  %99 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %100 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %99, i32 0, i32 0
  store %struct.efx_spi_device* %100, %struct.efx_spi_device** %5, align 8
  %101 = load %struct.efx_spi_device*, %struct.efx_spi_device** %5, align 8
  %102 = call i64 @efx_spi_present(%struct.efx_spi_device* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %185

104:                                              ; preds = %98
  %105 = load %struct.efx_spi_device*, %struct.efx_spi_device** %5, align 8
  %106 = getelementptr inbounds %struct.efx_spi_device, %struct.efx_spi_device* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @EFX_EEPROM_BOOTCONFIG_START, align 8
  %109 = icmp sgt i64 %107, %108
  br i1 %109, label %110, label %185

110:                                              ; preds = %104
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call %struct.efx_mtd* @kzalloc(i32 80, i32 %111)
  store %struct.efx_mtd* %112, %struct.efx_mtd** %6, align 8
  %113 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %114 = icmp ne %struct.efx_mtd* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %187

118:                                              ; preds = %110
  %119 = load %struct.efx_spi_device*, %struct.efx_spi_device** %5, align 8
  %120 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %121 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %120, i32 0, i32 4
  store %struct.efx_spi_device* %119, %struct.efx_spi_device** %121, align 8
  %122 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %123 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %122, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %123, align 8
  %124 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %125 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %124, i32 0, i32 3
  store i32* @falcon_mtd_ops, i32** %125, align 8
  %126 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %127 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %126, i32 0, i32 1
  store i32 1, i32* %127, align 8
  %128 = load i32, i32* @MTD_RAM, align 4
  %129 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %130 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %129, i32 0, i32 2
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  store i32 %128, i32* %134, align 4
  %135 = load i32, i32* @MTD_CAP_RAM, align 4
  %136 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %137 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %136, i32 0, i32 2
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  store i32 %135, i32* %141, align 8
  %142 = load %struct.efx_spi_device*, %struct.efx_spi_device** %5, align 8
  %143 = getelementptr inbounds %struct.efx_spi_device, %struct.efx_spi_device* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* @EFX_EEPROM_BOOTCONFIG_END, align 4
  %146 = call i64 @min(i64 %144, i32 %145)
  %147 = load i64, i64* @EFX_EEPROM_BOOTCONFIG_START, align 8
  %148 = sub nsw i64 %146, %147
  %149 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %150 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %149, i32 0, i32 2
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  store i64 %148, i64* %154, align 8
  %155 = load %struct.efx_spi_device*, %struct.efx_spi_device** %5, align 8
  %156 = getelementptr inbounds %struct.efx_spi_device, %struct.efx_spi_device* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %159 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %158, i32 0, i32 2
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  store i32 %157, i32* %163, align 8
  %164 = load i64, i64* @EFX_EEPROM_BOOTCONFIG_START, align 8
  %165 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %166 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %165, i32 0, i32 2
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  store i64 %164, i64* %169, align 8
  %170 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %171 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %170, i32 0, i32 2
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %174, align 8
  %175 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %176 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %177 = call i32 @efx_mtd_probe_device(%struct.efx_nic* %175, %struct.efx_mtd* %176)
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %118
  %181 = load %struct.efx_mtd*, %struct.efx_mtd** %6, align 8
  %182 = call i32 @kfree(%struct.efx_mtd* %181)
  %183 = load i32, i32* %7, align 4
  store i32 %183, i32* %2, align 4
  br label %187

184:                                              ; preds = %118
  br label %185

185:                                              ; preds = %184, %104, %98
  %186 = load i32, i32* %7, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %185, %180, %115, %93, %30
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i64 @efx_spi_present(%struct.efx_spi_device*) #1

declare dso_local %struct.efx_mtd* @kzalloc(i32, i32) #1

declare dso_local i32 @efx_mtd_probe_device(%struct.efx_nic*, %struct.efx_mtd*) #1

declare dso_local i32 @kfree(%struct.efx_mtd*) #1

declare dso_local i64 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
