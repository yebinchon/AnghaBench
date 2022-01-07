; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_sata_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_sata_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, %struct.pm8001_ccb_info* }
%struct.pm8001_ccb_info = type { %struct.pm8001_device*, %struct.sas_task* }
%struct.pm8001_device = type { i32, i32 }
%struct.sas_task = type { i32, i32 (%struct.sas_task*)*, i32, i64, %struct.TYPE_4__, i32, %struct.task_status_struct, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.task_status_struct = type { i64, i32, i8*, i8*, i8*, i64 }
%struct.TYPE_3__ = type { %struct.pm8001_device* }
%struct.sata_completion_resp = type { i64*, i32, i32, i32 }
%struct.ata_task_resp = type { i32, i32* }

@.str = private unnamed_addr constant [10 x i8] c"tag null\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ccb null\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"task null\0A\00", align 1
@NCQ_READ_LOG_FLAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"task or dev null\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ts null\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"IO_SUCCESS\0A\00", align 1
@SAS_TASK_COMPLETE = common dso_local global i8* null, align 8
@SAM_STAT_GOOD = common dso_local global i8* null, align 8
@NCQ_ABORT_ALL_FLAG = common dso_local global i32 0, align 4
@SAS_PROTO_RESPONSE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"SAS_PROTO_RESPONSE len = %d\0A\00", align 1
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"PIO read len = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"FPDMA len = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"other len = %d\0A\00", align 1
@SAS_STATUS_BUF_SIZE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"response to large\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"IO_ABORTED IOMB Tag\0A\00", align 1
@SAS_ABORTED_TASK = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [25 x i8] c"IO_UNDERFLOW param = %d\0A\00", align 1
@SAS_DATA_UNDERRUN = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"IO_NO_DEVICE\0A\00", align 1
@SAS_TASK_UNDELIVERED = common dso_local global i8* null, align 8
@SAS_PHY_DOWN = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [21 x i8] c"IO_XFER_ERROR_BREAK\0A\00", align 1
@SAS_INTERRUPTED = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [29 x i8] c"IO_XFER_ERROR_PHY_NOT_READY\0A\00", align 1
@SAS_OPEN_REJECT = common dso_local global i8* null, align 8
@SAS_OREJ_RSVD_RETRY = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [42 x i8] c"IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED\0A\00", align 1
@SAS_OREJ_EPROTO = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [34 x i8] c"IO_OPEN_CNX_ERROR_ZONE_VIOLATION\0A\00", align 1
@SAS_OREJ_UNKNOWN = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [25 x i8] c"IO_OPEN_CNX_ERROR_BREAK\0A\00", align 1
@SAS_OREJ_RSVD_CONT0 = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [33 x i8] c"IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS\0A\00", align 1
@SAS_DEV_NO_RESPONSE = common dso_local global i8* null, align 8
@SAS_QUEUE_FULL = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [35 x i8] c"IO_OPEN_CNX_ERROR_BAD_DESTINATION\0A\00", align 1
@SAS_OREJ_BAD_DEST = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [49 x i8] c"IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED\0A\00", align 1
@SAS_OREJ_CONN_RATE = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [38 x i8] c"IO_OPEN_CNX_ERROR_STP_RESOURCES_BUSY\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"IO_OPEN_CNX_ERROR_WRONG_DESTINATION\0A\00", align 1
@SAS_OREJ_WRONG_DEST = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [28 x i8] c"IO_XFER_ERROR_NAK_RECEIVED\0A\00", align 1
@SAS_NAK_R_ERR = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [31 x i8] c"IO_XFER_ERROR_ACK_NAK_TIMEOUT\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"IO_XFER_ERROR_DMA\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"IO_XFER_ERROR_SATA_LINK_TIMEOUT\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"IO_XFER_ERROR_REJECTED_NCQ_MODE\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"IO_XFER_OPEN_RETRY_TIMEOUT\0A\00", align 1
@SAS_OPEN_TO = common dso_local global i8* null, align 8
@.str.30 = private unnamed_addr constant [18 x i8] c"IO_PORT_IN_RESET\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"IO_DS_NON_OPERATIONAL\0A\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"IO_DS_IN_RECOVERY\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"IO_DS_IN_ERROR\0A\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY\0A\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"Unknown status 0x%x\0A\00", align 1
@SAS_TASK_STATE_PENDING = common dso_local global i32 0, align 4
@SAS_TASK_AT_INITIATOR = common dso_local global i32 0, align 4
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [84 x i8] c"task 0x%p done with io_status 0x%x resp 0x%x stat 0x%x but aborted by upper layer!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i8*)* @mpi_sata_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_sata_completion(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca %struct.pm8001_ccb_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sata_completion_resp*, align 8
  %11 = alloca %struct.task_status_struct*, align 8
  %12 = alloca %struct.ata_task_resp*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.pm8001_device*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr i8, i8* %17, i64 4
  %19 = bitcast i8* %18 to %struct.sata_completion_resp*
  store %struct.sata_completion_resp* %19, %struct.sata_completion_resp** %10, align 8
  %20 = load %struct.sata_completion_resp*, %struct.sata_completion_resp** %10, align 8
  %21 = getelementptr inbounds %struct.sata_completion_resp, %struct.sata_completion_resp* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @le32_to_cpu(i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load %struct.sata_completion_resp*, %struct.sata_completion_resp** %10, align 8
  %25 = getelementptr inbounds %struct.sata_completion_resp, %struct.sata_completion_resp* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le32_to_cpu(i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %2
  %31 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %32 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %31, i32 %32)
  br label %817

34:                                               ; preds = %2
  %35 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %36 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %35, i32 0, i32 1
  %37 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %37, i64 %38
  store %struct.pm8001_ccb_info* %39, %struct.pm8001_ccb_info** %6, align 8
  %40 = load %struct.sata_completion_resp*, %struct.sata_completion_resp** %10, align 8
  %41 = getelementptr inbounds %struct.sata_completion_resp, %struct.sata_completion_resp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @le32_to_cpu(i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %45 = icmp ne %struct.pm8001_ccb_info* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %34
  %47 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %48 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %47, i32 0, i32 1
  %49 = load %struct.sas_task*, %struct.sas_task** %48, align 8
  store %struct.sas_task* %49, %struct.sas_task** %5, align 8
  %50 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %51 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %50, i32 0, i32 0
  %52 = load %struct.pm8001_device*, %struct.pm8001_device** %51, align 8
  store %struct.pm8001_device* %52, %struct.pm8001_device** %14, align 8
  br label %57

53:                                               ; preds = %34
  %54 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %55 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %54, i32 %55)
  br label %817

57:                                               ; preds = %46
  %58 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %59 = icmp ne %struct.sas_task* %58, null
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  %61 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %62 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %61, i32 0, i32 7
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = icmp ne %struct.TYPE_3__* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %67 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %66, i32 0, i32 7
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load %struct.pm8001_device*, %struct.pm8001_device** %69, align 8
  %71 = icmp ne %struct.pm8001_device* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %74 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %73, i32 0, i32 7
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load %struct.pm8001_device*, %struct.pm8001_device** %76, align 8
  store %struct.pm8001_device* %77, %struct.pm8001_device** %14, align 8
  br label %78

78:                                               ; preds = %72, %65, %60
  br label %83

79:                                               ; preds = %57
  %80 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %81 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %82 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %80, i32 %81)
  br label %817

83:                                               ; preds = %78
  %84 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %85 = icmp ne %struct.pm8001_device* %84, null
  br i1 %85, label %86, label %116

86:                                               ; preds = %83
  %87 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %88 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @NCQ_READ_LOG_FLAG, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %116, label %93

93:                                               ; preds = %86
  %94 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %95 = icmp ne %struct.sas_task* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %98 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %103 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %102, i32 0, i32 7
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = icmp ne %struct.TYPE_3__* %104, null
  %106 = xor i1 %105, true
  br label %107

107:                                              ; preds = %101, %96, %93
  %108 = phi i1 [ true, %96 ], [ true, %93 ], [ %106, %101 ]
  %109 = zext i1 %108 to i32
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %114 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %115 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %113, i32 %114)
  br label %817

