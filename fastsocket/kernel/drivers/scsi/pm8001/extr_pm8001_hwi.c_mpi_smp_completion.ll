; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_smp_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_smp_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.pm8001_ccb_info* }
%struct.pm8001_ccb_info = type { %struct.pm8001_device*, %struct.sas_task* }
%struct.pm8001_device = type { i32 }
%struct.sas_task = type { i32, i32 (%struct.sas_task*)*, i32, i32, i32, %struct.task_status_struct }
%struct.task_status_struct = type { i8*, i8*, i8*, i32 }
%struct.smp_completion_resp = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"smp IO status 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"IO_SUCCESS\0A\00", align 1
@SAS_TASK_COMPLETE = common dso_local global i8* null, align 8
@SAM_STAT_GOOD = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"IO_ABORTED IOMB\0A\00", align 1
@SAS_ABORTED_TASK = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"IO_UNDERFLOW\0A\00", align 1
@SAS_DATA_OVERRUN = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"IO_NO_DEVICE\0A\00", align 1
@SAS_PHY_DOWN = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"IO_ERROR_HW_TIMEOUT\0A\00", align 1
@SAM_STAT_BUSY = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"IO_XFER_ERROR_BREAK\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"IO_XFER_ERROR_PHY_NOT_READY\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED\0A\00", align 1
@SAS_OPEN_REJECT = common dso_local global i8* null, align 8
@SAS_OREJ_UNKNOWN = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"IO_OPEN_CNX_ERROR_ZONE_VIOLATION\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"IO_OPEN_CNX_ERROR_BREAK\0A\00", align 1
@SAS_OREJ_RSVD_CONT0 = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [33 x i8] c"IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"IO_OPEN_CNX_ERROR_BAD_DESTINATION\0A\00", align 1
@SAS_OREJ_BAD_DEST = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [49 x i8] c"IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED\0A\00", align 1
@SAS_OREJ_CONN_RATE = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [37 x i8] c"IO_OPEN_CNX_ERROR_WRONG_DESTINATION\0A\00", align 1
@SAS_OREJ_WRONG_DEST = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [24 x i8] c"IO_XFER_ERROR_RX_FRAME\0A\00", align 1
@SAS_DEV_NO_RESPONSE = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [28 x i8] c"IO_XFER_OPEN_RETRY_TIMEOUT\0A\00", align 1
@SAS_OREJ_RSVD_RETRY = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [32 x i8] c"IO_ERROR_INTERNAL_SMP_RESOURCE\0A\00", align 1
@SAS_QUEUE_FULL = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [18 x i8] c"IO_PORT_IN_RESET\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"IO_DS_NON_OPERATIONAL\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"IO_DS_IN_RECOVERY\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"Unknown status 0x%x\0A\00", align 1
@SAS_TASK_STATE_PENDING = common dso_local global i32 0, align 4
@SAS_TASK_AT_INITIATOR = common dso_local global i32 0, align 4
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [84 x i8] c"task 0x%p done with io_status 0x%x resp 0x%x stat 0x%x but aborted by upper layer!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i8*)* @mpi_smp_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_smp_completion(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sas_task*, align 8
  %7 = alloca %struct.pm8001_ccb_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.smp_completion_resp*, align 8
  %12 = alloca %struct.task_status_struct*, align 8
  %13 = alloca %struct.pm8001_device*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr i8, i8* %14, i64 4
  %16 = bitcast i8* %15 to %struct.smp_completion_resp*
  store %struct.smp_completion_resp* %16, %struct.smp_completion_resp** %11, align 8
  %17 = load %struct.smp_completion_resp*, %struct.smp_completion_resp** %11, align 8
  %18 = getelementptr inbounds %struct.smp_completion_resp, %struct.smp_completion_resp* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @le32_to_cpu(i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load %struct.smp_completion_resp*, %struct.smp_completion_resp** %11, align 8
  %22 = getelementptr inbounds %struct.smp_completion_resp, %struct.smp_completion_resp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le32_to_cpu(i32 %23)
  store i64 %24, i64* %10, align 8
  %25 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %26 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %25, i32 0, i32 0
  %27 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %27, i64 %28
  store %struct.pm8001_ccb_info* %29, %struct.pm8001_ccb_info** %7, align 8
  %30 = load %struct.smp_completion_resp*, %struct.smp_completion_resp** %11, align 8
  %31 = getelementptr inbounds %struct.smp_completion_resp, %struct.smp_completion_resp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le32_to_cpu(i32 %32)
  store i64 %33, i64* %5, align 8
  %34 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %35 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %34, i32 0, i32 1
  %36 = load %struct.sas_task*, %struct.sas_task** %35, align 8
  store %struct.sas_task* %36, %struct.sas_task** %6, align 8
  %37 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %38 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %37, i32 0, i32 5
  store %struct.task_status_struct* %38, %struct.task_status_struct** %12, align 8
  %39 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %40 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %39, i32 0, i32 0
  %41 = load %struct.pm8001_device*, %struct.pm8001_device** %40, align 8
  store %struct.pm8001_device* %41, %struct.pm8001_device** %13, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %2
  %45 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %45, i32 %47)
  br label %49

