; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_sata_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_sata_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, %struct.pm8001_ccb_info* }
%struct.pm8001_ccb_info = type { %struct.pm8001_device*, %struct.sas_task* }
%struct.pm8001_device = type { i32 }
%struct.sas_task = type { i32, i32 (%struct.sas_task*)*, i32, i64, %struct.task_status_struct, i32, i32 }
%struct.task_status_struct = type { i8*, i8*, i32, i32 }
%struct.sata_event_resp = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"No CCB !!!. returning\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"SATA EVENT 0x%x\0A\00", align 1
@IO_XFER_ERROR_ABORTED_NCQ_MODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"task or dev null\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"port_id:0x%x, tag:0x%x, event:0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"IO_UNDERFLOW\0A\00", align 1
@SAS_TASK_COMPLETE = common dso_local global i8* null, align 8
@SAS_DATA_OVERRUN = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"IO_XFER_ERROR_BREAK\0A\00", align 1
@SAS_INTERRUPTED = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"IO_XFER_ERROR_PHY_NOT_READY\0A\00", align 1
@SAS_OPEN_REJECT = common dso_local global i8* null, align 8
@SAS_OREJ_RSVD_RETRY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED\0A\00", align 1
@SAS_OREJ_EPROTO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"IO_OPEN_CNX_ERROR_ZONE_VIOLATION\0A\00", align 1
@SAS_OREJ_UNKNOWN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"IO_OPEN_CNX_ERROR_BREAK\0A\00", align 1
@SAS_OREJ_RSVD_CONT0 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS\0A\00", align 1
@SAS_TASK_UNDELIVERED = common dso_local global i8* null, align 8
@SAS_DEV_NO_RESPONSE = common dso_local global i8* null, align 8
@SAS_QUEUE_FULL = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [35 x i8] c"IO_OPEN_CNX_ERROR_BAD_DESTINATION\0A\00", align 1
@SAS_OREJ_BAD_DEST = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [49 x i8] c"IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED\0A\00", align 1
@SAS_OREJ_CONN_RATE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"IO_OPEN_CNX_ERROR_WRONG_DESTINATION\0A\00", align 1
@SAS_OREJ_WRONG_DEST = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [28 x i8] c"IO_XFER_ERROR_NAK_RECEIVED\0A\00", align 1
@SAS_NAK_R_ERR = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [28 x i8] c"IO_XFER_ERROR_PEER_ABORTED\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"IO_XFER_ERROR_REJECTED_NCQ_MODE\0A\00", align 1
@SAS_DATA_UNDERRUN = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [28 x i8] c"IO_XFER_OPEN_RETRY_TIMEOUT\0A\00", align 1
@SAS_OPEN_TO = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [32 x i8] c"IO_XFER_ERROR_UNEXPECTED_PHASE\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"IO_XFER_ERROR_XFER_RDY_OVERRUN\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"IO_XFER_ERROR_XFER_RDY_NOT_EXPECTED\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"IO_XFER_ERROR_OFFSET_MISMATCH\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"IO_XFER_ERROR_XFER_ZERO_DATA_LEN\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"IO_XFER_CMD_FRAME_ISSUED\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"IO_XFER_PIO_SETUP_ERROR\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"IO_XFR_ERROR_INTERNAL_CRC_ERROR\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"IO_XFR_DMA_ACTIVATE_TIMEOUT\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Unknown status 0x%x\0A\00", align 1
@SAS_TASK_STATE_PENDING = common dso_local global i32 0, align 4
@SAS_TASK_AT_INITIATOR = common dso_local global i32 0, align 4
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [84 x i8] c"task 0x%p done with io_status 0x%x resp 0x%x stat 0x%x but aborted by upper layer!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i8*)* @mpi_sata_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_sata_event(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca %struct.task_status_struct*, align 8
  %7 = alloca %struct.pm8001_ccb_info*, align 8
  %8 = alloca %struct.pm8001_device*, align 8
  %9 = alloca %struct.sata_event_resp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr i8, i8* %15, i64 4
  %17 = bitcast i8* %16 to %struct.sata_event_resp*
  store %struct.sata_event_resp* %17, %struct.sata_event_resp** %9, align 8
  %18 = load %struct.sata_event_resp*, %struct.sata_event_resp** %9, align 8
  %19 = getelementptr inbounds %struct.sata_event_resp, %struct.sata_event_resp* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le32_to_cpu(i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load %struct.sata_event_resp*, %struct.sata_event_resp** %9, align 8
  %23 = getelementptr inbounds %struct.sata_event_resp, %struct.sata_event_resp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load %struct.sata_event_resp*, %struct.sata_event_resp** %9, align 8
  %27 = getelementptr inbounds %struct.sata_event_resp, %struct.sata_event_resp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le32_to_cpu(i32 %28)
  store i64 %29, i64* %12, align 8
  %30 = load %struct.sata_event_resp*, %struct.sata_event_resp** %9, align 8
  %31 = getelementptr inbounds %struct.sata_event_resp, %struct.sata_event_resp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le32_to_cpu(i32 %32)
  store i64 %33, i64* %13, align 8
  %34 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %35 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %34, i32 0, i32 1
  %36 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %36, i64 %37
  store %struct.pm8001_ccb_info* %38, %struct.pm8001_ccb_info** %7, align 8
  %39 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %40 = icmp ne %struct.pm8001_ccb_info* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %2
  %42 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %43 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %42, i32 0, i32 1
  %44 = load %struct.sas_task*, %struct.sas_task** %43, align 8
  store %struct.sas_task* %44, %struct.sas_task** %5, align 8
  %45 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %46 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %45, i32 0, i32 0
  %47 = load %struct.pm8001_device*, %struct.pm8001_device** %46, align 8
  store %struct.pm8001_device* %47, %struct.pm8001_device** %8, align 8
  br label %52

48:                                               ; preds = %2
  %49 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %50 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %49, i32 %50)
  br label %512

