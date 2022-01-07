; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_fw_flash_update_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_fw_flash_update_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, %struct.pm8001_ccb_info* }
%struct.pm8001_ccb_info = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.fw_control_ex = type { i32 }
%struct.fw_flash_Update_resp = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c": FLASH_UPDATE_COMPLETE_PENDING_REBOOT\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c": FLASH_UPDATE_IN_PROGRESS\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c": FLASH_UPDATE_HDR_ERR\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c": FLASH_UPDATE_OFFSET_ERR\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c": FLASH_UPDATE_CRC_ERR\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c": FLASH_UPDATE_LENGTH_ERR\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c": FLASH_UPDATE_HW_ERR\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c": FLASH_UPDATE_DNLD_NOT_SUPPORTED\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c": FLASH_UPDATE_DISABLED\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"No matched status = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_mpi_fw_flash_update_resp(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fw_control_ex, align 4
  %7 = alloca %struct.fw_flash_Update_resp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pm8001_ccb_info*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr i8, i8* %10, i64 4
  %12 = bitcast i8* %11 to %struct.fw_flash_Update_resp*
  store %struct.fw_flash_Update_resp* %12, %struct.fw_flash_Update_resp** %7, align 8
  %13 = load %struct.fw_flash_Update_resp*, %struct.fw_flash_Update_resp** %7, align 8
  %14 = getelementptr inbounds %struct.fw_flash_Update_resp, %struct.fw_flash_Update_resp* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @le32_to_cpu(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %18 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %17, i32 0, i32 1
  %19 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %19, i64 %20
  store %struct.pm8001_ccb_info* %21, %struct.pm8001_ccb_info** %9, align 8
  %22 = load %struct.fw_flash_Update_resp*, %struct.fw_flash_Update_resp** %7, align 8
  %23 = getelementptr inbounds %struct.fw_flash_Update_resp, %struct.fw_flash_Update_resp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  store i64 %25, i64* %5, align 8
  %26 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %9, align 8
  %27 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @memcpy(%struct.fw_control_ex* %6, %struct.TYPE_4__* %28, i32 4)
  %30 = load i64, i64* %5, align 8
  switch i64 %30, label %67 [
    i64 136, label %31
    i64 130, label %35
    i64 132, label %39
    i64 128, label %43
    i64 135, label %47
    i64 129, label %51
    i64 131, label %55
    i64 133, label %59
    i64 134, label %63
  ]

31:                                               ; preds = %2
  %32 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %33 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %32, i32 %33)
  br label %72

35:                                               ; preds = %2
  %36 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %37 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %36, i32 %37)
  br label %72

39:                                               ; preds = %2
  %40 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %41 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %40, i32 %41)
  br label %72

43:                                               ; preds = %2
  %44 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %45 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %46 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %44, i32 %45)
  br label %72

47:                                               ; preds = %2
  %48 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %49 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %50 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %48, i32 %49)
  br label %72

51:                                               ; preds = %2
  %52 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %53 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %54 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %52, i32 %53)
  br label %72

55:                                               ; preds = %2
  %56 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %57 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %58 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %56, i32 %57)
  br label %72

59:                                               ; preds = %2
  %60 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %61 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %62 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %60, i32 %61)
  br label %72

63:                                               ; preds = %2
  %64 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %65 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %66 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %64, i32 %65)
  br label %72

67:                                               ; preds = %2
  %68 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i64 %69)
  %71 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %68, i32 %70)
  br label %72

72:                                               ; preds = %67, %63, %59, %55, %51, %47, %43, %39, %35, %31
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %9, align 8
  %75 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i64 %73, i64* %79, align 8
  %80 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %81 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @complete(i32 %82)
  %84 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %9, align 8
  %85 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  %86 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %9, align 8
  %87 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %86, i32 0, i32 0
  store i32 -1, i32* %87, align 8
  %88 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @pm8001_ccb_free(%struct.pm8001_hba_info* %88, i64 %89)
  ret i32 0
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(%struct.fw_control_ex*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @complete(i32) #1

declare dso_local i32 @pm8001_ccb_free(%struct.pm8001_hba_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
