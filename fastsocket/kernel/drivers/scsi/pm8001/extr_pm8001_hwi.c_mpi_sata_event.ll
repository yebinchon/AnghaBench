; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_sata_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_sata_event.c"
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
@.str.2 = private unnamed_addr constant [21 x i8] c"sata IO status 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"port_id:0x%x, device_id:0x%x, tag:0x%x, event:0x%x\0A\00", align 1
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
@.str.25 = private unnamed_addr constant [21 x i8] c"Unknown status 0x%x\0A\00", align 1
@SAS_TASK_STATE_PENDING = common dso_local global i32 0, align 4
@SAS_TASK_AT_INITIATOR = common dso_local global i32 0, align 4
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [84 x i8] c"task 0x%p done with io_status 0x%x resp 0x%x stat 0x%x but aborted by upper layer!\0A\00", align 1
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
  br label %52

52:                                               ; preds = %48, %41
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
  %73 = call i32 @pm8001_send_read_log(%struct.pm8001_hba_info* %71, %struct.pm8001_device* %72)
  br label %74

74:                                               ; preds = %70, %64
  br label %509

75:                                               ; preds = %60
  %76 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %77 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %76, i32 0, i32 1
  %78 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %78, i64 %79
  store %struct.pm8001_ccb_info* %80, %struct.pm8001_ccb_info** %7, align 8
  %81 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %82 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %81, i32 0, i32 1
  %83 = load %struct.sas_task*, %struct.sas_task** %82, align 8
  store %struct.sas_task* %83, %struct.sas_task** %5, align 8
  %84 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %85 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %84, i32 0, i32 0
  %86 = load %struct.pm8001_device*, %struct.pm8001_device** %85, align 8
  store %struct.pm8001_device* %86, %struct.pm8001_device** %8, align 8
  %87 = load i64, i64* %10, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %75
  %90 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %91)
  %93 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %90, i32 %92)
  br label %94

94:                                               ; preds = %89, %75
  %95 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %96 = icmp ne %struct.sas_task* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %99 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %104 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  br label %108

108:                                              ; preds = %102, %97, %94
  %109 = phi i1 [ true, %97 ], [ true, %94 ], [ %107, %102 ]
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %509

114:                                              ; preds = %108
  %115 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %116 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %115, i32 0, i32 4
  store %struct.task_status_struct* %116, %struct.task_status_struct** %6, align 8
  %117 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load i64, i64* %13, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %10, align 8
  %122 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i64 %118, i64 %119, i64 %120, i64 %121)
  %123 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %117, i32 %122)
  %124 = load i64, i64* %10, align 8
  switch i64 %124, label %392 [
    i64 141, label %125
    i64 139, label %145
    i64 135, label %155
    i64 144, label %168
    i64 142, label %181
    i64 147, label %194
    i64 145, label %207
    i64 148, label %249
    i64 146, label %262
    i64 143, label %275
    i64 138, label %288
    i64 136, label %298
    i64 134, label %308
    i64 129, label %318
    i64 133, label %328
    i64 131, label %338
    i64 132, label %348
    i64 137, label %358
    i64 130, label %368
    i64 140, label %378
    i64 128, label %382
  ]

125:                                              ; preds = %114
  %126 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %127 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %128 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %126, i32 %127)
  %129 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %130 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %131 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load i8*, i8** @SAS_DATA_OVERRUN, align 8
  %133 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %134 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  %135 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %136 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %135, i32 0, i32 3
  store i32 0, i32* %136, align 4
  %137 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %138 = icmp ne %struct.pm8001_device* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %125
  %140 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %141 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %139, %125
  br label %403

145:                                              ; preds = %114
  %146 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %147 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %148 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %146, i32 %147)
  %149 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %150 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %151 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = load i8*, i8** @SAS_INTERRUPTED, align 8
  %153 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %154 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  br label %403

155:                                              ; preds = %114
  %156 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %157 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %158 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %156, i32 %157)
  %159 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %160 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %161 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %163 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %164 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  %165 = load i32, i32* @SAS_OREJ_RSVD_RETRY, align 4
  %166 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %167 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  br label %403

