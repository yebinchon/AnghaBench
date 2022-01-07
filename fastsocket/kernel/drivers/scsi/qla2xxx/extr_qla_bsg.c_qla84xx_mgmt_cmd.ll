; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla84xx_mgmt_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla84xx_mgmt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { i32, {}*, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__*, i64, %struct.Scsi_Host* }
%struct.TYPE_21__ = type { i64, i64, i32 }
%struct.TYPE_20__ = type { i64, i64, i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_17__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.access_chip_84xx = type { i32, i8*, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.qla_bsg_a84_mgmt = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_18__, %struct.TYPE_23__, %struct.TYPE_24__ }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }

@DMA_NONE = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Not 84xx, exiting.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"MGMT header not provided, exiting.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"DMA alloc failed for fw buffer.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ACCESS_CHIP_IOCB_TYPE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"dma_map_sg returned %d for reply.\0A\00", align 1
@.str.4 = private unnamed_addr constant [85 x i8] c"DMA mapping resulted in different sg counts, reply_sg_cnt: %x dma_reply_sg_cnt: %x.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"DMA alloc failed for mgmt_b.\0A\00", align 1
@ACO_DUMP_MEMORY = common dso_local global i32 0, align 4
@ACO_REQUEST_INFO = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"dma_map_sg returned %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [89 x i8] c"DMA mapping resulted in different sg counts, request_sg_cnt: %x dma_request_sg_cnt: %x.\0A\00", align 1
@ACO_LOAD_MEMORY = common dso_local global i32 0, align 4
@ACO_CHANGE_CONFIG_PARAM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Vendor request 84xx mgmt failed.\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"Vendor request 84xx mgmt completed.\0A\00", align 1
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @qla84xx_mgmt_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla84xx_mgmt_cmd(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca %struct.access_chip_84xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qla_bsg_a84_mgmt*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %16 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %17 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %16, i32 0, i32 6
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %17, align 8
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %4, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %20 = call %struct.TYPE_17__* @shost_priv(%struct.Scsi_Host* %19)
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %5, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %22, align 8
  store %struct.qla_hw_data* %23, %struct.qla_hw_data** %6, align 8
  store %struct.access_chip_84xx* null, %struct.access_chip_84xx** %7, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %14, align 8
  %24 = load i64, i64* @DMA_NONE, align 8
  store i64 %24, i64* %15, align 8
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %26 = call i32 @IS_QLA84XX(%struct.qla_hw_data* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ql_log_warn, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %29, %struct.TYPE_17__* %30, i32 28730, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %484

34:                                               ; preds = %1
  %35 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %36 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  %40 = bitcast i8* %39 to %struct.qla_bsg_a84_mgmt*
  store %struct.qla_bsg_a84_mgmt* %40, %struct.qla_bsg_a84_mgmt** %12, align 8
  %41 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %12, align 8
  %42 = icmp ne %struct.qla_bsg_a84_mgmt* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @ql_log_warn, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %44, %struct.TYPE_17__* %45, i32 28731, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %484

49:                                               ; preds = %34
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.access_chip_84xx* @dma_pool_alloc(i32 %52, i32 %53, i32* %8)
  store %struct.access_chip_84xx* %54, %struct.access_chip_84xx** %7, align 8
  %55 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %56 = icmp ne %struct.access_chip_84xx* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* @ql_log_warn, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %58, %struct.TYPE_17__* %59, i32 28732, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %484

63:                                               ; preds = %49
  %64 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %65 = call i32 @memset(%struct.access_chip_84xx* %64, i32 0, i32 80)
  %66 = load i32, i32* @ACCESS_CHIP_IOCB_TYPE, align 4
  %67 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %68 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %67, i32 0, i32 9
  store i32 %66, i32* %68, align 8
  %69 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %70 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %12, align 8
  %72 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %316 [
    i32 129, label %75
    i32 130, label %75
    i32 128, label %192
    i32 131, label %281
  ]

75:                                               ; preds = %63, %63
  %76 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %77 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %76, i32 0, i32 1
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %81 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %85 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %89 = call i64 @dma_map_sg(i32* %79, i32 %83, i64 %87, i64 %88)
  store i64 %89, i64* %13, align 8
  %90 = load i64, i64* %13, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %75
  %93 = load i32, i32* @ql_log_warn, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %95 = load i64, i64* %13, align 8
  %96 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %93, %struct.TYPE_17__* %94, i32 28733, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %95)
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %11, align 4
  br label %466

99:                                               ; preds = %75
  %100 = load i64, i64* @DMA_FROM_DEVICE, align 8
  store i64 %100, i64* %15, align 8
  %101 = load i64, i64* %13, align 8
  %102 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %103 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %101, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %99
  %108 = load i32, i32* @ql_log_warn, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %110 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %111 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %13, align 8
  %115 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %108, %struct.TYPE_17__* %109, i32 28734, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0), i64 %113, i64 %114)
  %116 = load i32, i32* @EAGAIN, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %11, align 4
  br label %414