52:                                               ; preds = %41
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %56, i32 %58)
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @IO_XFER_ERROR_ABORTED_NCQ_MODE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call %struct.pm8001_device* @pm8001_find_dev(%struct.pm8001_hba_info* %65, i64 %66)
  store %struct.pm8001_device* %67, %struct.pm8001_device** %8, align 8
  %68 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %69 = icmp ne %struct.pm8001_device* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %72 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %73 = call i32 @pm80xx_send_read_log(%struct.pm8001_hba_info* %71, %struct.pm8001_device* %72)
  br label %74

74:                                               ; preds = %70, %64
  br label %512

75:                                               ; preds = %60
  %76 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %77 = icmp ne %struct.sas_task* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %80 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %85 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %83, %78, %75
  %90 = phi i1 [ true, %78 ], [ true, %75 ], [ %88, %83 ]
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %96 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %97 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %95, i32 %96)
  br label %512

98:                                               ; preds = %89
  %99 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %100 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %99, i32 0, i32 4
  store %struct.task_status_struct* %100, %struct.task_status_struct** %6, align 8
  %101 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %10, align 8
  %105 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %102, i64 %103, i64 %104)
  %106 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %101, i32 %105)
  %107 = load i64, i64* %10, align 8
  switch i64 %107, label %395 [
    i64 144, label %108
    i64 141, label %128
    i64 136, label %138
    i64 147, label %151
    i64 145, label %164
    i64 154, label %177
    i64 152, label %190
    i64 130, label %190
    i64 149, label %190
    i64 151, label %190
    i64 150, label %190
    i64 148, label %190
    i64 155, label %232
    i64 153, label %245
    i64 146, label %258
    i64 139, label %271
    i64 137, label %281
    i64 135, label %291
    i64 129, label %301
    i64 134, label %311
    i64 132, label %321
    i64 133, label %331
    i64 138, label %341
    i64 131, label %351
    i64 143, label %361
    i64 128, label %365
    i64 140, label %375
    i64 142, label %385
  ]

108:                                              ; preds = %98
  %109 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %110 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %111 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %109, i32 %110)
  %112 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %113 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %114 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** @SAS_DATA_OVERRUN, align 8
  %116 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %117 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %119 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %118, i32 0, i32 3
  store i32 0, i32* %119, align 4
  %120 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %121 = icmp ne %struct.pm8001_device* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %108
  %123 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %124 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %122, %108
  br label %406

128:                                              ; preds = %98
  %129 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %130 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %131 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %129, i32 %130)
  %132 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %133 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %134 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load i8*, i8** @SAS_INTERRUPTED, align 8
  %136 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %137 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  br label %406

138:                                              ; preds = %98
  %139 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %140 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %141 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %139, i32 %140)
  %142 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %143 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %144 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %146 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %147 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %146, i32 0, i32 0
  store i8* %145, i8** %147, align 8
  %148 = load i32, i32* @SAS_OREJ_RSVD_RETRY, align 4
  %149 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %150 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  br label %406

151:                                              ; preds = %98
  %152 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %153 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %154 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %152, i32 %153)
  %155 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %156 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %157 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  %158 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %159 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %160 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  %161 = load i32, i32* @SAS_OREJ_EPROTO, align 4
  %162 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %163 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  br label %406