168:                                              ; preds = %114
  %169 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %170 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %171 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %169, i32 %170)
  %172 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %173 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %174 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %173, i32 0, i32 1
  store i8* %172, i8** %174, align 8
  %175 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %176 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %177 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %176, i32 0, i32 0
  store i8* %175, i8** %177, align 8
  %178 = load i32, i32* @SAS_OREJ_EPROTO, align 4
  %179 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %180 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  br label %403

181:                                              ; preds = %114
  %182 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %183 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %184 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %182, i32 %183)
  %185 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %186 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %187 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %186, i32 0, i32 1
  store i8* %185, i8** %187, align 8
  %188 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %189 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %190 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %189, i32 0, i32 0
  store i8* %188, i8** %190, align 8
  %191 = load i32, i32* @SAS_OREJ_UNKNOWN, align 4
  %192 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %193 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  br label %403

194:                                              ; preds = %114
  %195 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %196 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %197 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %195, i32 %196)
  %198 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %199 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %200 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %199, i32 0, i32 1
  store i8* %198, i8** %200, align 8
  %201 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %202 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %203 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %202, i32 0, i32 0
  store i8* %201, i8** %203, align 8
  %204 = load i32, i32* @SAS_OREJ_RSVD_CONT0, align 4
  %205 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %206 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 8
  br label %403

207:                                              ; preds = %114
  %208 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %209 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %210 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %208, i32 %209)
  %211 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %212 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %213 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %212, i32 0, i32 1
  store i8* %211, i8** %213, align 8
  %214 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %215 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %216 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %215, i32 0, i32 0
  store i8* %214, i8** %216, align 8
  %217 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %218 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %248, label %221

221:                                              ; preds = %207
  %222 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %223 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %224 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %222, %struct.pm8001_device* %223, i32 145)
  %225 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %226 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %227 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %226, i32 0, i32 1
  store i8* %225, i8** %227, align 8
  %228 = load i8*, i8** @SAS_QUEUE_FULL, align 8
  %229 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %230 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %229, i32 0, i32 0
  store i8* %228, i8** %230, align 8
  %231 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %232 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %233 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %234 = load i64, i64* %11, align 8
  %235 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %231, %struct.sas_task* %232, %struct.pm8001_ccb_info* %233, i64 %234)
  %236 = call i32 (...) @mb()
  %237 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %238 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %237, i32 0, i32 0
  %239 = call i32 @spin_unlock_irq(i32* %238)
  %240 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %241 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %240, i32 0, i32 1
  %242 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %241, align 8
  %243 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %244 = call i32 %242(%struct.sas_task* %243)
  %245 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %246 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %245, i32 0, i32 0
  %247 = call i32 @spin_lock_irq(i32* %246)
  br label %509

248:                                              ; preds = %207
  br label %403

249:                                              ; preds = %114
  %250 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %251 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %252 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %250, i32 %251)
  %253 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %254 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %255 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %254, i32 0, i32 1
  store i8* %253, i8** %255, align 8
  %256 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %257 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %258 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %257, i32 0, i32 0
  store i8* %256, i8** %258, align 8
  %259 = load i32, i32* @SAS_OREJ_BAD_DEST, align 4
  %260 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %261 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 8
  br label %403

262:                                              ; preds = %114
  %263 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %264 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  %265 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %263, i32 %264)
  %266 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %267 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %268 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %267, i32 0, i32 1
  store i8* %266, i8** %268, align 8
  %269 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %270 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %271 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %270, i32 0, i32 0
  store i8* %269, i8** %271, align 8
  %272 = load i32, i32* @SAS_OREJ_CONN_RATE, align 4
  %273 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %274 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 8
  br label %403

275:                                              ; preds = %114
  %276 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %277 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %278 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %276, i32 %277)
  %279 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %280 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %281 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %280, i32 0, i32 1
  store i8* %279, i8** %281, align 8
  %282 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %283 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %284 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %283, i32 0, i32 0
  store i8* %282, i8** %284, align 8
  %285 = load i32, i32* @SAS_OREJ_WRONG_DEST, align 4
  %286 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %287 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %286, i32 0, i32 2
  store i32 %285, i32* %287, align 8
  br label %403

288:                                              ; preds = %114
  %289 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %290 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %291 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %289, i32 %290)
  %292 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %293 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %294 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %293, i32 0, i32 1
  store i8* %292, i8** %294, align 8
  %295 = load i8*, i8** @SAS_NAK_R_ERR, align 8
  %296 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %297 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %296, i32 0, i32 0
  store i8* %295, i8** %297, align 8
  br label %403

