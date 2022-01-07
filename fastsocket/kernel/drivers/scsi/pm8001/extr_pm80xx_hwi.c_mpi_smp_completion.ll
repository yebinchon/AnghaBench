; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_smp_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_smp_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, %struct.pm8001_ccb_info* }
%struct.pm8001_ccb_info = type { %struct.pm8001_device*, %struct.sas_task* }
%struct.pm8001_device = type { i32 }
%struct.sas_task = type { i32, i32 (%struct.sas_task*)*, i32, %struct.TYPE_2__, i32, i32, %struct.task_status_struct }
%struct.TYPE_2__ = type { i32 }
%struct.task_status_struct = type { i8*, i8*, i8*, i32 }
%struct.smp_completion_resp = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"smp IO status 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"IO_SUCCESS\0A\00", align 1
@SAS_TASK_COMPLETE = common dso_local global i8* null, align 8
@SAM_STAT_GOOD = common dso_local global i8* null, align 8
@SMP_DIRECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"DIRECT RESPONSE Length:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"SMP Byte%d DMA data 0x%x psmp 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"IO_ABORTED IOMB\0A\00", align 1
@SAS_ABORTED_TASK = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"IO_UNDERFLOW\0A\00", align 1
@SAS_DATA_OVERRUN = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"IO_NO_DEVICE\0A\00", align 1
@SAS_PHY_DOWN = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"IO_ERROR_HW_TIMEOUT\0A\00", align 1
@SAM_STAT_BUSY = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"IO_XFER_ERROR_BREAK\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"IO_XFER_ERROR_PHY_NOT_READY\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED\0A\00", align 1
@SAS_OPEN_REJECT = common dso_local global i8* null, align 8
@SAS_OREJ_UNKNOWN = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [34 x i8] c"IO_OPEN_CNX_ERROR_ZONE_VIOLATION\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"IO_OPEN_CNX_ERROR_BREAK\0A\00", align 1
@SAS_OREJ_RSVD_CONT0 = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [33 x i8] c"IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"IO_OPEN_CNX_ERROR_BAD_DESTINATION\0A\00", align 1
@SAS_OREJ_BAD_DEST = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [49 x i8] c"IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED\0A\00", align 1
@SAS_OREJ_CONN_RATE = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [37 x i8] c"IO_OPEN_CNX_ERROR_WRONG_DESTINATION\0A\00", align 1
@SAS_OREJ_WRONG_DEST = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [24 x i8] c"IO_XFER_ERROR_RX_FRAME\0A\00", align 1
@SAS_DEV_NO_RESPONSE = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [28 x i8] c"IO_XFER_OPEN_RETRY_TIMEOUT\0A\00", align 1
@SAS_OREJ_RSVD_RETRY = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [32 x i8] c"IO_ERROR_INTERNAL_SMP_RESOURCE\0A\00", align 1
@SAS_QUEUE_FULL = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [18 x i8] c"IO_PORT_IN_RESET\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"IO_DS_NON_OPERATIONAL\0A\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"IO_DS_IN_RECOVERY\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"Unknown status 0x%x\0A\00", align 1
@SAS_TASK_STATE_PENDING = common dso_local global i32 0, align 4
@SAS_TASK_AT_INITIATOR = common dso_local global i32 0, align 4
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [83 x i8] c"task 0x%p done with io_status 0x%x resp 0x%xstat 0x%x but aborted by upper layer!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i8*)* @mpi_smp_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_smp_completion(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sas_task*, align 8
  %8 = alloca %struct.pm8001_ccb_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.smp_completion_resp*, align 8
  %13 = alloca %struct.task_status_struct*, align 8
  %14 = alloca %struct.pm8001_device*, align 8
  %15 = alloca i8*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %15, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr i8, i8* %16, i64 4
  %18 = bitcast i8* %17 to %struct.smp_completion_resp*
  store %struct.smp_completion_resp* %18, %struct.smp_completion_resp** %12, align 8
  %19 = load %struct.smp_completion_resp*, %struct.smp_completion_resp** %12, align 8
  %20 = getelementptr inbounds %struct.smp_completion_resp, %struct.smp_completion_resp* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @le32_to_cpu(i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.smp_completion_resp*, %struct.smp_completion_resp** %12, align 8
  %24 = getelementptr inbounds %struct.smp_completion_resp, %struct.smp_completion_resp* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le32_to_cpu(i32 %25)
  store i64 %26, i64* %11, align 8
  %27 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %28 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %27, i32 0, i32 1
  %29 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %28, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %29, i64 %30
  store %struct.pm8001_ccb_info* %31, %struct.pm8001_ccb_info** %8, align 8
  %32 = load %struct.smp_completion_resp*, %struct.smp_completion_resp** %12, align 8
  %33 = getelementptr inbounds %struct.smp_completion_resp, %struct.smp_completion_resp* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @le32_to_cpu(i32 %34)
  store i64 %35, i64* %5, align 8
  %36 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %37 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %36, i32 0, i32 1
  %38 = load %struct.sas_task*, %struct.sas_task** %37, align 8
  store %struct.sas_task* %38, %struct.sas_task** %7, align 8
  %39 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %40 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %39, i32 0, i32 6
  store %struct.task_status_struct* %40, %struct.task_status_struct** %13, align 8
  %41 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %42 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %41, i32 0, i32 0
  %43 = load %struct.pm8001_device*, %struct.pm8001_device** %42, align 8
  store %struct.pm8001_device* %43, %struct.pm8001_device** %14, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %2
  %47 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %47, i32 %49)
  br label %51