164:                                              ; preds = %98
  %165 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %166 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %167 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %165, i32 %166)
  %168 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %169 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %170 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %169, i32 0, i32 1
  store i8* %168, i8** %170, align 8
  %171 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %172 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %173 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %172, i32 0, i32 0
  store i8* %171, i8** %173, align 8
  %174 = load i32, i32* @SAS_OREJ_UNKNOWN, align 4
  %175 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %176 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  br label %406

177:                                              ; preds = %98
  %178 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %179 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %180 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %178, i32 %179)
  %181 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %182 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %183 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  %184 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %185 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %186 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  %187 = load i32, i32* @SAS_OREJ_RSVD_CONT0, align 4
  %188 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %189 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  br label %406

190:                                              ; preds = %98, %98, %98, %98, %98, %98
  %191 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %192 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %193 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %191, i32 %192)
  %194 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %195 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %196 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  %197 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %198 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %199 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %198, i32 0, i32 0
  store i8* %197, i8** %199, align 8
  %200 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %201 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %231, label %204

204:                                              ; preds = %190
  %205 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %206 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %207 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %205, %struct.pm8001_device* %206, i32 152)
  %208 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %209 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %210 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %209, i32 0, i32 1
  store i8* %208, i8** %210, align 8
  %211 = load i8*, i8** @SAS_QUEUE_FULL, align 8
  %212 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %213 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %212, i32 0, i32 0
  store i8* %211, i8** %213, align 8
  %214 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %215 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %216 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %217 = load i64, i64* %11, align 8
  %218 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %214, %struct.sas_task* %215, %struct.pm8001_ccb_info* %216, i64 %217)
  %219 = call i32 (...) @mb()
  %220 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %221 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %220, i32 0, i32 0
  %222 = call i32 @spin_unlock_irq(i32* %221)
  %223 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %224 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %223, i32 0, i32 1
  %225 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %224, align 8
  %226 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %227 = call i32 %225(%struct.sas_task* %226)
  %228 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %229 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %228, i32 0, i32 0
  %230 = call i32 @spin_lock_irq(i32* %229)
  br label %512

231:                                              ; preds = %190
  br label %406

232:                                              ; preds = %98
  %233 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %234 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %235 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %233, i32 %234)
  %236 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %237 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %238 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %237, i32 0, i32 1
  store i8* %236, i8** %238, align 8
  %239 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %240 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %241 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %240, i32 0, i32 0
  store i8* %239, i8** %241, align 8
  %242 = load i32, i32* @SAS_OREJ_BAD_DEST, align 4
  %243 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %244 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 8
  br label %406

245:                                              ; preds = %98
  %246 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %247 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  %248 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %246, i32 %247)
  %249 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %250 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %251 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %250, i32 0, i32 1
  store i8* %249, i8** %251, align 8
  %252 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %253 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %254 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %253, i32 0, i32 0
  store i8* %252, i8** %254, align 8
  %255 = load i32, i32* @SAS_OREJ_CONN_RATE, align 4
  %256 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %257 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %256, i32 0, i32 2
  store i32 %255, i32* %257, align 8
  br label %406

258:                                              ; preds = %98
  %259 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %260 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %261 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %259, i32 %260)
  %262 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %263 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %264 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %263, i32 0, i32 1
  store i8* %262, i8** %264, align 8
  %265 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %266 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %267 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %266, i32 0, i32 0
  store i8* %265, i8** %267, align 8
  %268 = load i32, i32* @SAS_OREJ_WRONG_DEST, align 4
  %269 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %270 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %269, i32 0, i32 2
  store i32 %268, i32* %270, align 8
  br label %406

271:                                              ; preds = %98
  %272 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %273 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %274 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %272, i32 %273)
  %275 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %276 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %277 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %276, i32 0, i32 1
  store i8* %275, i8** %277, align 8
  %278 = load i8*, i8** @SAS_NAK_R_ERR, align 8
  %279 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %280 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %279, i32 0, i32 0
  store i8* %278, i8** %280, align 8
  br label %406

281:                                              ; preds = %98
  %282 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %283 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  %284 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %282, i32 %283)
  %285 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %286 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %287 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %286, i32 0, i32 1
  store i8* %285, i8** %287, align 8
  %288 = load i8*, i8** @SAS_NAK_R_ERR, align 8
  %289 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %290 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %289, i32 0, i32 0
  store i8* %288, i8** %290, align 8
  br label %406