116:                                              ; preds = %107, %86, %83
  %117 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %118 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %117, i32 0, i32 6
  store %struct.task_status_struct* %118, %struct.task_status_struct** %11, align 8
  %119 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %120 = icmp ne %struct.task_status_struct* %119, null
  br i1 %120, label %125, label %121

121:                                              ; preds = %116
  %122 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %123 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %124 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %122, i32 %123)
  br label %817

125:                                              ; preds = %116
  %126 = load i64, i64* %8, align 8
  switch i64 %126, label %700 [
    i64 138, label %127
    i64 157, label %256
    i64 137, label %274
    i64 153, label %296
    i64 135, label %306
    i64 132, label %316
    i64 143, label %329
    i64 140, label %342
    i64 151, label %355
    i64 148, label %368
    i64 129, label %368
    i64 145, label %368
    i64 147, label %368
    i64 146, label %368
    i64 144, label %368
    i64 152, label %410
    i64 150, label %455
    i64 142, label %468
    i64 141, label %510
    i64 133, label %523
    i64 136, label %533
    i64 134, label %543
    i64 130, label %553
    i64 131, label %563
    i64 128, label %573
    i64 139, label %583
    i64 154, label %593
    i64 155, label %635
    i64 156, label %645
    i64 149, label %687
  ]

