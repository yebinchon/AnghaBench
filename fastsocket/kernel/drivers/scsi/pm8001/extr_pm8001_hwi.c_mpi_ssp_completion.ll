; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_ssp_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_ssp_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, %struct.pm8001_ccb_info* }
%struct.pm8001_ccb_info = type { %struct.sas_task*, %struct.pm8001_device*, i64 }
%struct.sas_task = type { i32, i32 (%struct.sas_task*)*, i32, i32, %struct.task_status_struct, i32, i32 }
%struct.task_status_struct = type { i64, i8*, i8*, i8* }
%struct.pm8001_device = type { i32 }
%struct.ssp_completion_resp = type { %struct.ssp_response_iu, i32, i32, i32 }
%struct.ssp_response_iu = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"sas IO status 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"IO_SUCCESS,param = %d\0A\00", align 1
@SAS_TASK_COMPLETE = common dso_local global i8* null, align 8
@SAM_STAT_GOOD = common dso_local global i8* null, align 8
@SAS_PROTO_RESPONSE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"IO_ABORTED IOMB Tag\0A\00", align 1
@SAS_ABORTED_TASK = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"IO_UNDERFLOW,param = %d\0A\00", align 1
@SAS_DATA_UNDERRUN = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"IO_NO_DEVICE\0A\00", align 1
@SAS_TASK_UNDELIVERED = common dso_local global i8* null, align 8
@SAS_PHY_DOWN = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"IO_XFER_ERROR_BREAK\0A\00", align 1
@SAS_OPEN_REJECT = common dso_local global i8* null, align 8
@SAS_OREJ_RSVD_RETRY = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"IO_XFER_ERROR_PHY_NOT_READY\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED\0A\00", align 1
@SAS_OREJ_EPROTO = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [34 x i8] c"IO_OPEN_CNX_ERROR_ZONE_VIOLATION\0A\00", align 1
@SAS_OREJ_UNKNOWN = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"IO_OPEN_CNX_ERROR_BREAK\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"IO_OPEN_CNX_ERROR_BAD_DESTINATION\0A\00", align 1
@SAS_OREJ_BAD_DEST = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [49 x i8] c"IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED\0A\00", align 1
@SAS_OREJ_CONN_RATE = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [37 x i8] c"IO_OPEN_CNX_ERROR_WRONG_DESTINATION\0A\00", align 1
@SAS_OREJ_WRONG_DEST = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [28 x i8] c"IO_XFER_ERROR_NAK_RECEIVED\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"IO_XFER_ERROR_ACK_NAK_TIMEOUT\0A\00", align 1
@SAS_NAK_R_ERR = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"IO_XFER_ERROR_DMA\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"IO_XFER_OPEN_RETRY_TIMEOUT\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"IO_XFER_ERROR_OFFSET_MISMATCH\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"IO_PORT_IN_RESET\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"IO_DS_NON_OPERATIONAL\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"IO_DS_IN_RECOVERY\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"IO_TM_TAG_NOT_FOUND\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"IO_SSP_EXT_IU_ZERO_LEN_ERROR\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"Unknown status 0x%x\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"scsi_status = %x\0A \00", align 1
@SAS_TASK_STATE_PENDING = common dso_local global i32 0, align 4
@SAS_TASK_AT_INITIATOR = common dso_local global i32 0, align 4
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [84 x i8] c"task 0x%p done with io_status 0x%x resp 0x%x stat 0x%x but aborted by upper layer!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i8*)* @mpi_ssp_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_ssp_completion(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca %struct.pm8001_ccb_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ssp_completion_resp*, align 8
  %12 = alloca %struct.task_status_struct*, align 8
  %13 = alloca %struct.ssp_response_iu*, align 8
  %14 = alloca %struct.pm8001_device*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr i8, i8* %15, i64 4
  %17 = bitcast i8* %16 to %struct.ssp_completion_resp*
  store %struct.ssp_completion_resp* %17, %struct.ssp_completion_resp** %11, align 8
  %18 = load %struct.ssp_completion_resp*, %struct.ssp_completion_resp** %11, align 8
  %19 = getelementptr inbounds %struct.ssp_completion_resp, %struct.ssp_completion_resp* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le32_to_cpu(i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.ssp_completion_resp*, %struct.ssp_completion_resp** %11, align 8
  %23 = getelementptr inbounds %struct.ssp_completion_resp, %struct.ssp_completion_resp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %27 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %26, i32 0, i32 1
  %28 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %28, i64 %29
  store %struct.pm8001_ccb_info* %30, %struct.pm8001_ccb_info** %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %31, 151
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %35 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %40 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  br label %507

41:                                               ; preds = %33, %2
  %42 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %43 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %42, i32 0, i32 1
  %44 = load %struct.pm8001_device*, %struct.pm8001_device** %43, align 8
  store %struct.pm8001_device* %44, %struct.pm8001_device** %14, align 8
  %45 = load %struct.ssp_completion_resp*, %struct.ssp_completion_resp** %11, align 8
  %46 = getelementptr inbounds %struct.ssp_completion_resp, %struct.ssp_completion_resp* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le32_to_cpu(i32 %47)
  store i64 %48, i64* %9, align 8
  %49 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %50 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %49, i32 0, i32 0
  %51 = load %struct.sas_task*, %struct.sas_task** %50, align 8
  store %struct.sas_task* %51, %struct.sas_task** %5, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %41
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 135
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %58, i32 %60)
  br label %62