118:                                              ; preds = %99
  %119 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %120 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %14, align 8
  %123 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %124 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %123, i32 0, i32 1
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load i64, i64* %14, align 8
  %128 = load i32, i32* @GFP_KERNEL, align 4
  %129 = call i8* @dma_alloc_coherent(i32* %126, i64 %127, i32* %9, i32 %128)
  store i8* %129, i8** %10, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %118
  %133 = load i32, i32* @ql_log_warn, align 4
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %135 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %133, %struct.TYPE_17__* %134, i32 28735, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %11, align 4
  br label %414

138:                                              ; preds = %118
  %139 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %12, align 8
  %140 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 129
  br i1 %143, label %144, label %159

144:                                              ; preds = %138
  %145 = load i32, i32* @ACO_DUMP_MEMORY, align 4
  %146 = call i8* @cpu_to_le16(i32 %145)
  %147 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %148 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %147, i32 0, i32 8
  store i8* %146, i8** %148, align 8
  %149 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %12, align 8
  %150 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @cpu_to_le32(i32 %155)
  %157 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %158 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %157, i32 0, i32 7
  store i8* %156, i8** %158, align 8
  br label %191

159:                                              ; preds = %138
  %160 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %12, align 8
  %161 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 130
  br i1 %164, label %165, label %190

165:                                              ; preds = %159
  %166 = load i32, i32* @ACO_REQUEST_INFO, align 4
  %167 = call i8* @cpu_to_le16(i32 %166)
  %168 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %169 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %168, i32 0, i32 8
  store i8* %167, i8** %169, align 8
  %170 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %12, align 8
  %171 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @cpu_to_le32(i32 %176)
  %178 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %179 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %178, i32 0, i32 7
  store i8* %177, i8** %179, align 8
  %180 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %12, align 8
  %181 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i8* @cpu_to_le32(i32 %186)
  %188 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %189 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %188, i32 0, i32 6
  store i8* %187, i8** %189, align 8
  br label %190

190:                                              ; preds = %165, %159
  br label %191

191:                                              ; preds = %190, %144
  br label %319

192:                                              ; preds = %63
  %193 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %194 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %193, i32 0, i32 1
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 0
  %197 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %198 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %202 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @DMA_TO_DEVICE, align 8
  %206 = call i64 @dma_map_sg(i32* %196, i32 %200, i64 %204, i64 %205)
  store i64 %206, i64* %13, align 8
  %207 = load i64, i64* %13, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %216, label %209

209:                                              ; preds = %192
  %210 = load i32, i32* @ql_log_warn, align 4
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %212 = load i64, i64* %13, align 8
  %213 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %210, %struct.TYPE_17__* %211, i32 28736, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %212)
  %214 = load i32, i32* @ENOMEM, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %11, align 4
  br label %466

216:                                              ; preds = %192
  %217 = load i64, i64* @DMA_TO_DEVICE, align 8
  store i64 %217, i64* %15, align 8
  %218 = load i64, i64* %13, align 8
  %219 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %220 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %218, %222
  br i1 %223, label %224, label %235

224:                                              ; preds = %216
  %225 = load i32, i32* @ql_log_warn, align 4
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %227 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %228 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* %13, align 8
  %232 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %225, %struct.TYPE_17__* %226, i32 28737, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0), i64 %230, i64 %231)
  %233 = load i32, i32* @EAGAIN, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %11, align 4
  br label %414

235:                                              ; preds = %216
  %236 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %237 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %14, align 8
  %240 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %241 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %240, i32 0, i32 1
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 0
  %244 = load i64, i64* %14, align 8
  %245 = load i32, i32* @GFP_KERNEL, align 4
  %246 = call i8* @dma_alloc_coherent(i32* %243, i64 %244, i32* %9, i32 %245)
  store i8* %246, i8** %10, align 8
  %247 = load i8*, i8** %10, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %255, label %249

249:                                              ; preds = %235
  %250 = load i32, i32* @ql_log_warn, align 4
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %252 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %250, %struct.TYPE_17__* %251, i32 28738, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %253 = load i32, i32* @ENOMEM, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %11, align 4
  br label %414