127:                                              ; preds = %125
  %128 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %129 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %130 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %128, i32 %129)
  %131 = load i64, i64* %7, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %170

133:                                              ; preds = %127
  %134 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %135 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %136 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %135, i32 0, i32 3
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @SAM_STAT_GOOD, align 8
  %138 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %139 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %138, i32 0, i32 2
  store i8* %137, i8** %139, align 8
  %140 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %141 = icmp ne %struct.pm8001_device* %140, null
  br i1 %141, label %142, label %169

142:                                              ; preds = %133
  %143 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %144 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @NCQ_READ_LOG_FLAG, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %169

149:                                              ; preds = %142
  %150 = load i32, i32* @NCQ_ABORT_ALL_FLAG, align 4
  %151 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %152 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %156 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 2147483647
  %159 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %160 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  %161 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %162 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %163 = call i32 @pm80xx_send_abort_all(%struct.pm8001_hba_info* %161, %struct.pm8001_device* %162)
  %164 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %165 = load i64, i64* %9, align 8
  %166 = call i32 @pm8001_tag_free(%struct.pm8001_hba_info* %164, i64 %165)
  %167 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %168 = call i32 @sas_free_task(%struct.sas_task* %167)
  br label %817

169:                                              ; preds = %142, %133
  br label %247

170:                                              ; preds = %127
  %171 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %172 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %173 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %172, i32 0, i32 3
  store i8* %171, i8** %173, align 8
  %174 = load i8*, i8** @SAS_PROTO_RESPONSE, align 8
  %175 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %176 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %175, i32 0, i32 2
  store i8* %174, i8** %176, align 8
  %177 = load i64, i64* %7, align 8
  %178 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %179 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  %180 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %181 = load i64, i64* %7, align 8
  %182 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %181)
  %183 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %180, i32 %182)
  %184 = load %struct.sata_completion_resp*, %struct.sata_completion_resp** %10, align 8
  %185 = getelementptr inbounds %struct.sata_completion_resp, %struct.sata_completion_resp* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 0
  store i64* %187, i64** %13, align 8
  %188 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %189 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %188, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  %191 = inttoptr i64 %190 to %struct.ata_task_resp*
  store %struct.ata_task_resp* %191, %struct.ata_task_resp** %12, align 8
  %192 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %193 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %170
  %198 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %199 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %197
  store i32 4, i32* %16, align 4
  %204 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %205 = load i32, i32* %16, align 4
  %206 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %205)
  %207 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %204, i32 %206)
  br label %225

208:                                              ; preds = %197, %170
  %209 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %210 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %208
  store i32 4, i32* %16, align 4
  %215 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %216 = load i32, i32* %16, align 4
  %217 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %216)
  %218 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %215, i32 %217)
  br label %224

219:                                              ; preds = %208
  store i32 4, i32* %16, align 4
  %220 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %221 = load i32, i32* %16, align 4
  %222 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %221)
  %223 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %220, i32 %222)
  br label %224

224:                                              ; preds = %219, %214
  br label %225

225:                                              ; preds = %224, %203
  %226 = load i32, i32* @SAS_STATUS_BUF_SIZE, align 4
  %227 = sext i32 %226 to i64
  %228 = icmp uge i64 %227, 16
  br i1 %228, label %229, label %242

229:                                              ; preds = %225
  %230 = load i32, i32* %16, align 4
  %231 = load %struct.ata_task_resp*, %struct.ata_task_resp** %12, align 8
  %232 = getelementptr inbounds %struct.ata_task_resp, %struct.ata_task_resp* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  %233 = load %struct.ata_task_resp*, %struct.ata_task_resp** %12, align 8
  %234 = getelementptr inbounds %struct.ata_task_resp, %struct.ata_task_resp* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  %237 = load i64*, i64** %13, align 8
  %238 = load i32, i32* %16, align 4
  %239 = call i32 @memcpy(i32* %236, i64* %237, i32 %238)
  %240 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %241 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %240, i32 0, i32 1
  store i32 16, i32* %241, align 8
  br label %246