49:                                               ; preds = %44, %2
  %50 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %51 = icmp ne %struct.sas_task* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %54 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %59 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %57, %52, %49
  %64 = phi i1 [ true, %52 ], [ true, %49 ], [ %62, %57 ]
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %420

69:                                               ; preds = %63
  %70 = load i64, i64* %9, align 8
  switch i64 %70, label %343 [
    i64 132, label %71
    i64 148, label %89
    i64 134, label %107
    i64 143, label %127
    i64 145, label %137
    i64 131, label %147
    i64 130, label %157
    i64 137, label %167
    i64 135, label %180
    i64 141, label %193
    i64 138, label %206
    i64 142, label %222
    i64 140, label %235
    i64 136, label %248
    i64 129, label %261
    i64 128, label %271
    i64 144, label %284
    i64 133, label %294
    i64 146, label %307
    i64 147, label %317
    i64 139, label %330
  ]

71:                                               ; preds = %69
  %72 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %73 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %72, i32 %73)
  %75 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %76 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %77 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @SAM_STAT_GOOD, align 8
  %79 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %80 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load %struct.pm8001_device*, %struct.pm8001_device** %13, align 8
  %82 = icmp ne %struct.pm8001_device* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %71
  %84 = load %struct.pm8001_device*, %struct.pm8001_device** %13, align 8
  %85 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %71
  br label %354

89:                                               ; preds = %69
  %90 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %91 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %92 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %90, i32 %91)
  %93 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %94 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %95 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** @SAS_ABORTED_TASK, align 8
  %97 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %98 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load %struct.pm8001_device*, %struct.pm8001_device** %13, align 8
  %100 = icmp ne %struct.pm8001_device* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %89
  %102 = load %struct.pm8001_device*, %struct.pm8001_device** %13, align 8
  %103 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %101, %89
  br label %354

107:                                              ; preds = %69
  %108 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %109 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %110 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %108, i32 %109)
  %111 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %112 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %113 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** @SAS_DATA_OVERRUN, align 8
  %115 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %116 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %118 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %117, i32 0, i32 3
  store i32 0, i32* %118, align 8
  %119 = load %struct.pm8001_device*, %struct.pm8001_device** %13, align 8
  %120 = icmp ne %struct.pm8001_device* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %107
  %122 = load %struct.pm8001_device*, %struct.pm8001_device** %13, align 8
  %123 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %121, %107
  br label %354

127:                                              ; preds = %69
  %128 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %129 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %130 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %128, i32 %129)
  %131 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %132 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %133 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  %134 = load i8*, i8** @SAS_PHY_DOWN, align 8
  %135 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %136 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  br label %354

137:                                              ; preds = %69
  %138 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %139 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %140 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %138, i32 %139)
  %141 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %142 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %143 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %142, i32 0, i32 1
  store i8* %141, i8** %143, align 8
  %144 = load i8*, i8** @SAM_STAT_BUSY, align 8
  %145 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %146 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  br label %354

147:                                              ; preds = %69
  %148 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %149 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %150 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %148, i32 %149)
  %151 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %152 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %153 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** @SAM_STAT_BUSY, align 8
  %155 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %156 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  br label %354

157:                                              ; preds = %69
  %158 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %159 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %160 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %158, i32 %159)
  %161 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %162 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %163 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  %164 = load i8*, i8** @SAM_STAT_BUSY, align 8
  %165 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %166 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %165, i32 0, i32 0
  store i8* %164, i8** %166, align 8
  br label %354

167:                                              ; preds = %69
  %168 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %169 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %170 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %168, i32 %169)
  %171 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %172 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %173 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  %174 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %175 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %176 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  %177 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %178 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %179 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %178, i32 0, i32 2
  store i8* %177, i8** %179, align 8
  br label %354