51:                                               ; preds = %46, %2
  %52 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %53 = icmp ne %struct.sas_task* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %56 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %61 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %59, %54, %51
  %66 = phi i1 [ true, %54 ], [ true, %51 ], [ %64, %59 ]
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %474

71:                                               ; preds = %65
  %72 = load i64, i64* %10, align 8
  switch i64 %72, label %397 [
    i64 133, label %73
    i64 153, label %143
    i64 135, label %161
    i64 148, label %181
    i64 150, label %191
    i64 132, label %201
    i64 131, label %211
    i64 138, label %221
    i64 136, label %234
    i64 146, label %247
    i64 143, label %260
    i64 129, label %260
    i64 140, label %260
    i64 142, label %260
    i64 141, label %260
    i64 139, label %260
    i64 147, label %276
    i64 145, label %289
    i64 137, label %302
    i64 130, label %315
    i64 128, label %325
    i64 149, label %338
    i64 134, label %348
    i64 151, label %361
    i64 152, label %371
    i64 144, label %384
  ]

73:                                               ; preds = %71
  %74 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %75 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %76 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %74, i32 %75)
  %77 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %78 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %79 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** @SAM_STAT_GOOD, align 8
  %81 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %82 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %84 = icmp ne %struct.pm8001_device* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %73
  %86 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %87 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %85, %73
  %91 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %92 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @SMP_DIRECT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %142

96:                                               ; preds = %90
  %97 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %98 = load i64, i64* %5, align 8
  %99 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %98)
  %100 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %97, i32 %99)
  %101 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %102 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = call i32 @sg_dma_address(i32* %103)
  %105 = call i32 @cpu_to_le64(i32 %104)
  %106 = call i64 @phys_to_virt(i32 %105)
  %107 = inttoptr i64 %106 to i8*
  store i8* %107, i8** %15, align 8
  store i64 0, i64* %6, align 8
  br label %108

108:                                              ; preds = %138, %96
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* %5, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %141

112:                                              ; preds = %108
  %113 = load %struct.smp_completion_resp*, %struct.smp_completion_resp** %12, align 8
  %114 = getelementptr inbounds %struct.smp_completion_resp, %struct.smp_completion_resp* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i64, i64* %6, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = load i8*, i8** %15, align 8
  %120 = load i64, i64* %6, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8 %118, i8* %121, align 1
  %122 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %123 = load i64, i64* %6, align 8
  %124 = load i8*, i8** %15, align 8
  %125 = load i64, i64* %6, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = load %struct.smp_completion_resp*, %struct.smp_completion_resp** %12, align 8
  %130 = getelementptr inbounds %struct.smp_completion_resp, %struct.smp_completion_resp* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i64, i64* %6, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %123, i32 %128, i32 %135)
  %137 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %122, i32 %136)
  br label %138