242:                                              ; preds = %225
  %243 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %244 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %245 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %243, i32 %244)
  br label %246

246:                                              ; preds = %242, %229
  br label %247

247:                                              ; preds = %246, %169
  %248 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %249 = icmp ne %struct.pm8001_device* %248, null
  br i1 %249, label %250, label %255

250:                                              ; preds = %247
  %251 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %252 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* %252, align 4
  br label %255

255:                                              ; preds = %250, %247
  br label %711

256:                                              ; preds = %125
  %257 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %258 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %259 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %257, i32 %258)
  %260 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %261 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %262 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %261, i32 0, i32 3
  store i8* %260, i8** %262, align 8
  %263 = load i8*, i8** @SAS_ABORTED_TASK, align 8
  %264 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %265 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %264, i32 0, i32 2
  store i8* %263, i8** %265, align 8
  %266 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %267 = icmp ne %struct.pm8001_device* %266, null
  br i1 %267, label %268, label %273

268:                                              ; preds = %256
  %269 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %270 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, -1
  store i32 %272, i32* %270, align 4
  br label %273

273:                                              ; preds = %268, %256
  br label %711

274:                                              ; preds = %125
  %275 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %276 = load i64, i64* %7, align 8
  %277 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i64 %276)
  %278 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %275, i32 %277)
  %279 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %280 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %281 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %280, i32 0, i32 3
  store i8* %279, i8** %281, align 8
  %282 = load i8*, i8** @SAS_DATA_UNDERRUN, align 8
  %283 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %284 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %283, i32 0, i32 2
  store i8* %282, i8** %284, align 8
  %285 = load i64, i64* %7, align 8
  %286 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %287 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %286, i32 0, i32 0
  store i64 %285, i64* %287, align 8
  %288 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %289 = icmp ne %struct.pm8001_device* %288, null
  br i1 %289, label %290, label %295

290:                                              ; preds = %274
  %291 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %292 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = add nsw i32 %293, -1
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %290, %274
  br label %711

296:                                              ; preds = %125
  %297 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %298 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %299 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %297, i32 %298)
  %300 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %301 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %302 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %301, i32 0, i32 3
  store i8* %300, i8** %302, align 8
  %303 = load i8*, i8** @SAS_PHY_DOWN, align 8
  %304 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %305 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %304, i32 0, i32 2
  store i8* %303, i8** %305, align 8
  br label %711

306:                                              ; preds = %125
  %307 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %308 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %309 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %307, i32 %308)
  %310 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %311 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %312 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %311, i32 0, i32 3
  store i8* %310, i8** %312, align 8
  %313 = load i8*, i8** @SAS_INTERRUPTED, align 8
  %314 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %315 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %314, i32 0, i32 2
  store i8* %313, i8** %315, align 8
  br label %711

316:                                              ; preds = %125
  %317 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %318 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %319 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %317, i32 %318)
  %320 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %321 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %322 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %321, i32 0, i32 3
  store i8* %320, i8** %322, align 8
  %323 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %324 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %325 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %324, i32 0, i32 2
  store i8* %323, i8** %325, align 8
  %326 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %327 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %328 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %327, i32 0, i32 4
  store i8* %326, i8** %328, align 8
  br label %711

329:                                              ; preds = %125
  %330 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %331 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0))
  %332 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %330, i32 %331)
  %333 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %334 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %335 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %334, i32 0, i32 3
  store i8* %333, i8** %335, align 8
  %336 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %337 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %338 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %337, i32 0, i32 2
  store i8* %336, i8** %338, align 8
  %339 = load i8*, i8** @SAS_OREJ_EPROTO, align 8
  %340 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %341 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %340, i32 0, i32 4
  store i8* %339, i8** %341, align 8
  br label %711

342:                                              ; preds = %125
  %343 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %344 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0))
  %345 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %343, i32 %344)
  %346 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %347 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %348 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %347, i32 0, i32 3
  store i8* %346, i8** %348, align 8
  %349 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %350 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %351 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %350, i32 0, i32 2
  store i8* %349, i8** %351, align 8
  %352 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %353 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %354 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %353, i32 0, i32 4
  store i8* %352, i8** %354, align 8
  br label %711

355:                                              ; preds = %125
  %356 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %357 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  %358 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %356, i32 %357)
  %359 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %360 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %361 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %360, i32 0, i32 3
  store i8* %359, i8** %361, align 8
  %362 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %363 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %364 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %363, i32 0, i32 2
  store i8* %362, i8** %364, align 8
  %365 = load i8*, i8** @SAS_OREJ_RSVD_CONT0, align 8
  %366 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %367 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %366, i32 0, i32 4
  store i8* %365, i8** %367, align 8
  br label %711