298:                                              ; preds = %114
  %299 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %300 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  %301 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %299, i32 %300)
  %302 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %303 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %304 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %303, i32 0, i32 1
  store i8* %302, i8** %304, align 8
  %305 = load i8*, i8** @SAS_NAK_R_ERR, align 8
  %306 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %307 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %306, i32 0, i32 0
  store i8* %305, i8** %307, align 8
  br label %403

308:                                              ; preds = %114
  %309 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %310 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  %311 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %309, i32 %310)
  %312 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %313 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %314 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %313, i32 0, i32 1
  store i8* %312, i8** %314, align 8
  %315 = load i8*, i8** @SAS_DATA_UNDERRUN, align 8
  %316 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %317 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %316, i32 0, i32 0
  store i8* %315, i8** %317, align 8
  br label %403

318:                                              ; preds = %114
  %319 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %320 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %321 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %319, i32 %320)
  %322 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %323 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %324 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %323, i32 0, i32 1
  store i8* %322, i8** %324, align 8
  %325 = load i8*, i8** @SAS_OPEN_TO, align 8
  %326 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %327 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %326, i32 0, i32 0
  store i8* %325, i8** %327, align 8
  br label %403

328:                                              ; preds = %114
  %329 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %330 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0))
  %331 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %329, i32 %330)
  %332 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %333 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %334 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %333, i32 0, i32 1
  store i8* %332, i8** %334, align 8
  %335 = load i8*, i8** @SAS_OPEN_TO, align 8
  %336 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %337 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %336, i32 0, i32 0
  store i8* %335, i8** %337, align 8
  br label %403

338:                                              ; preds = %114
  %339 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %340 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %341 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %339, i32 %340)
  %342 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %343 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %344 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %343, i32 0, i32 1
  store i8* %342, i8** %344, align 8
  %345 = load i8*, i8** @SAS_OPEN_TO, align 8
  %346 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %347 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %346, i32 0, i32 0
  store i8* %345, i8** %347, align 8
  br label %403

348:                                              ; preds = %114
  %349 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %350 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0))
  %351 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %349, i32 %350)
  %352 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %353 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %354 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %353, i32 0, i32 1
  store i8* %352, i8** %354, align 8
  %355 = load i8*, i8** @SAS_OPEN_TO, align 8
  %356 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %357 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %356, i32 0, i32 0
  store i8* %355, i8** %357, align 8
  br label %403

358:                                              ; preds = %114
  %359 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %360 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  %361 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %359, i32 %360)
  %362 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %363 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %364 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %363, i32 0, i32 1
  store i8* %362, i8** %364, align 8
  %365 = load i8*, i8** @SAS_OPEN_TO, align 8
  %366 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %367 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %366, i32 0, i32 0
  store i8* %365, i8** %367, align 8
  br label %403

368:                                              ; preds = %114
  %369 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %370 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0))
  %371 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %369, i32 %370)
  %372 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %373 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %374 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %373, i32 0, i32 1
  store i8* %372, i8** %374, align 8
  %375 = load i8*, i8** @SAS_OPEN_TO, align 8
  %376 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %377 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %376, i32 0, i32 0
  store i8* %375, i8** %377, align 8
  br label %403

378:                                              ; preds = %114
  %379 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %380 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0))
  %381 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %379, i32 %380)
  br label %403

382:                                              ; preds = %114
  %383 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %384 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0))
  %385 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %383, i32 %384)
  %386 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %387 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %388 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %387, i32 0, i32 1
  store i8* %386, i8** %388, align 8
  %389 = load i8*, i8** @SAS_OPEN_TO, align 8
  %390 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %391 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %390, i32 0, i32 0
  store i8* %389, i8** %391, align 8
  br label %403

392:                                              ; preds = %114
  %393 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %394 = load i64, i64* %10, align 8
  %395 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i64 %394)
  %396 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %393, i32 %395)
  %397 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %398 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %399 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %398, i32 0, i32 1
  store i8* %397, i8** %399, align 8
  %400 = load i8*, i8** @SAS_OPEN_TO, align 8
  %401 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %402 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %401, i32 0, i32 0
  store i8* %400, i8** %402, align 8
  br label %403

