; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_ctl.c_pm8001_store_update_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_ctl.c_pm8001_store_update_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_ha_struct = type { %struct.pm8001_hba_info* }
%struct.pm8001_hba_info = type { i8*, i32, i32 }

@FLASH_CMD_NONE = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@FAIL_OUT_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@FAIL_PARAMETERS = common dso_local global i8* null, align 8
@flash_command_table = common dso_local global %struct.TYPE_2__* null, align 8
@FLASH_IN_PROGRESS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to load firmware image file %s, error %d\0A\00", align 1
@FAIL_OPEN_BIOS_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pm8001_store_update_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pm8001_store_update_fw(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.sas_ha_struct*, align 8
  %12 = alloca %struct.pm8001_hba_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %19)
  store %struct.Scsi_Host* %20, %struct.Scsi_Host** %10, align 8
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %22 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %21)
  store %struct.sas_ha_struct* %22, %struct.sas_ha_struct** %11, align 8
  %23 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %24 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %23, i32 0, i32 0
  %25 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %24, align 8
  store %struct.pm8001_hba_info* %25, %struct.pm8001_hba_info** %12, align 8
  %26 = load i32, i32* @FLASH_CMD_NONE, align 4
  store i32 %26, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %27 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %28 = call i32 @capable(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i64, i64* @EACCES, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %163

33:                                               ; preds = %4
  %34 = load i64, i64* %9, align 8
  %35 = mul i64 %34, 2
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kzalloc(i64 %35, i32 %36)
  store i8* %37, i8** %13, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @FAIL_OUT_MEMORY, align 4
  store i32 %41, i32* %18, align 4
  br label %149

42:                                               ; preds = %33
  %43 = load i8*, i8** %13, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = call i32 @sscanf(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 2
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i8*, i8** @FAIL_PARAMETERS, align 8
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %18, align 4
  br label %146

55:                                               ; preds = %42
  store i32 0, i32* %16, align 4
  br label %56

56:                                               ; preds = %85, %55
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flash_command_table, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FLASH_CMD_NONE, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %56
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flash_command_table, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %13, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = call i32 @memcmp(i32 %71, i8* %72, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %65
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flash_command_table, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %17, align 4
  br label %88

84:                                               ; preds = %65
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  br label %56

88:                                               ; preds = %77, %56
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* @FLASH_CMD_NONE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i8*, i8** @FAIL_PARAMETERS, align 8
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %18, align 4
  br label %146

95:                                               ; preds = %88
  %96 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %97 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** @FLASH_IN_PROGRESS, align 8
  %100 = icmp eq i8* %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i8*, i8** @FLASH_IN_PROGRESS, align 8
  %103 = ptrtoint i8* %102 to i32
  store i32 %103, i32* %18, align 4
  br label %146

104:                                              ; preds = %95
  %105 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %106 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %105, i32 0, i32 1
  %107 = load i8*, i8** %14, align 8
  %108 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %109 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @request_firmware(i32* %106, i8* %107, i32 %110)
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %18, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %104
  %115 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = load i32, i32* %18, align 4
  %118 = call i32 @pm8001_printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %116, i32 %117)
  %119 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %115, i32 %118)
  %120 = load i32, i32* @FAIL_OPEN_BIOS_FILE, align 4
  store i32 %120, i32* %18, align 4
  br label %146

121:                                              ; preds = %104
  %122 = load i32, i32* %17, align 4
  switch i32 %122, label %135 [
    i32 128, label %123
    i32 129, label %129
  ]

123:                                              ; preds = %121
  %124 = load i8*, i8** @FLASH_IN_PROGRESS, align 8
  %125 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %126 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  %127 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %128 = call i32 @pm8001_update_flash(%struct.pm8001_hba_info* %127)
  store i32 %128, i32* %18, align 4
  br label %141

129:                                              ; preds = %121
  %130 = load i8*, i8** @FLASH_IN_PROGRESS, align 8
  %131 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %132 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  %133 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %134 = call i32 @pm8001_set_nvmd(%struct.pm8001_hba_info* %133)
  store i32 %134, i32* %18, align 4
  br label %141

135:                                              ; preds = %121
  %136 = load i8*, i8** @FAIL_PARAMETERS, align 8
  %137 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %138 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  %139 = load i8*, i8** @FAIL_PARAMETERS, align 8
  %140 = ptrtoint i8* %139 to i32
  store i32 %140, i32* %18, align 4
  br label %141

141:                                              ; preds = %135, %129, %123
  %142 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %143 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @release_firmware(i32 %144)
  br label %146

146:                                              ; preds = %141, %114, %101, %92, %52
  %147 = load i8*, i8** %13, align 8
  %148 = call i32 @kfree(i8* %147)
  br label %149

149:                                              ; preds = %146, %40
  %150 = load i32, i32* %18, align 4
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  %153 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %154 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  %155 = load i32, i32* %18, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %149
  %158 = load i64, i64* %9, align 8
  store i64 %158, i64* %5, align 8
  br label %163

159:                                              ; preds = %149
  %160 = load i32, i32* %18, align 4
  %161 = sub nsw i32 0, %160
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %5, align 8
  br label %163

163:                                              ; preds = %159, %157, %30
  %164 = load i64, i64* %5, align 8
  ret i64 %164
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @request_firmware(i32*, i8*, i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i8*, i32) #1

declare dso_local i32 @pm8001_update_flash(%struct.pm8001_hba_info*) #1

declare dso_local i32 @pm8001_set_nvmd(%struct.pm8001_hba_info*) #1

declare dso_local i32 @release_firmware(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