368:                                              ; preds = %125, %125, %125, %125, %125, %125
  %369 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %370 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0))
  %371 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %369, i32 %370)
  %372 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %373 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %374 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %373, i32 0, i32 3
  store i8* %372, i8** %374, align 8
  %375 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %376 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %377 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %376, i32 0, i32 2
  store i8* %375, i8** %377, align 8
  %378 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %379 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %378, i32 0, i32 3
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %409, label %382

382:                                              ; preds = %368
  %383 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %384 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %385 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %383, %struct.pm8001_device* %384, i32 148)
  %386 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %387 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %388 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %387, i32 0, i32 3
  store i8* %386, i8** %388, align 8
  %389 = load i8*, i8** @SAS_QUEUE_FULL, align 8
  %390 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %391 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %390, i32 0, i32 2
  store i8* %389, i8** %391, align 8
  %392 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %393 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %394 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %395 = load i64, i64* %9, align 8
  %396 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %392, %struct.sas_task* %393, %struct.pm8001_ccb_info* %394, i64 %395)
  %397 = call i32 (...) @mb()
  %398 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %399 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %398, i32 0, i32 0
  %400 = call i32 @spin_unlock_irq(i32* %399)
  %401 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %402 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %401, i32 0, i32 1
  %403 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %402, align 8
  %404 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %405 = call i32 %403(%struct.sas_task* %404)
  %406 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %407 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %406, i32 0, i32 0
  %408 = call i32 @spin_lock_irq(i32* %407)
  br label %817

409:                                              ; preds = %368
  br label %711

410:                                              ; preds = %125
  %411 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %412 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0))
  %413 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %411, i32 %412)
  %414 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %415 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %416 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %415, i32 0, i32 3
  store i8* %414, i8** %416, align 8
  %417 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %418 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %419 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %418, i32 0, i32 2
  store i8* %417, i8** %419, align 8
  %420 = load i8*, i8** @SAS_OREJ_BAD_DEST, align 8
  %421 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %422 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %421, i32 0, i32 4
  store i8* %420, i8** %422, align 8
  %423 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %424 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %423, i32 0, i32 3
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %454, label %427

427:                                              ; preds = %410
  %428 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %429 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %430 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %428, %struct.pm8001_device* %429, i32 148)
  %431 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %432 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %433 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %432, i32 0, i32 3
  store i8* %431, i8** %433, align 8
  %434 = load i8*, i8** @SAS_QUEUE_FULL, align 8
  %435 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %436 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %435, i32 0, i32 2
  store i8* %434, i8** %436, align 8
  %437 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %438 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %439 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %440 = load i64, i64* %9, align 8
  %441 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %437, %struct.sas_task* %438, %struct.pm8001_ccb_info* %439, i64 %440)
  %442 = call i32 (...) @mb()
  %443 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %444 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %443, i32 0, i32 0
  %445 = call i32 @spin_unlock_irq(i32* %444)
  %446 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %447 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %446, i32 0, i32 1
  %448 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %447, align 8
  %449 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %450 = call i32 %448(%struct.sas_task* %449)
  %451 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %452 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %451, i32 0, i32 0
  %453 = call i32 @spin_lock_irq(i32* %452)
  br label %817

454:                                              ; preds = %410
  br label %711

455:                                              ; preds = %125
  %456 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %457 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i64 0, i64 0))
  %458 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %456, i32 %457)
  %459 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %460 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %461 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %460, i32 0, i32 3
  store i8* %459, i8** %461, align 8
  %462 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %463 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %464 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %463, i32 0, i32 2
  store i8* %462, i8** %464, align 8
  %465 = load i8*, i8** @SAS_OREJ_CONN_RATE, align 8
  %466 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %467 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %466, i32 0, i32 4
  store i8* %465, i8** %467, align 8
  br label %711

468:                                              ; preds = %125
  %469 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %470 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0))
  %471 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %469, i32 %470)
  %472 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %473 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %474 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %473, i32 0, i32 3
  store i8* %472, i8** %474, align 8
  %475 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %476 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %477 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %476, i32 0, i32 2
  store i8* %475, i8** %477, align 8
  %478 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %479 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %478, i32 0, i32 3
  %480 = load i64, i64* %479, align 8
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %509, label %482