180:                                              ; preds = %69
  %181 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %182 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %183 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %181, i32 %182)
  %184 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %185 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %186 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %185, i32 0, i32 1
  store i8* %184, i8** %186, align 8
  %187 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %188 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %189 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %188, i32 0, i32 0
  store i8* %187, i8** %189, align 8
  %190 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %191 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %192 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %191, i32 0, i32 2
  store i8* %190, i8** %192, align 8
  br label %354

193:                                              ; preds = %69
  %194 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %195 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %196 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %194, i32 %195)
  %197 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %198 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %199 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  %200 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %201 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %202 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %201, i32 0, i32 0
  store i8* %200, i8** %202, align 8
  %203 = load i8*, i8** @SAS_OREJ_RSVD_CONT0, align 8
  %204 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %205 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %204, i32 0, i32 2
  store i8* %203, i8** %205, align 8
  br label %354

206:                                              ; preds = %69
  %207 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %208 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %209 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %207, i32 %208)
  %210 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %211 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %212 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %211, i32 0, i32 1
  store i8* %210, i8** %212, align 8
  %213 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %214 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %215 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %214, i32 0, i32 0
  store i8* %213, i8** %215, align 8
  %216 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %217 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %218 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %217, i32 0, i32 2
  store i8* %216, i8** %218, align 8
  %219 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %220 = load %struct.pm8001_device*, %struct.pm8001_device** %13, align 8
  %221 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %219, %struct.pm8001_device* %220, i32 138)
  br label %354

222:                                              ; preds = %69
  %223 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %224 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %225 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %223, i32 %224)
  %226 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %227 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %228 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %227, i32 0, i32 1
  store i8* %226, i8** %228, align 8
  %229 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %230 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %231 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %230, i32 0, i32 0
  store i8* %229, i8** %231, align 8
  %232 = load i8*, i8** @SAS_OREJ_BAD_DEST, align 8
  %233 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %234 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %233, i32 0, i32 2
  store i8* %232, i8** %234, align 8
  br label %354

235:                                              ; preds = %69
  %236 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %237 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0))
  %238 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %236, i32 %237)
  %239 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %240 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %241 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %240, i32 0, i32 1
  store i8* %239, i8** %241, align 8
  %242 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %243 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %244 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %243, i32 0, i32 0
  store i8* %242, i8** %244, align 8
  %245 = load i8*, i8** @SAS_OREJ_CONN_RATE, align 8
  %246 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %247 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %246, i32 0, i32 2
  store i8* %245, i8** %247, align 8
  br label %354

248:                                              ; preds = %69
  %249 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %250 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  %251 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %249, i32 %250)
  %252 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %253 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %254 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %253, i32 0, i32 1
  store i8* %252, i8** %254, align 8
  %255 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %256 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %257 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %256, i32 0, i32 0
  store i8* %255, i8** %257, align 8
  %258 = load i8*, i8** @SAS_OREJ_WRONG_DEST, align 8
  %259 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %260 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %259, i32 0, i32 2
  store i8* %258, i8** %260, align 8
  br label %354

261:                                              ; preds = %69
  %262 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %263 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %264 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %262, i32 %263)
  %265 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %266 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %267 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %266, i32 0, i32 1
  store i8* %265, i8** %267, align 8
  %268 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %269 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %270 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %269, i32 0, i32 0
  store i8* %268, i8** %270, align 8
  br label %354

271:                                              ; preds = %69
  %272 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %273 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %274 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %272, i32 %273)
  %275 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %276 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %277 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %276, i32 0, i32 1
  store i8* %275, i8** %277, align 8
  %278 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %279 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %280 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %279, i32 0, i32 0
  store i8* %278, i8** %280, align 8
  %281 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %282 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %283 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %282, i32 0, i32 2
  store i8* %281, i8** %283, align 8
  br label %354

284:                                              ; preds = %69
  %285 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %286 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  %287 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %285, i32 %286)
  %288 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %289 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %290 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %289, i32 0, i32 1
  store i8* %288, i8** %290, align 8
  %291 = load i8*, i8** @SAS_QUEUE_FULL, align 8
  %292 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %293 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %292, i32 0, i32 0
  store i8* %291, i8** %293, align 8
  br label %354

294:                                              ; preds = %69
  %295 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %296 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %297 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %295, i32 %296)
  %298 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %299 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %300 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %299, i32 0, i32 1
  store i8* %298, i8** %300, align 8
  %301 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %302 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %303 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %302, i32 0, i32 0
  store i8* %301, i8** %303, align 8
  %304 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %305 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %306 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %305, i32 0, i32 2
  store i8* %304, i8** %306, align 8
  br label %354

