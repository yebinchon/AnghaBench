; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_task_abort_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_task_abort_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.pm8001_ccb_info* }
%struct.pm8001_ccb_info = type { %struct.pm8001_device*, %struct.sas_task* }
%struct.pm8001_device = type { i32 }
%struct.sas_task = type { i32 (%struct.sas_task*)*, i32, i32, %struct.task_status_struct }
%struct.task_status_struct = type { i32, i32 }
%struct.task_abort_resp = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c" TAG NULL. RETURNING !!!\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c" TASK NULL. RETURNING !!!\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"task abort failed status 0x%x ,tag = 0x%x, scp= 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"IO_SUCCESS\0A\00", align 1
@SAS_TASK_COMPLETE = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"IO_NOT_VALID\0A\00", align 1
@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@SAS_TASK_STATE_PENDING = common dso_local global i32 0, align 4
@SAS_TASK_AT_INITIATOR = common dso_local global i32 0, align 4
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@NCQ_ABORT_ALL_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_mpi_task_abort_resp(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sas_task*, align 8
  %7 = alloca %struct.pm8001_ccb_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.task_status_struct*, align 8
  %13 = alloca %struct.pm8001_device*, align 8
  %14 = alloca %struct.task_abort_resp*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr i8, i8* %15, i64 4
  %17 = bitcast i8* %16 to %struct.task_abort_resp*
  store %struct.task_abort_resp* %17, %struct.task_abort_resp** %14, align 8
  %18 = load %struct.task_abort_resp*, %struct.task_abort_resp** %14, align 8
  %19 = getelementptr inbounds %struct.task_abort_resp, %struct.task_abort_resp* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le32_to_cpu(i32 %20)
  store i64 %21, i64* %9, align 8
  %22 = load %struct.task_abort_resp*, %struct.task_abort_resp** %14, align 8
  %23 = getelementptr inbounds %struct.task_abort_resp, %struct.task_abort_resp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %30 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %29, i32 %30)
  store i32 -1, i32* %3, align 4
  br label %143

32:                                               ; preds = %2
  %33 = load %struct.task_abort_resp*, %struct.task_abort_resp** %14, align 8
  %34 = getelementptr inbounds %struct.task_abort_resp, %struct.task_abort_resp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le32_to_cpu(i32 %35)
  store i64 %36, i64* %11, align 8
  %37 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %38 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %37, i32 0, i32 0
  %39 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %39, i64 %40
  store %struct.pm8001_ccb_info* %41, %struct.pm8001_ccb_info** %7, align 8
  %42 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %43 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %42, i32 0, i32 1
  %44 = load %struct.sas_task*, %struct.sas_task** %43, align 8
  store %struct.sas_task* %44, %struct.sas_task** %6, align 8
  %45 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %46 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %45, i32 0, i32 0
  %47 = load %struct.pm8001_device*, %struct.pm8001_device** %46, align 8
  store %struct.pm8001_device* %47, %struct.pm8001_device** %13, align 8
  %48 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %49 = icmp ne %struct.sas_task* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %32
  %51 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %52 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %53 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %51, i32 %52)
  store i32 -1, i32* %3, align 4
  br label %143

54:                                               ; preds = %32
  %55 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %56 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %55, i32 0, i32 3
  store %struct.task_status_struct* %56, %struct.task_status_struct** %12, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %61, i64 %62, i64 %63)
  %65 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %60, i32 %64)
  br label %66

66:                                               ; preds = %59, %54
  %67 = load i64, i64* %9, align 8
  switch i64 %67, label %85 [
    i64 128, label %68
    i64 129, label %78
  ]

68:                                               ; preds = %66
  %69 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %70 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %71 = call i32 @PM8001_EH_DBG(%struct.pm8001_hba_info* %69, i32 %70)
  %72 = load i32, i32* @SAS_TASK_COMPLETE, align 4
  %73 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %74 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @SAM_STAT_GOOD, align 4
  %76 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %77 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %85

78:                                               ; preds = %66
  %79 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %80 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %81 = call i32 @PM8001_EH_DBG(%struct.pm8001_hba_info* %79, i32 %80)
  %82 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  %83 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %84 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %66, %78, %68
  %86 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %87 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %86, i32 0, i32 1
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @spin_lock_irqsave(i32* %87, i64 %88)
  %90 = load i32, i32* @SAS_TASK_STATE_PENDING, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %93 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %99 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %103 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %104 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %108 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %107, i32 0, i32 1
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  %111 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %112 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %113 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %111, %struct.sas_task* %112, %struct.pm8001_ccb_info* %113, i64 %114)
  %116 = call i32 (...) @mb()
  %117 = load %struct.pm8001_device*, %struct.pm8001_device** %13, align 8
  %118 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @NCQ_ABORT_ALL_FLAG, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %85
  %124 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %125 = icmp ne %struct.sas_task* %124, null
  br i1 %125, label %126, label %136

126:                                              ; preds = %123
  %127 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %128 = load i64, i64* %10, align 8
  %129 = call i32 @pm8001_tag_free(%struct.pm8001_hba_info* %127, i64 %128)
  %130 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %131 = call i32 @sas_free_task(%struct.sas_task* %130)
  %132 = load %struct.pm8001_device*, %struct.pm8001_device** %13, align 8
  %133 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, -1073741825
  store i32 %135, i32* %133, align 4
  br label %142

136:                                              ; preds = %123, %85
  %137 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %138 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %137, i32 0, i32 0
  %139 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %138, align 8
  %140 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %141 = call i32 %139(%struct.sas_task* %140)
  br label %142

142:                                              ; preds = %136, %126
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %50, %28
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @PM8001_EH_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info*, %struct.sas_task*, %struct.pm8001_ccb_info*, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @pm8001_tag_free(%struct.pm8001_hba_info*, i64) #1

declare dso_local i32 @sas_free_task(%struct.sas_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