62:                                               ; preds = %57, %54, %41
  %63 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %64 = icmp ne %struct.sas_task* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %67 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %72 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %70, %65, %62
  %77 = phi i1 [ true, %65 ], [ true, %62 ], [ %75, %70 ]
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %507

82:                                               ; preds = %76
  %83 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %84 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %83, i32 0, i32 4
  store %struct.task_status_struct* %84, %struct.task_status_struct** %12, align 8
  %85 = load i64, i64* %8, align 8
  switch i64 %85, label %423 [
    i64 137, label %86
    i64 151, label %127
    i64 135, label %137
    i64 148, label %159
    i64 133, label %169
    i64 129, label %182
    i64 142, label %195
    i64 140, label %208
    i64 146, label %221
    i64 143, label %234
    i64 147, label %256
    i64 145, label %269
    i64 141, label %282
    i64 131, label %295
    i64 134, label %308
    i64 132, label %318
    i64 128, label %328
    i64 130, label %341
    i64 139, label %351
    i64 149, label %361
    i64 150, label %380
    i64 136, label %390
    i64 138, label %400
    i64 144, label %410
  ]

86:                                               ; preds = %82
  %87 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %88)
  %90 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %87, i32 %89)
  %91 = load i64, i64* %9, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %95 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %96 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** @SAM_STAT_GOOD, align 8
  %98 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %99 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  br label %118

100:                                              ; preds = %86
  %101 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %102 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %103 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** @SAS_PROTO_RESPONSE, align 8
  %105 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %106 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %109 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.ssp_completion_resp*, %struct.ssp_completion_resp** %11, align 8
  %111 = getelementptr inbounds %struct.ssp_completion_resp, %struct.ssp_completion_resp* %110, i32 0, i32 0
  store %struct.ssp_response_iu* %111, %struct.ssp_response_iu** %13, align 8
  %112 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %113 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %116 = load %struct.ssp_response_iu*, %struct.ssp_response_iu** %13, align 8
  %117 = call i32 @sas_ssp_task_response(i32 %114, %struct.sas_task* %115, %struct.ssp_response_iu* %116)
  br label %118

118:                                              ; preds = %100, %93
  %119 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %120 = icmp ne %struct.pm8001_device* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %123 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %121, %118
  br label %434

127:                                              ; preds = %82
  %128 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %129 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %130 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %128, i32 %129)
  %131 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %132 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %133 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  %134 = load i8*, i8** @SAS_ABORTED_TASK, align 8
  %135 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %136 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  br label %434

137:                                              ; preds = %82
  %138 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %139 = load i64, i64* %9, align 8
  %140 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %139)
  %141 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %138, i32 %140)
  %142 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %143 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %144 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %143, i32 0, i32 2
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** @SAS_DATA_UNDERRUN, align 8
  %146 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %147 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %146, i32 0, i32 1
  store i8* %145, i8** %147, align 8
  %148 = load i64, i64* %9, align 8
  %149 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %150 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %152 = icmp ne %struct.pm8001_device* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %137
  %154 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %155 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %153, %137
  br label %434