138:                                              ; preds = %112
  %139 = load i64, i64* %6, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %6, align 8
  br label %108

141:                                              ; preds = %108
  br label %142

142:                                              ; preds = %141, %90
  br label %408

143:                                              ; preds = %71
  %144 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %145 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %146 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %144, i32 %145)
  %147 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %148 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %149 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  %150 = load i8*, i8** @SAS_ABORTED_TASK, align 8
  %151 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %152 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  %153 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %154 = icmp ne %struct.pm8001_device* %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %143
  %156 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %157 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %155, %143
  br label %408

161:                                              ; preds = %71
  %162 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %163 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %164 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %162, i32 %163)
  %165 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %166 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %167 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  %168 = load i8*, i8** @SAS_DATA_OVERRUN, align 8
  %169 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %170 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  %171 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %172 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %171, i32 0, i32 3
  store i32 0, i32* %172, align 8
  %173 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %174 = icmp ne %struct.pm8001_device* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %161
  %176 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %177 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %175, %161
  br label %408

181:                                              ; preds = %71
  %182 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %183 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %184 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %182, i32 %183)
  %185 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %186 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %187 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %186, i32 0, i32 1
  store i8* %185, i8** %187, align 8
  %188 = load i8*, i8** @SAS_PHY_DOWN, align 8
  %189 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %190 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %189, i32 0, i32 0
  store i8* %188, i8** %190, align 8
  br label %408

191:                                              ; preds = %71
  %192 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %193 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %194 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %192, i32 %193)
  %195 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %196 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %197 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %196, i32 0, i32 1
  store i8* %195, i8** %197, align 8
  %198 = load i8*, i8** @SAM_STAT_BUSY, align 8
  %199 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %200 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %199, i32 0, i32 0
  store i8* %198, i8** %200, align 8
  br label %408

201:                                              ; preds = %71
  %202 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %203 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %204 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %202, i32 %203)
  %205 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %206 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %207 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %206, i32 0, i32 1
  store i8* %205, i8** %207, align 8
  %208 = load i8*, i8** @SAM_STAT_BUSY, align 8
  %209 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %210 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %209, i32 0, i32 0
  store i8* %208, i8** %210, align 8
  br label %408

211:                                              ; preds = %71
  %212 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %213 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %214 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %212, i32 %213)
  %215 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %216 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %217 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %216, i32 0, i32 1
  store i8* %215, i8** %217, align 8
  %218 = load i8*, i8** @SAM_STAT_BUSY, align 8
  %219 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %220 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %219, i32 0, i32 0
  store i8* %218, i8** %220, align 8
  br label %408

221:                                              ; preds = %71
  %222 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %223 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %224 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %222, i32 %223)
  %225 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %226 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %227 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %226, i32 0, i32 1
  store i8* %225, i8** %227, align 8
  %228 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %229 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %230 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %229, i32 0, i32 0
  store i8* %228, i8** %230, align 8
  %231 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %232 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %233 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %232, i32 0, i32 2
  store i8* %231, i8** %233, align 8
  br label %408

234:                                              ; preds = %71
  %235 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %236 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %237 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %235, i32 %236)
  %238 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %239 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %240 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %239, i32 0, i32 1
  store i8* %238, i8** %240, align 8
  %241 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %242 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %243 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %242, i32 0, i32 0
  store i8* %241, i8** %243, align 8
  %244 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %245 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %246 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %245, i32 0, i32 2
  store i8* %244, i8** %246, align 8
  br label %408

247:                                              ; preds = %71
  %248 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %249 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %250 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %248, i32 %249)
  %251 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %252 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %253 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %252, i32 0, i32 1
  store i8* %251, i8** %253, align 8
  %254 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %255 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %256 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %255, i32 0, i32 0
  store i8* %254, i8** %256, align 8
  %257 = load i8*, i8** @SAS_OREJ_RSVD_CONT0, align 8
  %258 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %259 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %258, i32 0, i32 2
  store i8* %257, i8** %259, align 8
  br label %408