403:                                              ; preds = %392, %382, %378, %368, %358, %348, %338, %328, %318, %308, %298, %288, %275, %262, %249, %248, %194, %181, %168, %155, %145, %144
  %404 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %405 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %404, i32 0, i32 2
  %406 = load i64, i64* %14, align 8
  %407 = call i32 @spin_lock_irqsave(i32* %405, i64 %406)
  %408 = load i32, i32* @SAS_TASK_STATE_PENDING, align 4
  %409 = xor i32 %408, -1
  %410 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %411 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = and i32 %412, %409
  store i32 %413, i32* %411, align 8
  %414 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %415 = xor i32 %414, -1
  %416 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %417 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = and i32 %418, %415
  store i32 %419, i32* %417, align 8
  %420 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %421 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %422 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = or i32 %423, %420
  store i32 %424, i32* %422, align 8
  %425 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %426 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %429 = and i32 %427, %428
  %430 = call i64 @unlikely(i32 %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %453

432:                                              ; preds = %403
  %433 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %434 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %433, i32 0, i32 2
  %435 = load i64, i64* %14, align 8
  %436 = call i32 @spin_unlock_irqrestore(i32* %434, i64 %435)
  %437 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %438 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %439 = load i64, i64* %10, align 8
  %440 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %441 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %440, i32 0, i32 1
  %442 = load i8*, i8** %441, align 8
  %443 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %444 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %443, i32 0, i32 0
  %445 = load i8*, i8** %444, align 8
  %446 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.26, i64 0, i64 0), %struct.sas_task* %438, i64 %439, i8* %442, i8* %445)
  %447 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %437, i32 %446)
  %448 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %449 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %450 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %451 = load i64, i64* %11, align 8
  %452 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %448, %struct.sas_task* %449, %struct.pm8001_ccb_info* %450, i64 %451)
  br label %509

453:                                              ; preds = %403
  %454 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %455 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %454, i32 0, i32 3
  %456 = load i64, i64* %455, align 8
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %480

458:                                              ; preds = %453
  %459 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %460 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %459, i32 0, i32 2
  %461 = load i64, i64* %14, align 8
  %462 = call i32 @spin_unlock_irqrestore(i32* %460, i64 %461)
  %463 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %464 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %465 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %466 = load i64, i64* %11, align 8
  %467 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %463, %struct.sas_task* %464, %struct.pm8001_ccb_info* %465, i64 %466)
  %468 = call i32 (...) @mb()
  %469 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %470 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %469, i32 0, i32 0
  %471 = call i32 @spin_unlock_irq(i32* %470)
  %472 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %473 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %472, i32 0, i32 1
  %474 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %473, align 8
  %475 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %476 = call i32 %474(%struct.sas_task* %475)
  %477 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %478 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %477, i32 0, i32 0
  %479 = call i32 @spin_lock_irq(i32* %478)
  br label %508

480:                                              ; preds = %453
  %481 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %482 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %481, i32 0, i32 3
  %483 = load i64, i64* %482, align 8
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %507, label %485

485:                                              ; preds = %480
  %486 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %487 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %486, i32 0, i32 2
  %488 = load i64, i64* %14, align 8
  %489 = call i32 @spin_unlock_irqrestore(i32* %487, i64 %488)
  %490 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %491 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %492 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %493 = load i64, i64* %11, align 8
  %494 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %490, %struct.sas_task* %491, %struct.pm8001_ccb_info* %492, i64 %493)
  %495 = call i32 (...) @mb()
  %496 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %497 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %496, i32 0, i32 0
  %498 = call i32 @spin_unlock_irq(i32* %497)
  %499 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %500 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %499, i32 0, i32 1
  %501 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %500, align 8
  %502 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %503 = call i32 %501(%struct.sas_task* %502)
  %504 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %505 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %504, i32 0, i32 0
  %506 = call i32 @spin_lock_irq(i32* %505)
  br label %507

507:                                              ; preds = %485, %480
  br label %508

508:                                              ; preds = %507, %458
  br label %509

509:                                              ; preds = %74, %113, %221, %508, %432
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local %struct.pm8001_device* @pm8001_find_dev(%struct.pm8001_hba_info*, i64) #1

declare dso_local i32 @pm8001_send_read_log(%struct.pm8001_hba_info*, %struct.pm8001_device*) #1

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