159:                                              ; preds = %82
  %160 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %161 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %162 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %160, i32 %161)
  %163 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %164 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %165 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  %166 = load i8*, i8** @SAS_PHY_DOWN, align 8
  %167 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %168 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  br label %434

169:                                              ; preds = %82
  %170 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %171 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %172 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %170, i32 %171)
  %173 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %174 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %175 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %174, i32 0, i32 2
  store i8* %173, i8** %175, align 8
  %176 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %177 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %178 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  %179 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %180 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %181 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  br label %434

182:                                              ; preds = %82
  %183 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %184 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %185 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %183, i32 %184)
  %186 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %187 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %188 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %187, i32 0, i32 2
  store i8* %186, i8** %188, align 8
  %189 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %190 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %191 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %190, i32 0, i32 1
  store i8* %189, i8** %191, align 8
  %192 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %193 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %194 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %193, i32 0, i32 3
  store i8* %192, i8** %194, align 8
  br label %434

195:                                              ; preds = %82
  %196 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %197 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %198 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %196, i32 %197)
  %199 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %200 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %201 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %200, i32 0, i32 2
  store i8* %199, i8** %201, align 8
  %202 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %203 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %204 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %203, i32 0, i32 1
  store i8* %202, i8** %204, align 8
  %205 = load i8*, i8** @SAS_OREJ_EPROTO, align 8
  %206 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %207 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %206, i32 0, i32 3
  store i8* %205, i8** %207, align 8
  br label %434

208:                                              ; preds = %82
  %209 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %210 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %211 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %209, i32 %210)
  %212 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %213 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %214 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %213, i32 0, i32 2
  store i8* %212, i8** %214, align 8
  %215 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %216 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %217 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %216, i32 0, i32 1
  store i8* %215, i8** %217, align 8
  %218 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %219 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %220 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %219, i32 0, i32 3
  store i8* %218, i8** %220, align 8
  br label %434

221:                                              ; preds = %82
  %222 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %223 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %224 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %222, i32 %223)
  %225 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %226 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %227 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %226, i32 0, i32 2
  store i8* %225, i8** %227, align 8
  %228 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %229 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %230 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %229, i32 0, i32 1
  store i8* %228, i8** %230, align 8
  %231 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %232 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %233 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %232, i32 0, i32 3
  store i8* %231, i8** %233, align 8
  br label %434

234:                                              ; preds = %82
  %235 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %236 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %237 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %235, i32 %236)
  %238 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %239 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %240 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %239, i32 0, i32 2
  store i8* %238, i8** %240, align 8
  %241 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %242 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %243 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %242, i32 0, i32 1
  store i8* %241, i8** %243, align 8
  %244 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %245 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %246 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %245, i32 0, i32 3
  store i8* %244, i8** %246, align 8
  %247 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %248 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %255, label %251

251:                                              ; preds = %234
  %252 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %253 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %254 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %252, %struct.pm8001_device* %253, i32 143)
  br label %255

255:                                              ; preds = %251, %234
  br label %434

256:                                              ; preds = %82
  %257 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %258 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %259 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %257, i32 %258)
  %260 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %261 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %262 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %261, i32 0, i32 2
  store i8* %260, i8** %262, align 8
  %263 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %264 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %265 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %264, i32 0, i32 1
  store i8* %263, i8** %265, align 8
  %266 = load i8*, i8** @SAS_OREJ_BAD_DEST, align 8
  %267 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %268 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %267, i32 0, i32 3
  store i8* %266, i8** %268, align 8
  br label %434

269:                                              ; preds = %82
  %270 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %271 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  %272 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %270, i32 %271)
  %273 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %274 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %275 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %274, i32 0, i32 2
  store i8* %273, i8** %275, align 8
  %276 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %277 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %278 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %277, i32 0, i32 1
  store i8* %276, i8** %278, align 8
  %279 = load i8*, i8** @SAS_OREJ_CONN_RATE, align 8
  %280 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %281 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %280, i32 0, i32 3
  store i8* %279, i8** %281, align 8
  br label %434

