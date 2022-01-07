; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla84xx_updatefw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla84xx_updatefw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { i32, {}*, %struct.TYPE_17__, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.Scsi_Host* }
%struct.TYPE_17__ = type { i64, i64, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_18__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.verify_chip_entry_84xx = type { i32, i8*, i8*, i8**, i8*, i8*, i8*, i8*, i32 }

@ql_dbg_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Not 84xx, exiting.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"dma_map_sg returned %d for request.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [89 x i8] c"DMA mapping resulted in different sg counts, request_sg_cnt: %x dma_request_sg_cnt: %x.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"DMA alloc failed for fw_buf.\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"DMA alloc failed for fw buffer.\0A\00", align 1
@VERIFY_CHIP_IOCB_TYPE = common dso_local global i32 0, align 4
@VCO_FORCE_UPDATE = common dso_local global i32 0, align 4
@VCO_END_OF_DATA = common dso_local global i32 0, align 4
@A84_ISSUE_UPDATE_DIAGFW_CMD = common dso_local global i64 0, align 8
@VCO_DIAG_FW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Vendor request 84xx updatefw failed.\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"Vendor request 84xx updatefw completed.\0A\00", align 1
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @qla84xx_updatefw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla84xx_updatefw(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca %struct.verify_chip_entry_84xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %17 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %18 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %17, i32 0, i32 5
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %18, align 8
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %4, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %21 = call %struct.TYPE_18__* @shost_priv(%struct.Scsi_Host* %20)
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %5, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %23, align 8
  store %struct.qla_hw_data* %24, %struct.qla_hw_data** %6, align 8
  store %struct.verify_chip_entry_84xx* null, %struct.verify_chip_entry_84xx** %7, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %26 = call i32 @IS_QLA84XX(%struct.qla_hw_data* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ql_dbg_user, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = call i32 @ql_dbg(i32 %29, %struct.TYPE_18__* %30, i32 28722, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %256

34:                                               ; preds = %1
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %40 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %44 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @DMA_TO_DEVICE, align 4
  %48 = call i64 @dma_map_sg(i32* %38, i32 %42, i64 %46, i32 %47)
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %34
  %52 = load i32, i32* @ql_log_warn, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = load i64, i64* %12, align 8
  %55 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_log(i32 %52, %struct.TYPE_18__* %53, i32 28723, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %256

58:                                               ; preds = %34
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %61 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %59, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %58
  %66 = load i32, i32* @ql_log_warn, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %68 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %69 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_log(i32 %66, %struct.TYPE_18__* %67, i32 28724, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i64 %71, i64 %72)
  %74 = load i32, i32* @EAGAIN, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %11, align 4
  br label %230

76:                                               ; preds = %58
  %77 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %78 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %13, align 8
  %81 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %82 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %81, i32 0, i32 0
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i64, i64* %13, align 8
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i8* @dma_alloc_coherent(i32* %84, i64 %85, i32* %9, i32 %86)
  store i8* %87, i8** %10, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %76
  %91 = load i32, i32* @ql_log_warn, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %93 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_log(i32 %91, %struct.TYPE_18__* %92, i32 28725, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %11, align 4
  br label %230

96:                                               ; preds = %76
  %97 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %98 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %102 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load i64, i64* %13, align 8
  %107 = call i32 @sg_copy_to_buffer(i32 %100, i64 %104, i8* %105, i64 %106)
  %108 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %109 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call %struct.verify_chip_entry_84xx* @dma_pool_alloc(i32 %110, i32 %111, i32* %8)
  store %struct.verify_chip_entry_84xx* %112, %struct.verify_chip_entry_84xx** %7, align 8
  %113 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %7, align 8
  %114 = icmp ne %struct.verify_chip_entry_84xx* %113, null
  br i1 %114, label %121, label %115

115:                                              ; preds = %96
  %116 = load i32, i32* @ql_log_warn, align 4
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %118 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_log(i32 %116, %struct.TYPE_18__* %117, i32 28726, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %11, align 4
  br label %221

121:                                              ; preds = %96
  %122 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %123 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %122, i32 0, i32 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 1
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %15, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = bitcast i8* %131 to i64*
  %133 = getelementptr inbounds i64, i64* %132, i64 2
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @le32_to_cpu(i64 %134)
  store i64 %135, i64* %16, align 8
  %136 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %7, align 8
  %137 = call i32 @memset(%struct.verify_chip_entry_84xx* %136, i32 0, i32 4)
  %138 = load i32, i32* @VERIFY_CHIP_IOCB_TYPE, align 4
  %139 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %7, align 8
  %140 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %139, i32 0, i32 8
  store i32 %138, i32* %140, align 8
  %141 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %7, align 8
  %142 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  %143 = load i32, i32* @VCO_FORCE_UPDATE, align 4
  %144 = load i32, i32* @VCO_END_OF_DATA, align 4
  %145 = or i32 %143, %144
  store i32 %145, i32* %14, align 4
  %146 = load i64, i64* %15, align 8
  %147 = load i64, i64* @A84_ISSUE_UPDATE_DIAGFW_CMD, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %121
  %150 = load i32, i32* @VCO_DIAG_FW, align 4
  %151 = load i32, i32* %14, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %14, align 4
  br label %153

153:                                              ; preds = %149, %121
  %154 = load i32, i32* %14, align 4
  %155 = call i8* @cpu_to_le16(i32 %154)
  %156 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %7, align 8
  %157 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %156, i32 0, i32 7
  store i8* %155, i8** %157, align 8
  %158 = load i64, i64* %16, align 8
  %159 = call i8* @cpu_to_le32(i64 %158)
  %160 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %7, align 8
  %161 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %160, i32 0, i32 6
  store i8* %159, i8** %161, align 8
  %162 = load i64, i64* %13, align 8
  %163 = call i8* @cpu_to_le32(i64 %162)
  %164 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %7, align 8
  %165 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %164, i32 0, i32 5
  store i8* %163, i8** %165, align 8
  %166 = load i64, i64* %13, align 8
  %167 = call i8* @cpu_to_le32(i64 %166)
  %168 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %7, align 8
  %169 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %168, i32 0, i32 4
  store i8* %167, i8** %169, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i64 @LSD(i32 %170)
  %172 = call i8* @cpu_to_le32(i64 %171)
  %173 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %7, align 8
  %174 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %173, i32 0, i32 3
  %175 = load i8**, i8*** %174, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 0
  store i8* %172, i8** %176, align 8
  %177 = load i32, i32* %9, align 4
  %178 = call i64 @MSD(i32 %177)
  %179 = call i8* @cpu_to_le32(i64 %178)
  %180 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %7, align 8
  %181 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %180, i32 0, i32 3
  %182 = load i8**, i8*** %181, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 1
  store i8* %179, i8** %183, align 8
  %184 = load i64, i64* %13, align 8
  %185 = call i8* @cpu_to_le32(i64 %184)
  %186 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %7, align 8
  %187 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %186, i32 0, i32 2
  store i8* %185, i8** %187, align 8
  %188 = call i8* @cpu_to_le16(i32 1)
  %189 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %7, align 8
  %190 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %189, i32 0, i32 1
  store i8* %188, i8** %190, align 8
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %192 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %7, align 8
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @qla2x00_issue_iocb_timeout(%struct.TYPE_18__* %191, %struct.verify_chip_entry_84xx* %192, i32 %193, i32 0, i32 120)
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %153
  %198 = load i32, i32* @ql_log_warn, align 4
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %200 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_log(i32 %198, %struct.TYPE_18__* %199, i32 28727, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %201 = load i32, i32* @DID_ERROR, align 4
  %202 = shl i32 %201, 16
  store i32 %202, i32* %11, align 4
  br label %214

203:                                              ; preds = %153
  %204 = load i32, i32* @ql_dbg_user, align 4
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %206 = call i32 @ql_dbg(i32 %204, %struct.TYPE_18__* %205, i32 28728, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %207 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %208 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %207, i32 0, i32 0
  store i32 4, i32* %208, align 8
  %209 = load i32, i32* @DID_OK, align 4
  %210 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %211 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %210, i32 0, i32 3
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  store i32 %209, i32* %213, align 4
  br label %214

214:                                              ; preds = %203, %197
  %215 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %216 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %7, align 8
  %219 = load i32, i32* %8, align 4
  %220 = call i32 @dma_pool_free(i32 %217, %struct.verify_chip_entry_84xx* %218, i32 %219)
  br label %221

221:                                              ; preds = %214, %115
  %222 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %223 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %222, i32 0, i32 0
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 0
  %226 = load i64, i64* %13, align 8
  %227 = load i8*, i8** %10, align 8
  %228 = load i32, i32* %9, align 4
  %229 = call i32 @dma_free_coherent(i32* %225, i64 %226, i8* %227, i32 %228)
  br label %230

230:                                              ; preds = %221, %90, %65
  %231 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %232 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %231, i32 0, i32 0
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  %235 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %236 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %240 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* @DMA_TO_DEVICE, align 4
  %244 = call i32 @dma_unmap_sg(i32* %234, i32 %238, i64 %242, i32 %243)
  %245 = load i32, i32* %11, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %254, label %247

247:                                              ; preds = %230
  %248 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %249 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %248, i32 0, i32 1
  %250 = bitcast {}** %249 to i32 (%struct.fc_bsg_job*)**
  %251 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %250, align 8
  %252 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %253 = call i32 %251(%struct.fc_bsg_job* %252)
  br label %254

254:                                              ; preds = %247, %230
  %255 = load i32, i32* %11, align 4
  store i32 %255, i32* %2, align 4
  br label %256

256:                                              ; preds = %254, %51, %28
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local %struct.TYPE_18__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @IS_QLA84XX(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_18__*, i32, i8*) #1

declare dso_local i64 @dma_map_sg(i32*, i32, i64, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_18__*, i32, i8*, ...) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i64, i8*, i64) #1

declare dso_local %struct.verify_chip_entry_84xx* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @memset(%struct.verify_chip_entry_84xx*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @LSD(i32) #1

declare dso_local i64 @MSD(i32) #1

declare dso_local i32 @qla2x00_issue_iocb_timeout(%struct.TYPE_18__*, %struct.verify_chip_entry_84xx*, i32, i32, i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.verify_chip_entry_84xx*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i8*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