291:                                              ; preds = %98
  %292 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %293 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  %294 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %292, i32 %293)
  %295 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %296 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %297 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %296, i32 0, i32 1
  store i8* %295, i8** %297, align 8
  %298 = load i8*, i8** @SAS_DATA_UNDERRUN, align 8
  %299 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %300 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %299, i32 0, i32 0
  store i8* %298, i8** %300, align 8
  br label %406

301:                                              ; preds = %98
  %302 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %303 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %304 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %302, i32 %303)
  %305 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %306 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %307 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %306, i32 0, i32 1
  store i8* %305, i8** %307, align 8
  %308 = load i8*, i8** @SAS_OPEN_TO, align 8
  %309 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %310 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %309, i32 0, i32 0
  store i8* %308, i8** %310, align 8
  br label %406

311:                                              ; preds = %98
  %312 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %313 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0))
  %314 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %312, i32 %313)
  %315 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %316 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %317 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %316, i32 0, i32 1
  store i8* %315, i8** %317, align 8
  %318 = load i8*, i8** @SAS_OPEN_TO, align 8
  %319 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %320 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %319, i32 0, i32 0
  store i8* %318, i8** %320, align 8
  br label %406

321:                                              ; preds = %98
  %322 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %323 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %324 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %322, i32 %323)
  %325 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %326 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %327 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %326, i32 0, i32 1
  store i8* %325, i8** %327, align 8
  %328 = load i8*, i8** @SAS_OPEN_TO, align 8
  %329 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %330 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %329, i32 0, i32 0
  store i8* %328, i8** %330, align 8
  br label %406

331:                                              ; preds = %98
  %332 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %333 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0))
  %334 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %332, i32 %333)
  %335 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %336 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %337 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %336, i32 0, i32 1
  store i8* %335, i8** %337, align 8
  %338 = load i8*, i8** @SAS_OPEN_TO, align 8
  %339 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %340 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %339, i32 0, i32 0
  store i8* %338, i8** %340, align 8
  br label %406

341:                                              ; preds = %98
  %342 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %343 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  %344 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %342, i32 %343)
  %345 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %346 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %347 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %346, i32 0, i32 1
  store i8* %345, i8** %347, align 8
  %348 = load i8*, i8** @SAS_OPEN_TO, align 8
  %349 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %350 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %349, i32 0, i32 0
  store i8* %348, i8** %350, align 8
  br label %406

351:                                              ; preds = %98
  %352 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %353 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0))
  %354 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %352, i32 %353)
  %355 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %356 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %357 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %356, i32 0, i32 1
  store i8* %355, i8** %357, align 8
  %358 = load i8*, i8** @SAS_OPEN_TO, align 8
  %359 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %360 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %359, i32 0, i32 0
  store i8* %358, i8** %360, align 8
  br label %406

361:                                              ; preds = %98
  %362 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %363 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0))
  %364 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %362, i32 %363)
  br label %406

365:                                              ; preds = %98
  %366 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %367 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0))
  %368 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %366, i32 %367)
  %369 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %370 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %371 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %370, i32 0, i32 1
  store i8* %369, i8** %371, align 8
  %372 = load i8*, i8** @SAS_OPEN_TO, align 8
  %373 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %374 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %373, i32 0, i32 0
  store i8* %372, i8** %374, align 8
  br label %406

375:                                              ; preds = %98
  %376 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %377 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0))
  %378 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %376, i32 %377)
  %379 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %380 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %381 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %380, i32 0, i32 1
  store i8* %379, i8** %381, align 8
  %382 = load i8*, i8** @SAS_OPEN_TO, align 8
  %383 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %384 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %383, i32 0, i32 0
  store i8* %382, i8** %384, align 8
  br label %406

385:                                              ; preds = %98
  %386 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %387 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0))
  %388 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %386, i32 %387)
  %389 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %390 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %391 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %390, i32 0, i32 1
  store i8* %389, i8** %391, align 8
  %392 = load i8*, i8** @SAS_OPEN_TO, align 8
  %393 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %394 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %393, i32 0, i32 0
  store i8* %392, i8** %394, align 8
  br label %406

395:                                              ; preds = %98
  %396 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %397 = load i64, i64* %10, align 8
  %398 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i64 %397)
  %399 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %396, i32 %398)
  %400 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %401 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %402 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %401, i32 0, i32 1
  store i8* %400, i8** %402, align 8
  %403 = load i8*, i8** @SAS_OPEN_TO, align 8
  %404 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %405 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %404, i32 0, i32 0
  store i8* %403, i8** %405, align 8
  br label %406