282:                                              ; preds = %82
  %283 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %284 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %285 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %283, i32 %284)
  %286 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %287 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %288 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %287, i32 0, i32 2
  store i8* %286, i8** %288, align 8
  %289 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %290 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %291 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %290, i32 0, i32 1
  store i8* %289, i8** %291, align 8
  %292 = load i8*, i8** @SAS_OREJ_WRONG_DEST, align 8
  %293 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %294 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %293, i32 0, i32 3
  store i8* %292, i8** %294, align 8
  br label %434

295:                                              ; preds = %82
  %296 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %297 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %298 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %296, i32 %297)
  %299 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %300 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %301 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %300, i32 0, i32 2
  store i8* %299, i8** %301, align 8
  %302 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %303 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %304 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %303, i32 0, i32 1
  store i8* %302, i8** %304, align 8
  %305 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %306 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %307 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %306, i32 0, i32 3
  store i8* %305, i8** %307, align 8
  br label %434

308:                                              ; preds = %82
  %309 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %310 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  %311 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %309, i32 %310)
  %312 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %313 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %314 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %313, i32 0, i32 2
  store i8* %312, i8** %314, align 8
  %315 = load i8*, i8** @SAS_NAK_R_ERR, align 8
  %316 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %317 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %316, i32 0, i32 1
  store i8* %315, i8** %317, align 8
  br label %434

318:                                              ; preds = %82
  %319 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %320 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %321 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %319, i32 %320)
  %322 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %323 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %324 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %323, i32 0, i32 2
  store i8* %322, i8** %324, align 8
  %325 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %326 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %327 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %326, i32 0, i32 1
  store i8* %325, i8** %327, align 8
  br label %434

328:                                              ; preds = %82
  %329 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %330 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %331 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %329, i32 %330)
  %332 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %333 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %334 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %333, i32 0, i32 2
  store i8* %332, i8** %334, align 8
  %335 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %336 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %337 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %336, i32 0, i32 1
  store i8* %335, i8** %337, align 8
  %338 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %339 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %340 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %339, i32 0, i32 3
  store i8* %338, i8** %340, align 8
  br label %434

341:                                              ; preds = %82
  %342 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %343 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0))
  %344 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %342, i32 %343)
  %345 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %346 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %347 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %346, i32 0, i32 2
  store i8* %345, i8** %347, align 8
  %348 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %349 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %350 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %349, i32 0, i32 1
  store i8* %348, i8** %350, align 8
  br label %434

351:                                              ; preds = %82
  %352 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %353 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %354 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %352, i32 %353)
  %355 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %356 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %357 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %356, i32 0, i32 2
  store i8* %355, i8** %357, align 8
  %358 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %359 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %360 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %359, i32 0, i32 1
  store i8* %358, i8** %360, align 8
  br label %434

361:                                              ; preds = %82
  %362 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %363 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  %364 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %362, i32 %363)
  %365 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %366 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %367 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %366, i32 0, i32 2
  store i8* %365, i8** %367, align 8
  %368 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %369 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %370 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %369, i32 0, i32 1
  store i8* %368, i8** %370, align 8
  %371 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %372 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %379, label %375

375:                                              ; preds = %361
  %376 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %377 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %378 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %376, %struct.pm8001_device* %377, i32 149)
  br label %379

379:                                              ; preds = %375, %361
  br label %434

380:                                              ; preds = %82
  %381 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %382 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %383 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %381, i32 %382)
  %384 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %385 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %386 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %385, i32 0, i32 2
  store i8* %384, i8** %386, align 8
  %387 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %388 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %389 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %388, i32 0, i32 1
  store i8* %387, i8** %389, align 8
  br label %434

390:                                              ; preds = %82
  %391 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %392 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %393 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %391, i32 %392)
  %394 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %395 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %396 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %395, i32 0, i32 2
  store i8* %394, i8** %396, align 8
  %397 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %398 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %399 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %398, i32 0, i32 1
  store i8* %397, i8** %399, align 8
  br label %434

