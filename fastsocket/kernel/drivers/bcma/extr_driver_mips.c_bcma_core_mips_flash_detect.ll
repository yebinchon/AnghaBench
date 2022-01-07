; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_mips.c_bcma_core_mips_flash_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_mips.c_bcma_core_mips_flash_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.bcma_drv_mips = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { %struct.TYPE_9__, %struct.bcma_drv_cc }
%struct.TYPE_9__ = type { i64 }
%struct.bcma_drv_cc = type { i32, %struct.TYPE_10__*, %struct.bcma_pflash }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.bcma_pflash = type { i32, i32, i64, i64 }

@BCMA_CC_CAP_FLASHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Found serial flash\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Found parallel flash\0A\00", align 1
@BCMA_SOC_FLASH2 = common dso_local global i64 0, align 8
@BCMA_SOC_FLASH2_SZ = common dso_local global i64 0, align 8
@BCMA_CC_FLASH_CFG = common dso_local global i32 0, align 4
@BCMA_CC_FLASH_CFG_DS = common dso_local global i32 0, align 4
@bcma_pflash_data = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@bcma_pflash_resource = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Flash type not supported\0A\00", align 1
@BCMA_CHIP_ID_BCM4706 = common dso_local global i64 0, align 8
@BCMA_CC_CAP_NFLASH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Found NAND flash\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_drv_mips*)* @bcma_core_mips_flash_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_core_mips_flash_detect(%struct.bcma_drv_mips* %0) #0 {
  %2 = alloca %struct.bcma_drv_mips*, align 8
  %3 = alloca %struct.bcma_bus*, align 8
  %4 = alloca %struct.bcma_drv_cc*, align 8
  %5 = alloca %struct.bcma_pflash*, align 8
  store %struct.bcma_drv_mips* %0, %struct.bcma_drv_mips** %2, align 8
  %6 = load %struct.bcma_drv_mips*, %struct.bcma_drv_mips** %2, align 8
  %7 = getelementptr inbounds %struct.bcma_drv_mips, %struct.bcma_drv_mips* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  store %struct.bcma_bus* %10, %struct.bcma_bus** %3, align 8
  %11 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %12 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %11, i32 0, i32 1
  store %struct.bcma_drv_cc* %12, %struct.bcma_drv_cc** %4, align 8
  %13 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %4, align 8
  %14 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %13, i32 0, i32 2
  store %struct.bcma_pflash* %14, %struct.bcma_pflash** %5, align 8
  %15 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %4, align 8
  %16 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BCMA_CC_CAP_FLASHT, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %64 [
    i32 128, label %20
    i32 130, label %20
    i32 129, label %25
  ]

20:                                               ; preds = %1, %1
  %21 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %22 = call i32 @bcma_debug(%struct.bcma_bus* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %4, align 8
  %24 = call i32 @bcma_sflash_init(%struct.bcma_drv_cc* %23)
  br label %67

25:                                               ; preds = %1
  %26 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %27 = call i32 @bcma_debug(%struct.bcma_bus* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.bcma_pflash*, %struct.bcma_pflash** %5, align 8
  %29 = getelementptr inbounds %struct.bcma_pflash, %struct.bcma_pflash* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i64, i64* @BCMA_SOC_FLASH2, align 8
  %31 = load %struct.bcma_pflash*, %struct.bcma_pflash** %5, align 8
  %32 = getelementptr inbounds %struct.bcma_pflash, %struct.bcma_pflash* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* @BCMA_SOC_FLASH2_SZ, align 8
  %34 = load %struct.bcma_pflash*, %struct.bcma_pflash** %5, align 8
  %35 = getelementptr inbounds %struct.bcma_pflash, %struct.bcma_pflash* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %4, align 8
  %37 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = load i32, i32* @BCMA_CC_FLASH_CFG, align 4
  %40 = call i32 @bcma_read32(%struct.TYPE_10__* %38, i32 %39)
  %41 = load i32, i32* @BCMA_CC_FLASH_CFG_DS, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %25
  %45 = load %struct.bcma_pflash*, %struct.bcma_pflash** %5, align 8
  %46 = getelementptr inbounds %struct.bcma_pflash, %struct.bcma_pflash* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  br label %50

47:                                               ; preds = %25
  %48 = load %struct.bcma_pflash*, %struct.bcma_pflash** %5, align 8
  %49 = getelementptr inbounds %struct.bcma_pflash, %struct.bcma_pflash* %48, i32 0, i32 1
  store i32 2, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.bcma_pflash*, %struct.bcma_pflash** %5, align 8
  %52 = getelementptr inbounds %struct.bcma_pflash, %struct.bcma_pflash* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bcma_pflash_data, i32 0, i32 0), align 4
  %54 = load %struct.bcma_pflash*, %struct.bcma_pflash** %5, align 8
  %55 = getelementptr inbounds %struct.bcma_pflash, %struct.bcma_pflash* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bcma_pflash_resource, i32 0, i32 1), align 8
  %57 = load %struct.bcma_pflash*, %struct.bcma_pflash** %5, align 8
  %58 = getelementptr inbounds %struct.bcma_pflash, %struct.bcma_pflash* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.bcma_pflash*, %struct.bcma_pflash** %5, align 8
  %61 = getelementptr inbounds %struct.bcma_pflash, %struct.bcma_pflash* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  store i64 %63, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bcma_pflash_resource, i32 0, i32 0), align 8
  br label %67

64:                                               ; preds = %1
  %65 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %66 = call i32 @bcma_err(%struct.bcma_bus* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %50, %20
  %68 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %4, align 8
  %69 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 38
  br i1 %74, label %82, label %75

75:                                               ; preds = %67
  %76 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %77 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @BCMA_CHIP_ID_BCM4706, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %75, %67
  %83 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %4, align 8
  %84 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @BCMA_CC_CAP_NFLASH, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %91 = call i32 @bcma_debug(%struct.bcma_bus* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %92 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %4, align 8
  %93 = call i32 @bcma_nflash_init(%struct.bcma_drv_cc* %92)
  br label %94

94:                                               ; preds = %89, %82
  br label %95

95:                                               ; preds = %94, %75
  ret void
}

declare dso_local i32 @bcma_debug(%struct.bcma_bus*, i8*) #1

declare dso_local i32 @bcma_sflash_init(%struct.bcma_drv_cc*) #1

declare dso_local i32 @bcma_read32(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @bcma_err(%struct.bcma_bus*, i8*) #1

declare dso_local i32 @bcma_nflash_init(%struct.bcma_drv_cc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