307:                                              ; preds = %69
  %308 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %309 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %310 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %308, i32 %309)
  %311 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %312 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %313 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %312, i32 0, i32 1
  store i8* %311, i8** %313, align 8
  %314 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %315 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %316 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %315, i32 0, i32 0
  store i8* %314, i8** %316, align 8
  br label %354

317:                                              ; preds = %69
  %318 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %319 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  %320 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %318, i32 %319)
  %321 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %322 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %323 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %322, i32 0, i32 1
  store i8* %321, i8** %323, align 8
  %324 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %325 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %326 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %325, i32 0, i32 0
  store i8* %324, i8** %326, align 8
  %327 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %328 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %329 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %328, i32 0, i32 2
  store i8* %327, i8** %329, align 8
  br label %354

330:                                              ; preds = %69
  %331 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %332 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0))
  %333 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %331, i32 %332)
  %334 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %335 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %336 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %335, i32 0, i32 1
  store i8* %334, i8** %336, align 8
  %337 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %338 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %339 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %338, i32 0, i32 0
  store i8* %337, i8** %339, align 8
  %340 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %341 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %342 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %341, i32 0, i32 2
  store i8* %340, i8** %342, align 8
  br label %354

343:                                              ; preds = %69
  %344 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %345 = load i64, i64* %9, align 8
  %346 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i64 %345)
  %347 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %344, i32 %346)
  %348 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %349 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %350 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %349, i32 0, i32 1
  store i8* %348, i8** %350, align 8
  %351 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %352 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %353 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %352, i32 0, i32 0
  store i8* %351, i8** %353, align 8
  br label %354

354:                                              ; preds = %343, %330, %317, %307, %294, %284, %271, %261, %248, %235, %222, %206, %193, %180, %167, %157, %147, %137, %127, %126, %106, %88
  %355 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %356 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %355, i32 0, i32 2
  %357 = load i64, i64* %8, align 8
  %358 = call i32 @spin_lock_irqsave(i32* %356, i64 %357)
  %359 = load i32, i32* @SAS_TASK_STATE_PENDING, align 4
  %360 = xor i32 %359, -1
  %361 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %362 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = and i32 %363, %360
  store i32 %364, i32* %362, align 8
  %365 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %366 = xor i32 %365, -1
  %367 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %368 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = and i32 %369, %366
  store i32 %370, i32* %368, align 8
  %371 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %372 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %373 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = or i32 %374, %371
  store i32 %375, i32* %373, align 8
  %376 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %377 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %380 = and i32 %378, %379
  %381 = call i64 @unlikely(i32 %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %404

383:                                              ; preds = %354
  %384 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %385 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %384, i32 0, i32 2
  %386 = load i64, i64* %8, align 8
  %387 = call i32 @spin_unlock_irqrestore(i32* %385, i64 %386)
  %388 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %389 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %390 = load i64, i64* %9, align 8
  %391 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %392 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %391, i32 0, i32 1
  %393 = load i8*, i8** %392, align 8
  %394 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %395 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %394, i32 0, i32 0
  %396 = load i8*, i8** %395, align 8
  %397 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.23, i64 0, i64 0), %struct.sas_task* %389, i64 %390, i8* %393, i8* %396)
  %398 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %388, i32 %397)
  %399 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %400 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %401 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %402 = load i64, i64* %10, align 8
  %403 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %399, %struct.sas_task* %400, %struct.pm8001_ccb_info* %401, i64 %402)
  br label %420

404:                                              ; preds = %354
  %405 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %406 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %405, i32 0, i32 2
  %407 = load i64, i64* %8, align 8
  %408 = call i32 @spin_unlock_irqrestore(i32* %406, i64 %407)
  %409 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %410 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %411 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %412 = load i64, i64* %10, align 8
  %413 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %409, %struct.sas_task* %410, %struct.pm8001_ccb_info* %411, i64 %412)
  %414 = call i32 (...) @mb()
  %415 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %416 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %415, i32 0, i32 1
  %417 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %416, align 8
  %418 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %419 = call i32 %417(%struct.sas_task* %418)
  br label %420

420:                                              ; preds = %68, %404, %383
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PM8001_IO_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_handle_event(%struct.pm8001_hba_info*, %struct.pm8001_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info*, %struct.sas_task*, %struct.pm8001_ccb_info*, i64) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