400:                                              ; preds = %82
  %401 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %402 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0))
  %403 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %401, i32 %402)
  %404 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %405 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %406 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %405, i32 0, i32 2
  store i8* %404, i8** %406, align 8
  %407 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %408 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %409 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %408, i32 0, i32 1
  store i8* %407, i8** %409, align 8
  br label %434

410:                                              ; preds = %82
  %411 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %412 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0))
  %413 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %411, i32 %412)
  %414 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %415 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %416 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %415, i32 0, i32 2
  store i8* %414, i8** %416, align 8
  %417 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %418 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %419 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %418, i32 0, i32 1
  store i8* %417, i8** %419, align 8
  %420 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %421 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %422 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %421, i32 0, i32 3
  store i8* %420, i8** %422, align 8
  br label %434

423:                                              ; preds = %82
  %424 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %425 = load i64, i64* %8, align 8
  %426 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i64 %425)
  %427 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %424, i32 %426)
  %428 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %429 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %430 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %429, i32 0, i32 2
  store i8* %428, i8** %430, align 8
  %431 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %432 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %433 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %432, i32 0, i32 1
  store i8* %431, i8** %433, align 8
  br label %434

434:                                              ; preds = %423, %410, %400, %390, %380, %379, %351, %341, %328, %318, %308, %295, %282, %269, %256, %255, %221, %208, %195, %182, %169, %159, %158, %127, %126
  %435 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %436 = load %struct.ssp_completion_resp*, %struct.ssp_completion_resp** %11, align 8
  %437 = getelementptr inbounds %struct.ssp_completion_resp, %struct.ssp_completion_resp* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.ssp_response_iu, %struct.ssp_response_iu* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i32 %439)
  %441 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %435, i32 %440)
  %442 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %443 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %442, i32 0, i32 2
  %444 = load i64, i64* %7, align 8
  %445 = call i32 @spin_lock_irqsave(i32* %443, i64 %444)
  %446 = load i32, i32* @SAS_TASK_STATE_PENDING, align 4
  %447 = xor i32 %446, -1
  %448 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %449 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = and i32 %450, %447
  store i32 %451, i32* %449, align 8
  %452 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %453 = xor i32 %452, -1
  %454 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %455 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = and i32 %456, %453
  store i32 %457, i32* %455, align 8
  %458 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %459 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %460 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = or i32 %461, %458
  store i32 %462, i32* %460, align 8
  %463 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %464 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %467 = and i32 %465, %466
  %468 = call i64 @unlikely(i32 %467)
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %491

470:                                              ; preds = %434
  %471 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %472 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %471, i32 0, i32 2
  %473 = load i64, i64* %7, align 8
  %474 = call i32 @spin_unlock_irqrestore(i32* %472, i64 %473)
  %475 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %476 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %477 = load i64, i64* %8, align 8
  %478 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %479 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %478, i32 0, i32 2
  %480 = load i8*, i8** %479, align 8
  %481 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %482 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %481, i32 0, i32 1
  %483 = load i8*, i8** %482, align 8
  %484 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.27, i64 0, i64 0), %struct.sas_task* %476, i64 %477, i8* %480, i8* %483)
  %485 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %475, i32 %484)
  %486 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %487 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %488 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %489 = load i64, i64* %10, align 8
  %490 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %486, %struct.sas_task* %487, %struct.pm8001_ccb_info* %488, i64 %489)
  br label %507

491:                                              ; preds = %434
  %492 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %493 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %492, i32 0, i32 2
  %494 = load i64, i64* %7, align 8
  %495 = call i32 @spin_unlock_irqrestore(i32* %493, i64 %494)
  %496 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %497 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %498 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %499 = load i64, i64* %10, align 8
  %500 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %496, %struct.sas_task* %497, %struct.pm8001_ccb_info* %498, i64 %499)
  %501 = call i32 (...) @mb()
  %502 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %503 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %502, i32 0, i32 1
  %504 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %503, align 8
  %505 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %506 = call i32 %504(%struct.sas_task* %505)
  br label %507

507:                                              ; preds = %38, %81, %491, %470
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PM8001_IO_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @sas_ssp_task_response(i32, %struct.sas_task*, %struct.ssp_response_iu*) #1

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