482:                                              ; preds = %468
  %483 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %484 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %485 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %483, %struct.pm8001_device* %484, i32 142)
  %486 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %487 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %488 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %487, i32 0, i32 3
  store i8* %486, i8** %488, align 8
  %489 = load i8*, i8** @SAS_QUEUE_FULL, align 8
  %490 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %491 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %490, i32 0, i32 2
  store i8* %489, i8** %491, align 8
  %492 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %493 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %494 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %495 = load i64, i64* %9, align 8
  %496 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %492, %struct.sas_task* %493, %struct.pm8001_ccb_info* %494, i64 %495)
  %497 = call i32 (...) @mb()
  %498 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %499 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %498, i32 0, i32 0
  %500 = call i32 @spin_unlock_irq(i32* %499)
  %501 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %502 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %501, i32 0, i32 1
  %503 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %502, align 8
  %504 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %505 = call i32 %503(%struct.sas_task* %504)
  %506 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %507 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %506, i32 0, i32 0
  %508 = call i32 @spin_lock_irq(i32* %507)
  br label %817

509:                                              ; preds = %468
  br label %711

510:                                              ; preds = %125
  %511 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %512 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0))
  %513 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %511, i32 %512)
  %514 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %515 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %516 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %515, i32 0, i32 3
  store i8* %514, i8** %516, align 8
  %517 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %518 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %519 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %518, i32 0, i32 2
  store i8* %517, i8** %519, align 8
  %520 = load i8*, i8** @SAS_OREJ_WRONG_DEST, align 8
  %521 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %522 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %521, i32 0, i32 4
  store i8* %520, i8** %522, align 8
  br label %711

523:                                              ; preds = %125
  %524 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %525 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0))
  %526 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %524, i32 %525)
  %527 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %528 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %529 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %528, i32 0, i32 3
  store i8* %527, i8** %529, align 8
  %530 = load i8*, i8** @SAS_NAK_R_ERR, align 8
  %531 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %532 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %531, i32 0, i32 2
  store i8* %530, i8** %532, align 8
  br label %711

533:                                              ; preds = %125
  %534 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %535 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0))
  %536 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %534, i32 %535)
  %537 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %538 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %539 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %538, i32 0, i32 3
  store i8* %537, i8** %539, align 8
  %540 = load i8*, i8** @SAS_NAK_R_ERR, align 8
  %541 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %542 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %541, i32 0, i32 2
  store i8* %540, i8** %542, align 8
  br label %711

543:                                              ; preds = %125
  %544 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %545 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  %546 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %544, i32 %545)
  %547 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %548 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %549 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %548, i32 0, i32 3
  store i8* %547, i8** %549, align 8
  %550 = load i8*, i8** @SAS_ABORTED_TASK, align 8
  %551 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %552 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %551, i32 0, i32 2
  store i8* %550, i8** %552, align 8
  br label %711

553:                                              ; preds = %125
  %554 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %555 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0))
  %556 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %554, i32 %555)
  %557 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %558 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %559 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %558, i32 0, i32 3
  store i8* %557, i8** %559, align 8
  %560 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %561 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %562 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %561, i32 0, i32 2
  store i8* %560, i8** %562, align 8
  br label %711

563:                                              ; preds = %125
  %564 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %565 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0))
  %566 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %564, i32 %565)
  %567 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %568 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %569 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %568, i32 0, i32 3
  store i8* %567, i8** %569, align 8
  %570 = load i8*, i8** @SAS_DATA_UNDERRUN, align 8
  %571 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %572 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %571, i32 0, i32 2
  store i8* %570, i8** %572, align 8
  br label %711

573:                                              ; preds = %125
  %574 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %575 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0))
  %576 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %574, i32 %575)
  %577 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %578 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %579 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %578, i32 0, i32 3
  store i8* %577, i8** %579, align 8
  %580 = load i8*, i8** @SAS_OPEN_TO, align 8
  %581 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %582 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %581, i32 0, i32 2
  store i8* %580, i8** %582, align 8
  br label %711

583:                                              ; preds = %125
  %584 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %585 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0))
  %586 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %584, i32 %585)
  %587 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %588 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %589 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %588, i32 0, i32 3
  store i8* %587, i8** %589, align 8
  %590 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %591 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %592 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %591, i32 0, i32 2
  store i8* %590, i8** %592, align 8
  br label %711

593:                                              ; preds = %125
  %594 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %595 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0))
  %596 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %594, i32 %595)
  %597 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %598 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %599 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %598, i32 0, i32 3
  store i8* %597, i8** %599, align 8
  %600 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %601 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %602 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %601, i32 0, i32 2
  store i8* %600, i8** %602, align 8
  %603 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %604 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %603, i32 0, i32 3
  %605 = load i64, i64* %604, align 8
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %634, label %607

