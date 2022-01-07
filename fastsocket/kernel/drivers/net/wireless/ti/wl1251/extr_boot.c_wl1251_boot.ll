; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_boot.c_wl1251_boot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_boot.c_wl1251_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ACX_REG_ECPU_CONTROL = common dso_local global i32 0, align 4
@ECPU_CONTROL_HALT = common dso_local global i32 0, align 4
@ACX_REG_EE_START = common dso_local global i32 0, align 4
@START_EEPROM_MGR = common dso_local global i32 0, align 4
@ACX_EEPROMLESS_IND_REG = common dso_local global i32 0, align 4
@USE_EEPROM = common dso_local global i32 0, align 4
@SCR_PAD2 = common dso_local global i32 0, align 4
@SCR_PAD3 = common dso_local global i32 0, align 4
@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"radioType 0x%x majorE2Ver 0x%x minorE2Ver 0x%x minor_minor_e2_ver 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"halt boot_data 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"boot failed, ECPU_CONTROL_HALT not set\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_boot(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %8 = load i32, i32* @ACX_REG_ECPU_CONTROL, align 4
  %9 = load i32, i32* @ECPU_CONTROL_HALT, align 4
  %10 = call i32 @wl1251_reg_write32(%struct.wl1251* %7, i32 %8, i32 %9)
  %11 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %12 = call i32 @wl1251_boot_soft_reset(%struct.wl1251* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %120

16:                                               ; preds = %1
  %17 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %18 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %23 = load i32, i32* @ACX_REG_EE_START, align 4
  %24 = load i32, i32* @START_EEPROM_MGR, align 4
  %25 = call i32 @wl1251_reg_write32(%struct.wl1251* %22, i32 %23, i32 %24)
  %26 = call i32 @msleep(i32 40)
  %27 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %28 = load i32, i32* @ACX_EEPROMLESS_IND_REG, align 4
  %29 = load i32, i32* @USE_EEPROM, align 4
  %30 = call i32 @wl1251_reg_write32(%struct.wl1251* %27, i32 %28, i32 %29)
  br label %44

31:                                               ; preds = %16
  %32 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %33 = call i32 @wl1251_boot_upload_nvs(%struct.wl1251* %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %120

37:                                               ; preds = %31
  %38 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %39 = load i32, i32* @ACX_EEPROMLESS_IND_REG, align 4
  %40 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %41 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @wl1251_reg_write32(%struct.wl1251* %38, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %37, %21
  %45 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %46 = load i32, i32* @SCR_PAD2, align 4
  %47 = call i32 @wl1251_reg_read32(%struct.wl1251* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, 65280
  %50 = ashr i32 %49, 8
  %51 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %52 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 16711680
  %56 = ashr i32 %55, 16
  %57 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %58 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %61 = load i32, i32* @SCR_PAD3, align 4
  %62 = call i32 @wl1251_reg_read32(%struct.wl1251* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 16711680
  %65 = ashr i32 %64, 16
  %66 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %67 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %69, -16777216
  %71 = lshr i32 %70, 24
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @DEBUG_BOOT, align 4
  %73 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %74 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %78 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %82 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 (i32, i8*, i32, ...) @wl1251_debug(i32 %72, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %80, i32 %84, i32 %85)
  %87 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %88 = call i32 @wl1251_boot_init_seq(%struct.wl1251* %87)
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %3, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %44
  br label %120

92:                                               ; preds = %44
  %93 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %94 = load i32, i32* @ACX_REG_ECPU_CONTROL, align 4
  %95 = call i32 @wl1251_reg_read32(%struct.wl1251* %93, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* @DEBUG_BOOT, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (i32, i8*, i32, ...) @wl1251_debug(i32 %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @ECPU_CONTROL_HALT, align 4
  %101 = and i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %92
  %104 = call i32 @wl1251_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %120

107:                                              ; preds = %92
  %108 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %109 = call i32 @wl1251_boot_upload_firmware(%struct.wl1251* %108)
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* %3, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %120

113:                                              ; preds = %107
  %114 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %115 = call i32 @wl1251_boot_run_firmware(%struct.wl1251* %114)
  store i32 %115, i32* %3, align 4
  %116 = load i32, i32* %3, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %120

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %118, %112, %103, %91, %36, %15
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @wl1251_reg_write32(%struct.wl1251*, i32, i32) #1

declare dso_local i32 @wl1251_boot_soft_reset(%struct.wl1251*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wl1251_boot_upload_nvs(%struct.wl1251*) #1

declare dso_local i32 @wl1251_reg_read32(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @wl1251_boot_init_seq(%struct.wl1251*) #1

declare dso_local i32 @wl1251_error(i8*) #1

declare dso_local i32 @wl1251_boot_upload_firmware(%struct.wl1251*) #1

declare dso_local i32 @wl1251_boot_run_firmware(%struct.wl1251*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