255:                                              ; preds = %235
  %256 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %257 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %261 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i8*, i8** %10, align 8
  %265 = load i64, i64* %14, align 8
  %266 = call i32 @sg_copy_to_buffer(i32 %259, i64 %263, i8* %264, i64 %265)
  %267 = load i32, i32* @ACO_LOAD_MEMORY, align 4
  %268 = call i8* @cpu_to_le16(i32 %267)
  %269 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %270 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %269, i32 0, i32 8
  store i8* %268, i8** %270, align 8
  %271 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %12, align 8
  %272 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i8* @cpu_to_le32(i32 %277)
  %279 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %280 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %279, i32 0, i32 7
  store i8* %278, i8** %280, align 8
  br label %319

281:                                              ; preds = %63
  %282 = load i32, i32* @ACO_CHANGE_CONFIG_PARAM, align 4
  %283 = call i8* @cpu_to_le16(i32 %282)
  %284 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %285 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %284, i32 0, i32 8
  store i8* %283, i8** %285, align 8
  %286 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %12, align 8
  %287 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = call i8* @cpu_to_le32(i32 %292)
  %294 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %295 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %294, i32 0, i32 7
  store i8* %293, i8** %295, align 8
  %296 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %12, align 8
  %297 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = call i8* @cpu_to_le32(i32 %302)
  %304 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %305 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %304, i32 0, i32 6
  store i8* %303, i8** %305, align 8
  %306 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %12, align 8
  %307 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = call i8* @cpu_to_le32(i32 %312)
  %314 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %315 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %314, i32 0, i32 5
  store i8* %313, i8** %315, align 8
  br label %319

316:                                              ; preds = %63
  %317 = load i32, i32* @EIO, align 4
  %318 = sub nsw i32 0, %317
  store i32 %318, i32* %11, align 4
  br label %466

319:                                              ; preds = %281, %255, %191
  %320 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %12, align 8
  %321 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = icmp ne i32 %323, 131
  br i1 %324, label %325, label %357

325:                                              ; preds = %319
  %326 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %12, align 8
  %327 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = call i8* @cpu_to_le32(i32 %329)
  %331 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %332 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %331, i32 0, i32 4
  store i8* %330, i8** %332, align 8
  %333 = call i8* @cpu_to_le16(i32 1)
  %334 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %335 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %334, i32 0, i32 3
  store i8* %333, i8** %335, align 8
  %336 = load i32, i32* %9, align 4
  %337 = call i32 @LSD(i32 %336)
  %338 = call i8* @cpu_to_le32(i32 %337)
  %339 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %340 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %339, i32 0, i32 2
  %341 = load i8**, i8*** %340, align 8
  %342 = getelementptr inbounds i8*, i8** %341, i64 0
  store i8* %338, i8** %342, align 8
  %343 = load i32, i32* %9, align 4
  %344 = call i32 @MSD(i32 %343)
  %345 = call i8* @cpu_to_le32(i32 %344)
  %346 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %347 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %346, i32 0, i32 2
  %348 = load i8**, i8*** %347, align 8
  %349 = getelementptr inbounds i8*, i8** %348, i64 1
  store i8* %345, i8** %349, align 8
  %350 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %12, align 8
  %351 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = call i8* @cpu_to_le32(i32 %353)
  %355 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %356 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %355, i32 0, i32 1
  store i8* %354, i8** %356, align 8
  br label %357

357:                                              ; preds = %325, %319
  %358 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %359 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %360 = load i32, i32* %8, align 4
  %361 = call i32 @qla2x00_issue_iocb(%struct.TYPE_17__* %358, %struct.access_chip_84xx* %359, i32 %360, i32 0)
  store i32 %361, i32* %11, align 4
  %362 = load i32, i32* %11, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %357
  %365 = load i32, i32* @ql_log_warn, align 4
  %366 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %367 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %365, %struct.TYPE_17__* %366, i32 28739, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %368 = load i32, i32* @DID_ERROR, align 4
  %369 = shl i32 %368, 16
  store i32 %369, i32* %11, align 4
  br label %413