607:                                              ; preds = %593
  %608 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %609 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %610 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %608, %struct.pm8001_device* %609, i32 154)
  %611 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %612 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %613 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %612, i32 0, i32 3
  store i8* %611, i8** %613, align 8
  %614 = load i8*, i8** @SAS_QUEUE_FULL, align 8
  %615 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %616 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %615, i32 0, i32 2
  store i8* %614, i8** %616, align 8
  %617 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %618 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %619 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %620 = load i64, i64* %9, align 8
  %621 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %617, %struct.sas_task* %618, %struct.pm8001_ccb_info* %619, i64 %620)
  %622 = call i32 (...) @mb()
  %623 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %624 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %623, i32 0, i32 0
  %625 = call i32 @spin_unlock_irq(i32* %624)
  %626 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %627 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %626, i32 0, i32 1
  %628 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %627, align 8
  %629 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %630 = call i32 %628(%struct.sas_task* %629)
  %631 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %632 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %631, i32 0, i32 0
  %633 = call i32 @spin_lock_irq(i32* %632)
  br label %817

634:                                              ; preds = %593
  br label %711

635:                                              ; preds = %125
  %636 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %637 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0))
  %638 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %636, i32 %637)
  %639 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %640 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %641 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %640, i32 0, i32 3
  store i8* %639, i8** %641, align 8
  %642 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %643 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %644 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %643, i32 0, i32 2
  store i8* %642, i8** %644, align 8
  br label %711

645:                                              ; preds = %125
  %646 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %647 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0))
  %648 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %646, i32 %647)
  %649 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %650 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %651 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %650, i32 0, i32 3
  store i8* %649, i8** %651, align 8
  %652 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %653 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %654 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %653, i32 0, i32 2
  store i8* %652, i8** %654, align 8
  %655 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %656 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %655, i32 0, i32 3
  %657 = load i64, i64* %656, align 8
  %658 = icmp ne i64 %657, 0
  br i1 %658, label %686, label %659

659:                                              ; preds = %645
  %660 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %661 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %662 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %660, %struct.pm8001_device* %661, i32 156)
  %663 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %664 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %665 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %664, i32 0, i32 3
  store i8* %663, i8** %665, align 8
  %666 = load i8*, i8** @SAS_QUEUE_FULL, align 8
  %667 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %668 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %667, i32 0, i32 2
  store i8* %666, i8** %668, align 8
  %669 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %670 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %671 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %672 = load i64, i64* %9, align 8
  %673 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %669, %struct.sas_task* %670, %struct.pm8001_ccb_info* %671, i64 %672)
  %674 = call i32 (...) @mb()
  %675 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %676 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %675, i32 0, i32 0
  %677 = call i32 @spin_unlock_irq(i32* %676)
  %678 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %679 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %678, i32 0, i32 1
  %680 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %679, align 8
  %681 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %682 = call i32 %680(%struct.sas_task* %681)
  %683 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %684 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %683, i32 0, i32 0
  %685 = call i32 @spin_lock_irq(i32* %684)
  br label %817

686:                                              ; preds = %645
  br label %711

687:                                              ; preds = %125
  %688 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %689 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0))
  %690 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %688, i32 %689)
  %691 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %692 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %693 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %692, i32 0, i32 3
  store i8* %691, i8** %693, align 8
  %694 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %695 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %696 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %695, i32 0, i32 2
  store i8* %694, i8** %696, align 8
  %697 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %698 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %699 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %698, i32 0, i32 4
  store i8* %697, i8** %699, align 8
  br label %700

700:                                              ; preds = %125, %687
  %701 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %702 = load i64, i64* %8, align 8
  %703 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i64 %702)
  %704 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %701, i32 %703)
  %705 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %706 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %707 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %706, i32 0, i32 3
  store i8* %705, i8** %707, align 8
  %708 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %709 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %710 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %709, i32 0, i32 2
  store i8* %708, i8** %710, align 8
  br label %711