260:                                              ; preds = %71, %71, %71, %71, %71, %71
  %261 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %262 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  %263 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %261, i32 %262)
  %264 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %265 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %266 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %265, i32 0, i32 1
  store i8* %264, i8** %266, align 8
  %267 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %268 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %269 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %268, i32 0, i32 0
  store i8* %267, i8** %269, align 8
  %270 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %271 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %272 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %271, i32 0, i32 2
  store i8* %270, i8** %272, align 8
  %273 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %274 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %275 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %273, %struct.pm8001_device* %274, i32 143)
  br label %408

276:                                              ; preds = %71
  %277 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %278 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  %279 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %277, i32 %278)
  %280 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %281 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %282 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %281, i32 0, i32 1
  store i8* %280, i8** %282, align 8
  %283 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %284 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %285 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %284, i32 0, i32 0
  store i8* %283, i8** %285, align 8
  %286 = load i8*, i8** @SAS_OREJ_BAD_DEST, align 8
  %287 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %288 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %287, i32 0, i32 2
  store i8* %286, i8** %288, align 8
  br label %408

289:                                              ; preds = %71
  %290 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %291 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0))
  %292 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %290, i32 %291)
  %293 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %294 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %295 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %294, i32 0, i32 1
  store i8* %293, i8** %295, align 8
  %296 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %297 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %298 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %297, i32 0, i32 0
  store i8* %296, i8** %298, align 8
  %299 = load i8*, i8** @SAS_OREJ_CONN_RATE, align 8
  %300 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %301 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %300, i32 0, i32 2
  store i8* %299, i8** %301, align 8
  br label %408

302:                                              ; preds = %71
  %303 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %304 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0))
  %305 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %303, i32 %304)
  %306 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %307 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %308 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %307, i32 0, i32 1
  store i8* %306, i8** %308, align 8
  %309 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %310 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %311 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %310, i32 0, i32 0
  store i8* %309, i8** %311, align 8
  %312 = load i8*, i8** @SAS_OREJ_WRONG_DEST, align 8
  %313 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %314 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %313, i32 0, i32 2
  store i8* %312, i8** %314, align 8
  br label %408

315:                                              ; preds = %71
  %316 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %317 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %318 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %316, i32 %317)
  %319 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %320 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %321 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %320, i32 0, i32 1
  store i8* %319, i8** %321, align 8
  %322 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %323 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %324 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %323, i32 0, i32 0
  store i8* %322, i8** %324, align 8
  br label %408

325:                                              ; preds = %71
  %326 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %327 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  %328 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %326, i32 %327)
  %329 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %330 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %331 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %330, i32 0, i32 1
  store i8* %329, i8** %331, align 8
  %332 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %333 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %334 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %333, i32 0, i32 0
  store i8* %332, i8** %334, align 8
  %335 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %336 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %337 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %336, i32 0, i32 2
  store i8* %335, i8** %337, align 8
  br label %408

338:                                              ; preds = %71
  %339 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %340 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %341 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %339, i32 %340)
  %342 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %343 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %344 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %343, i32 0, i32 1
  store i8* %342, i8** %344, align 8
  %345 = load i8*, i8** @SAS_QUEUE_FULL, align 8
  %346 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %347 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %346, i32 0, i32 0
  store i8* %345, i8** %347, align 8
  br label %408

348:                                              ; preds = %71
  %349 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %350 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  %351 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %349, i32 %350)
  %352 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %353 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %354 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %353, i32 0, i32 1
  store i8* %352, i8** %354, align 8
  %355 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %356 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %357 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %356, i32 0, i32 0
  store i8* %355, i8** %357, align 8
  %358 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %359 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %360 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %359, i32 0, i32 2
  store i8* %358, i8** %360, align 8
  br label %408

361:                                              ; preds = %71
  %362 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %363 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  %364 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %362, i32 %363)
  %365 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %366 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %367 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %366, i32 0, i32 1
  store i8* %365, i8** %367, align 8
  %368 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %369 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %370 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %369, i32 0, i32 0
  store i8* %368, i8** %370, align 8
  br label %408