370:                                              ; preds = %357
  %371 = load i32, i32* @ql_dbg_user, align 4
  %372 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %373 = call i32 @ql_dbg(i32 %371, %struct.TYPE_17__* %372, i32 28740, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %374 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %375 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %374, i32 0, i32 0
  store i32 4, i32* %375, align 8
  %376 = load i32, i32* @DID_OK, align 4
  %377 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %378 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %377, i32 0, i32 4
  %379 = load %struct.TYPE_19__*, %struct.TYPE_19__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %379, i32 0, i32 1
  store i32 %376, i32* %380, align 8
  %381 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %12, align 8
  %382 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = icmp eq i32 %384, 129
  br i1 %385, label %392, label %386

386:                                              ; preds = %370
  %387 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %12, align 8
  %388 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = icmp eq i32 %390, 130
  br i1 %391, label %392, label %412

392:                                              ; preds = %386, %370
  %393 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %394 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %398 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %397, i32 0, i32 4
  %399 = load %struct.TYPE_19__*, %struct.TYPE_19__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %399, i32 0, i32 0
  store i64 %396, i64* %400, align 8
  %401 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %402 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %401, i32 0, i32 2
  %403 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 8
  %405 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %406 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %405, i32 0, i32 2
  %407 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %406, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = load i8*, i8** %10, align 8
  %410 = load i64, i64* %14, align 8
  %411 = call i32 @sg_copy_from_buffer(i32 %404, i64 %408, i8* %409, i64 %410)
  br label %412

412:                                              ; preds = %392, %386
  br label %413

413:                                              ; preds = %412, %364
  br label %414

414:                                              ; preds = %413, %249, %224, %132, %107
  %415 = load i8*, i8** %10, align 8
  %416 = icmp ne i8* %415, null
  br i1 %416, label %417, label %426

417:                                              ; preds = %414
  %418 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %419 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %418, i32 0, i32 1
  %420 = load %struct.TYPE_22__*, %struct.TYPE_22__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %420, i32 0, i32 0
  %422 = load i64, i64* %14, align 8
  %423 = load i8*, i8** %10, align 8
  %424 = load i32, i32* %9, align 4
  %425 = call i32 @dma_free_coherent(i32* %421, i64 %422, i8* %423, i32 %424)
  br label %426

426:                                              ; preds = %417, %414
  %427 = load i64, i64* %15, align 8
  %428 = load i64, i64* @DMA_TO_DEVICE, align 8
  %429 = icmp eq i64 %427, %428
  br i1 %429, label %430, label %445

430:                                              ; preds = %426
  %431 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %432 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %431, i32 0, i32 1
  %433 = load %struct.TYPE_22__*, %struct.TYPE_22__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %433, i32 0, i32 0
  %435 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %436 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %435, i32 0, i32 3
  %437 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 8
  %439 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %440 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %439, i32 0, i32 3
  %441 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = load i64, i64* @DMA_TO_DEVICE, align 8
  %444 = call i32 @dma_unmap_sg(i32* %434, i32 %438, i64 %442, i64 %443)
  br label %465

445:                                              ; preds = %426
  %446 = load i64, i64* %15, align 8
  %447 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %448 = icmp eq i64 %446, %447
  br i1 %448, label %449, label %464

449:                                              ; preds = %445
  %450 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %451 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %450, i32 0, i32 1
  %452 = load %struct.TYPE_22__*, %struct.TYPE_22__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %452, i32 0, i32 0
  %454 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %455 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %454, i32 0, i32 2
  %456 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 8
  %458 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %459 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %458, i32 0, i32 2
  %460 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %463 = call i32 @dma_unmap_sg(i32* %453, i32 %457, i64 %461, i64 %462)
  br label %464

464:                                              ; preds = %449, %445
  br label %465

465:                                              ; preds = %464, %430
  br label %466

466:                                              ; preds = %465, %316, %209, %92
  %467 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %468 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %7, align 8
  %471 = load i32, i32* %8, align 4
  %472 = call i32 @dma_pool_free(i32 %469, %struct.access_chip_84xx* %470, i32 %471)
  %473 = load i32, i32* %11, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %482, label %475

475:                                              ; preds = %466
  %476 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %477 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %476, i32 0, i32 1
  %478 = bitcast {}** %477 to i32 (%struct.fc_bsg_job*)**
  %479 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %478, align 8
  %480 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %481 = call i32 %479(%struct.fc_bsg_job* %480)
  br label %482

482:                                              ; preds = %475, %466
  %483 = load i32, i32* %11, align 4
  store i32 %483, i32* %2, align 4
  br label %484

484:                                              ; preds = %482, %57, %43, %28
  %485 = load i32, i32* %2, align 4
  ret i32 %485
}

declare dso_local %struct.TYPE_17__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @IS_QLA84XX(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local %struct.access_chip_84xx* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.access_chip_84xx*, i32, i32) #1

declare dso_local i64 @dma_map_sg(i32*, i32, i64, i64) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i64, i8*, i64) #1

declare dso_local i32 @LSD(i32) #1

declare dso_local i32 @MSD(i32) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_17__*, %struct.access_chip_84xx*, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i64, i8*, i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i8*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i64, i64) #1

declare dso_local i32 @dma_pool_free(i32, %struct.access_chip_84xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