406:                                              ; preds = %395, %385, %375, %365, %361, %351, %341, %331, %321, %311, %301, %291, %281, %271, %258, %245, %232, %231, %177, %164, %151, %138, %128, %127
  %407 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %408 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %407, i32 0, i32 2
  %409 = load i64, i64* %14, align 8
  %410 = call i32 @spin_lock_irqsave(i32* %408, i64 %409)
  %411 = load i32, i32* @SAS_TASK_STATE_PENDING, align 4
  %412 = xor i32 %411, -1
  %413 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %414 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = and i32 %415, %412
  store i32 %416, i32* %414, align 8
  %417 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %418 = xor i32 %417, -1
  %419 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %420 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = and i32 %421, %418
  store i32 %422, i32* %420, align 8
  %423 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %424 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %425 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = or i32 %426, %423
  store i32 %427, i32* %425, align 8
  %428 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %429 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %432 = and i32 %430, %431
  %433 = call i64 @unlikely(i32 %432)
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %456

435:                                              ; preds = %406
  %436 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %437 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %436, i32 0, i32 2
  %438 = load i64, i64* %14, align 8
  %439 = call i32 @spin_unlock_irqrestore(i32* %437, i64 %438)
  %440 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %441 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %442 = load i64, i64* %10, align 8
  %443 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %444 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %443, i32 0, i32 1
  %445 = load i8*, i8** %444, align 8
  %446 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %447 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %446, i32 0, i32 0
  %448 = load i8*, i8** %447, align 8
  %449 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.28, i64 0, i64 0), %struct.sas_task* %441, i64 %442, i8* %445, i8* %448)
  %450 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %440, i32 %449)
  %451 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %452 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %453 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %454 = load i64, i64* %11, align 8
  %455 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %451, %struct.sas_task* %452, %struct.pm8001_ccb_info* %453, i64 %454)
  br label %512

456:                                              ; preds = %406
  %457 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %458 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %457, i32 0, i32 3
  %459 = load i64, i64* %458, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %483

461:                                              ; preds = %456
  %462 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %463 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %462, i32 0, i32 2
  %464 = load i64, i64* %14, align 8
  %465 = call i32 @spin_unlock_irqrestore(i32* %463, i64 %464)
  %466 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %467 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %468 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %469 = load i64, i64* %11, align 8
  %470 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %466, %struct.sas_task* %467, %struct.pm8001_ccb_info* %468, i64 %469)
  %471 = call i32 (...) @mb()
  %472 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %473 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %472, i32 0, i32 0
  %474 = call i32 @spin_unlock_irq(i32* %473)
  %475 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %476 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %475, i32 0, i32 1
  %477 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %476, align 8
  %478 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %479 = call i32 %477(%struct.sas_task* %478)
  %480 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %481 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %480, i32 0, i32 0
  %482 = call i32 @spin_lock_irq(i32* %481)
  br label %511

483:                                              ; preds = %456
  %484 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %485 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %484, i32 0, i32 3
  %486 = load i64, i64* %485, align 8
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %510, label %488

488:                                              ; preds = %483
  %489 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %490 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %489, i32 0, i32 2
  %491 = load i64, i64* %14, align 8
  %492 = call i32 @spin_unlock_irqrestore(i32* %490, i64 %491)
  %493 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %494 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %495 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %496 = load i64, i64* %11, align 8
  %497 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %493, %struct.sas_task* %494, %struct.pm8001_ccb_info* %495, i64 %496)
  %498 = call i32 (...) @mb()
  %499 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %500 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %499, i32 0, i32 0
  %501 = call i32 @spin_unlock_irq(i32* %500)
  %502 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %503 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %502, i32 0, i32 1
  %504 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %503, align 8
  %505 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %506 = call i32 %504(%struct.sas_task* %505)
  %507 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %508 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %507, i32 0, i32 0
  %509 = call i32 @spin_lock_irq(i32* %508)
  br label %510

510:                                              ; preds = %488, %483
  br label %511

511:                                              ; preds = %510, %461
  br label %512

512:                                              ; preds = %48, %74, %94, %204, %511, %435
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local %struct.pm8001_device* @pm8001_find_dev(%struct.pm8001_hba_info*, i64) #1

declare dso_local i32 @pm80xx_send_read_log(%struct.pm8001_hba_info*, %struct.pm8001_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PM8001_IO_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_handle_event(%struct.pm8001_hba_info*, %struct.pm8001_device*, i32) #1

declare dso_local i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info*, %struct.sas_task*, %struct.pm8001_ccb_info*, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