371:                                              ; preds = %71
  %372 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %373 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  %374 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %372, i32 %373)
  %375 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %376 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %377 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %376, i32 0, i32 1
  store i8* %375, i8** %377, align 8
  %378 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %379 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %380 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %379, i32 0, i32 0
  store i8* %378, i8** %380, align 8
  %381 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %382 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %383 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %382, i32 0, i32 2
  store i8* %381, i8** %383, align 8
  br label %408

384:                                              ; preds = %71
  %385 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %386 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0))
  %387 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %385, i32 %386)
  %388 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %389 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %390 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %389, i32 0, i32 1
  store i8* %388, i8** %390, align 8
  %391 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %392 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %393 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %392, i32 0, i32 0
  store i8* %391, i8** %393, align 8
  %394 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %395 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %396 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %395, i32 0, i32 2
  store i8* %394, i8** %396, align 8
  br label %408

397:                                              ; preds = %71
  %398 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %399 = load i64, i64* %10, align 8
  %400 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i64 %399)
  %401 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %398, i32 %400)
  %402 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %403 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %404 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %403, i32 0, i32 1
  store i8* %402, i8** %404, align 8
  %405 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %406 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %407 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %406, i32 0, i32 0
  store i8* %405, i8** %407, align 8
  br label %408

408:                                              ; preds = %397, %384, %371, %361, %348, %338, %325, %315, %302, %289, %276, %260, %247, %234, %221, %211, %201, %191, %181, %180, %160, %142
  %409 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %410 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %409, i32 0, i32 2
  %411 = load i64, i64* %9, align 8
  %412 = call i32 @spin_lock_irqsave(i32* %410, i64 %411)
  %413 = load i32, i32* @SAS_TASK_STATE_PENDING, align 4
  %414 = xor i32 %413, -1
  %415 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %416 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = and i32 %417, %414
  store i32 %418, i32* %416, align 8
  %419 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %420 = xor i32 %419, -1
  %421 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %422 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = and i32 %423, %420
  store i32 %424, i32* %422, align 8
  %425 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %426 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %427 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = or i32 %428, %425
  store i32 %429, i32* %427, align 8
  %430 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %431 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %434 = and i32 %432, %433
  %435 = call i64 @unlikely(i32 %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %458

437:                                              ; preds = %408
  %438 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %439 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %438, i32 0, i32 2
  %440 = load i64, i64* %9, align 8
  %441 = call i32 @spin_unlock_irqrestore(i32* %439, i64 %440)
  %442 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %443 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %444 = load i64, i64* %10, align 8
  %445 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %446 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %445, i32 0, i32 1
  %447 = load i8*, i8** %446, align 8
  %448 = load %struct.task_status_struct*, %struct.task_status_struct** %13, align 8
  %449 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %448, i32 0, i32 0
  %450 = load i8*, i8** %449, align 8
  %451 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.25, i64 0, i64 0), %struct.sas_task* %443, i64 %444, i8* %447, i8* %450)
  %452 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %442, i32 %451)
  %453 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %454 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %455 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %456 = load i64, i64* %11, align 8
  %457 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %453, %struct.sas_task* %454, %struct.pm8001_ccb_info* %455, i64 %456)
  br label %474

458:                                              ; preds = %408
  %459 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %460 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %459, i32 0, i32 2
  %461 = load i64, i64* %9, align 8
  %462 = call i32 @spin_unlock_irqrestore(i32* %460, i64 %461)
  %463 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %464 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %465 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %466 = load i64, i64* %11, align 8
  %467 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %463, %struct.sas_task* %464, %struct.pm8001_ccb_info* %465, i64 %466)
  %468 = call i32 (...) @mb()
  %469 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %470 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %469, i32 0, i32 1
  %471 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %470, align 8
  %472 = load %struct.sas_task*, %struct.sas_task** %7, align 8
  %473 = call i32 %471(%struct.sas_task* %472)
  br label %474

474:                                              ; preds = %70, %458, %437
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PM8001_IO_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i64 @phys_to_virt(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @sg_dma_address(i32*) #1

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