711:                                              ; preds = %700, %686, %635, %634, %583, %573, %563, %553, %543, %533, %523, %510, %509, %455, %454, %409, %355, %342, %329, %316, %306, %296, %295, %273, %255
  %712 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %713 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %712, i32 0, i32 2
  %714 = load i64, i64* %15, align 8
  %715 = call i32 @spin_lock_irqsave(i32* %713, i64 %714)
  %716 = load i32, i32* @SAS_TASK_STATE_PENDING, align 4
  %717 = xor i32 %716, -1
  %718 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %719 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %718, i32 0, i32 0
  %720 = load i32, i32* %719, align 8
  %721 = and i32 %720, %717
  store i32 %721, i32* %719, align 8
  %722 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %723 = xor i32 %722, -1
  %724 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %725 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %724, i32 0, i32 0
  %726 = load i32, i32* %725, align 8
  %727 = and i32 %726, %723
  store i32 %727, i32* %725, align 8
  %728 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %729 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %730 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %729, i32 0, i32 0
  %731 = load i32, i32* %730, align 8
  %732 = or i32 %731, %728
  store i32 %732, i32* %730, align 8
  %733 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %734 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %733, i32 0, i32 0
  %735 = load i32, i32* %734, align 8
  %736 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %737 = and i32 %735, %736
  %738 = call i64 @unlikely(i32 %737)
  %739 = icmp ne i64 %738, 0
  br i1 %739, label %740, label %761

740:                                              ; preds = %711
  %741 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %742 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %741, i32 0, i32 2
  %743 = load i64, i64* %15, align 8
  %744 = call i32 @spin_unlock_irqrestore(i32* %742, i64 %743)
  %745 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %746 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %747 = load i64, i64* %8, align 8
  %748 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %749 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %748, i32 0, i32 3
  %750 = load i8*, i8** %749, align 8
  %751 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %752 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %751, i32 0, i32 2
  %753 = load i8*, i8** %752, align 8
  %754 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.36, i64 0, i64 0), %struct.sas_task* %746, i64 %747, i8* %750, i8* %753)
  %755 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %745, i32 %754)
  %756 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %757 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %758 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %759 = load i64, i64* %9, align 8
  %760 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %756, %struct.sas_task* %757, %struct.pm8001_ccb_info* %758, i64 %759)
  br label %817

761:                                              ; preds = %711
  %762 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %763 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %762, i32 0, i32 3
  %764 = load i64, i64* %763, align 8
  %765 = icmp ne i64 %764, 0
  br i1 %765, label %766, label %788

766:                                              ; preds = %761
  %767 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %768 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %767, i32 0, i32 2
  %769 = load i64, i64* %15, align 8
  %770 = call i32 @spin_unlock_irqrestore(i32* %768, i64 %769)
  %771 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %772 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %773 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %774 = load i64, i64* %9, align 8
  %775 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %771, %struct.sas_task* %772, %struct.pm8001_ccb_info* %773, i64 %774)
  %776 = call i32 (...) @mb()
  %777 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %778 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %777, i32 0, i32 0
  %779 = call i32 @spin_unlock_irq(i32* %778)
  %780 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %781 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %780, i32 0, i32 1
  %782 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %781, align 8
  %783 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %784 = call i32 %782(%struct.sas_task* %783)
  %785 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %786 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %785, i32 0, i32 0
  %787 = call i32 @spin_lock_irq(i32* %786)
  br label %816

788:                                              ; preds = %761
  %789 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %790 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %789, i32 0, i32 3
  %791 = load i64, i64* %790, align 8
  %792 = icmp ne i64 %791, 0
  br i1 %792, label %815, label %793

793:                                              ; preds = %788
  %794 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %795 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %794, i32 0, i32 2
  %796 = load i64, i64* %15, align 8
  %797 = call i32 @spin_unlock_irqrestore(i32* %795, i64 %796)
  %798 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %799 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %800 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %801 = load i64, i64* %9, align 8
  %802 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %798, %struct.sas_task* %799, %struct.pm8001_ccb_info* %800, i64 %801)
  %803 = call i32 (...) @mb()
  %804 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %805 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %804, i32 0, i32 0
  %806 = call i32 @spin_unlock_irq(i32* %805)
  %807 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %808 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %807, i32 0, i32 1
  %809 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %808, align 8
  %810 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %811 = call i32 %809(%struct.sas_task* %810)
  %812 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %813 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %812, i32 0, i32 0
  %814 = call i32 @spin_lock_irq(i32* %813)
  br label %815

815:                                              ; preds = %793, %788
  br label %816

816:                                              ; preds = %815, %766
  br label %817

817:                                              ; preds = %30, %53, %79, %112, %121, %149, %382, %427, %482, %607, %659, %816, %740
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PM8001_IO_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm80xx_send_abort_all(%struct.pm8001_hba_info*, %struct.pm8001_device*) #1

declare dso_local i32 @pm8001_tag_free(%struct.pm8001_hba_info*, i64) #1

declare dso_local i32 @sas_free_task(%struct.sas_task*) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

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
