; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_process_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_process_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { i32, {}*, %struct.TYPE_24__, %struct.TYPE_33__, %struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_28__*, %struct.Scsi_Host* }
%struct.TYPE_24__ = type { i64, i64, i32 }
%struct.TYPE_33__ = type { i64, i32 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_30__ = type { i32, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i8** }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_32__, %struct.qla_hw_data* }
%struct.TYPE_32__ = type { i32 }
%struct.qla_hw_data = type { i64, %struct.TYPE_34__*, %struct.TYPE_29__* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_25__*, i32)* }
%struct.msg_echo_lb = type { i8*, i8*, i8*, i8*, i64, i8*, i8* }

@MAILBOX_REGISTER_COUNT = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Host is not online.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"dma_map_sg returned %d for request.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"dma_map_sg returned %d for reply.\0A\00", align 1
@.str.3 = private unnamed_addr constant [127 x i8] c"dma mapping resulted in different sg counts, request_sg_cnt: %x dma_request_sg_cnt: %x reply_sg_cnt: %x dma_reply_sg_cnt: %x.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"dma alloc failed for req_data.\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"dma alloc failed for rsp_data.\0A\00", align 1
@LOOP_READY = common dso_local global i64 0, align 8
@ISP_CFG_F = common dso_local global i64 0, align 8
@ELS_OPCODE_BYTE = common dso_local global i64 0, align 8
@MAX_ELS_FRAME_PAYLOAD = common dso_local global i64 0, align 8
@EXTERNAL_LOOPBACK = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"FC_BSG_HST_VENDOR_ECHO_DIAG\00", align 1
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"BSG request type: %s.\0A\00", align 1
@INT_DEF_LB_ECHO_CMD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Get port config failed.\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@INTERNAL_LOOPBACK_MASK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [41 x i8] c"Loopback operation already in progress.\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"elreq.options=%04x\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"FC_BSG_HST_VENDOR_LOOPBACK\00", align 1
@INT_DEF_LB_LOOPBACK_CMD = common dso_local global i32 0, align 4
@MBS_COMMAND_ERROR = common dso_local global i64 0, align 8
@MBS_LB_RESET = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [34 x i8] c"MBX command error, Aborting ISP.\0A\00", align 1
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [19 x i8] c"MPI reset failed.\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Vendor request %s failed.\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [30 x i8] c"Vendor request %s completed.\0A\00", align 1
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @qla2x00_process_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_process_loopback(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.msg_echo_lb, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [4 x i64], align 16
  %14 = alloca [4 x i64], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %24 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %25 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %24, i32 0, i32 7
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %25, align 8
  store %struct.Scsi_Host* %26, %struct.Scsi_Host** %4, align 8
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %28 = call %struct.TYPE_25__* @shost_priv(%struct.Scsi_Host* %27)
  store %struct.TYPE_25__* %28, %struct.TYPE_25__** %5, align 8
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 3
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %30, align 8
  store %struct.qla_hw_data* %31, %struct.qla_hw_data** %6, align 8
  %32 = load i32, i32* @MAILBOX_REGISTER_COUNT, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %11, align 8
  %35 = alloca i64, i64 %33, align 16
  store i64 %33, i64* %12, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %19, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %1
  %42 = load i32, i32* @ql_log_warn, align 4
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %44 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_log(i32 %42, %struct.TYPE_25__* %43, i32 28697, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  store i32 1, i32* %22, align 4
  br label %528

47:                                               ; preds = %1
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_34__*, %struct.TYPE_34__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %50, i32 0, i32 0
  %52 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %53 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %57 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @DMA_TO_DEVICE, align 4
  %61 = call i8* @dma_map_sg(i32* %51, i32 %55, i64 %59, i32 %60)
  %62 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 0
  store i8* %61, i8** %62, align 8
  %63 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %47
  %67 = load i32, i32* @ql_log_warn, align 4
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %69 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_log(i32 %67, %struct.TYPE_25__* %68, i32 28698, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  store i32 1, i32* %22, align 4
  br label %528

74:                                               ; preds = %47
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %76 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %75, i32 0, i32 1
  %77 = load %struct.TYPE_34__*, %struct.TYPE_34__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %77, i32 0, i32 0
  %79 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %80 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %84 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %88 = call i8* @dma_map_sg(i32* %78, i32 %82, i64 %86, i32 %87)
  %89 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 1
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %101, label %93

93:                                               ; preds = %74
  %94 = load i32, i32* @ql_log_warn, align 4
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %96 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_log(i32 %94, %struct.TYPE_25__* %95, i32 28699, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %97)
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %7, align 4
  br label %502

101:                                              ; preds = %74
  %102 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %105 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i8*
  %109 = icmp ne i8* %103, %108
  br i1 %109, label %119, label %110

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %114 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = icmp ne i8* %112, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %110, %101
  %120 = load i32, i32* @ql_log_warn, align 4
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %122 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %123 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %129 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_log(i32 %120, %struct.TYPE_25__* %121, i32 28700, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.3, i64 0, i64 0), i64 %125, i8* %127, i64 %131, i8* %133)
  %135 = load i32, i32* @EAGAIN, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %7, align 4
  br label %487

137:                                              ; preds = %110
  %138 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %139 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %21, align 8
  store i64 %141, i64* %18, align 8
  %142 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %143 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %142, i32 0, i32 1
  %144 = load %struct.TYPE_34__*, %struct.TYPE_34__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %144, i32 0, i32 0
  %146 = load i64, i64* %18, align 8
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call i32* @dma_alloc_coherent(i32* %145, i64 %146, i8** %17, i32 %147)
  store i32* %148, i32** %16, align 8
  %149 = load i32*, i32** %16, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %157, label %151

151:                                              ; preds = %137
  %152 = load i32, i32* @ql_log_warn, align 4
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %154 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_log(i32 %152, %struct.TYPE_25__* %153, i32 28701, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %7, align 4
  br label %487

157:                                              ; preds = %137
  %158 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %159 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %158, i32 0, i32 1
  %160 = load %struct.TYPE_34__*, %struct.TYPE_34__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %160, i32 0, i32 0
  %162 = load i64, i64* %21, align 8
  %163 = load i32, i32* @GFP_KERNEL, align 4
  %164 = call i32* @dma_alloc_coherent(i32* %161, i64 %162, i8** %20, i32 %163)
  store i32* %164, i32** %19, align 8
  %165 = load i32*, i32** %19, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %173, label %167

167:                                              ; preds = %157
  %168 = load i32, i32* @ql_log_warn, align 4
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %170 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_log(i32 %168, %struct.TYPE_25__* %169, i32 28676, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %171 = load i32, i32* @ENOMEM, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %7, align 4
  br label %478

173:                                              ; preds = %157
  %174 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %175 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %179 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i32*, i32** %16, align 8
  %183 = load i64, i64* %18, align 8
  %184 = call i32 @sg_copy_to_buffer(i32 %177, i64 %181, i32* %182, i64 %183)
  %185 = load i8*, i8** %17, align 8
  %186 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 6
  store i8* %185, i8** %186, align 8
  %187 = load i8*, i8** %20, align 8
  %188 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 5
  store i8* %187, i8** %188, align 8
  %189 = load i64, i64* %18, align 8
  %190 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 4
  store i64 %189, i64* %190, align 8
  %191 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %192 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %191, i32 0, i32 6
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 0
  %197 = load i8**, i8*** %196, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 1
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 2
  store i8* %199, i8** %200, align 8
  %201 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %202 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %201, i32 0, i32 6
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 0
  %207 = load i8**, i8*** %206, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i64 2
  %209 = load i8*, i8** %208, align 8
  %210 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 3
  store i8* %209, i8** %210, align 8
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 1
  %213 = call i64 @atomic_read(i32* %212)
  %214 = load i64, i64* @LOOP_READY, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %254

216:                                              ; preds = %173
  %217 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %218 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @ISP_CFG_F, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %241, label %222

222:                                              ; preds = %216
  %223 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %224 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %222
  %227 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %228 = call i64 @IS_QLA8031(%struct.qla_hw_data* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %254

230:                                              ; preds = %226, %222
  %231 = load i32*, i32** %16, align 8
  %232 = bitcast i32* %231 to i64*
  %233 = load i64, i64* %232, align 8
  %234 = call i64 @le32_to_cpu(i64 %233)
  %235 = load i64, i64* @ELS_OPCODE_BYTE, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %254

237:                                              ; preds = %230
  %238 = load i64, i64* %18, align 8
  %239 = load i64, i64* @MAX_ELS_FRAME_PAYLOAD, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %254

241:                                              ; preds = %237, %216
  %242 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 2
  %243 = load i8*, i8** %242, align 8
  %244 = load i8*, i8** @EXTERNAL_LOOPBACK, align 8
  %245 = icmp eq i8* %243, %244
  br i1 %245, label %246, label %254

246:                                              ; preds = %241
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  %247 = load i32, i32* @ql_dbg_user, align 4
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %249 = load i8*, i8** %9, align 8
  %250 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_dbg(i32 %247, %struct.TYPE_25__* %248, i32 28702, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %249)
  %251 = load i32, i32* @INT_DEF_LB_ECHO_CMD, align 4
  store i32 %251, i32* %8, align 4
  %252 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %253 = call i32 @qla2x00_echo_test(%struct.TYPE_25__* %252, %struct.msg_echo_lb* %10, i64* %35)
  store i32 %253, i32* %7, align 4
  br label %406

254:                                              ; preds = %241, %237, %230, %226, %173
  %255 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %256 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %254
  %259 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %260 = call i64 @IS_QLA8031(%struct.qla_hw_data* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %397

262:                                              ; preds = %258, %254
  %263 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %264 = call i32 @memset(i64* %263, i32 0, i32 32)
  %265 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %266 = call i32 @memset(i64* %265, i32 0, i32 32)
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %268 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %269 = call i64 @qla81xx_get_port_config(%struct.TYPE_25__* %267, i64* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %262
  %272 = load i32, i32* @ql_log_warn, align 4
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %274 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_log(i32 %272, %struct.TYPE_25__* %273, i32 28703, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %275 = load i32, i32* @EPERM, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %7, align 4
  br label %469

277:                                              ; preds = %262
  %278 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %279 = load i64, i64* %278, align 16
  %280 = load i64, i64* @INTERNAL_LOOPBACK_MASK, align 8
  %281 = and i64 %279, %280
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %277
  %284 = load i32, i32* @ql_dbg_user, align 4
  %285 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %286 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_dbg(i32 %284, %struct.TYPE_25__* %285, i32 28868, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %287 = load i32, i32* @EAGAIN, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %7, align 4
  br label %469

289:                                              ; preds = %277
  %290 = load i32, i32* @ql_dbg_user, align 4
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %292 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 2
  %293 = load i8*, i8** %292, align 8
  %294 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_dbg(i32 %290, %struct.TYPE_25__* %291, i32 28864, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %293)
  %295 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 2
  %296 = load i8*, i8** %295, align 8
  %297 = load i8*, i8** @EXTERNAL_LOOPBACK, align 8
  %298 = icmp eq i8* %296, %297
  br i1 %298, label %299, label %315

299:                                              ; preds = %289
  %300 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %301 = call i64 @IS_QLA8031(%struct.qla_hw_data* %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %299
  %304 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %305 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %306 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %307 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 2
  %308 = load i8*, i8** %307, align 8
  %309 = call i32 @qla81xx_set_loopback_mode(%struct.TYPE_25__* %304, i64* %305, i64* %306, i8* %308)
  store i32 %309, i32* %7, align 4
  br label %314

310:                                              ; preds = %299
  %311 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %312 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %313 = call i32 @qla81xx_reset_loopback_mode(%struct.TYPE_25__* %311, i64* %312, i32 1, i32 0)
  store i32 %313, i32* %7, align 4
  br label %314

314:                                              ; preds = %310, %303
  br label %322

315:                                              ; preds = %289
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %317 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %318 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %319 = getelementptr inbounds %struct.msg_echo_lb, %struct.msg_echo_lb* %10, i32 0, i32 2
  %320 = load i8*, i8** %319, align 8
  %321 = call i32 @qla81xx_set_loopback_mode(%struct.TYPE_25__* %316, i64* %317, i64* %318, i8* %320)
  store i32 %321, i32* %7, align 4
  br label %322

322:                                              ; preds = %315, %314
  %323 = load i32, i32* %7, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %322
  %326 = load i32, i32* @EPERM, align 4
  %327 = sub nsw i32 0, %326
  store i32 %327, i32* %7, align 4
  br label %469

328:                                              ; preds = %322
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  %329 = load i32, i32* @ql_dbg_user, align 4
  %330 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %331 = load i8*, i8** %9, align 8
  %332 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_dbg(i32 %329, %struct.TYPE_25__* %330, i32 28712, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %331)
  %333 = load i32, i32* @INT_DEF_LB_LOOPBACK_CMD, align 4
  store i32 %333, i32* %8, align 4
  %334 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %335 = call i32 @qla2x00_loopback_test(%struct.TYPE_25__* %334, %struct.msg_echo_lb* %10, i64* %35)
  store i32 %335, i32* %7, align 4
  %336 = getelementptr inbounds i64, i64* %35, i64 0
  %337 = load i64, i64* %336, align 16
  %338 = load i64, i64* @MBS_COMMAND_ERROR, align 8
  %339 = icmp eq i64 %337, %338
  br i1 %339, label %340, label %373

340:                                              ; preds = %328
  %341 = getelementptr inbounds i64, i64* %35, i64 1
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @MBS_LB_RESET, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %373

345:                                              ; preds = %340
  %346 = load i32, i32* @ql_log_warn, align 4
  %347 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %348 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_log(i32 %346, %struct.TYPE_25__* %347, i32 28713, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %349 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %350 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %350, i32 0, i32 0
  %352 = call i32 @set_bit(i32 %349, i32* %351)
  %353 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %354 = call i32 @qla2xxx_wake_dpc(%struct.TYPE_25__* %353)
  %355 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %356 = call i32 @qla2x00_wait_for_chip_reset(%struct.TYPE_25__* %355)
  %357 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %358 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %370

360:                                              ; preds = %345
  %361 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %362 = call i64 @qla81xx_restart_mpi_firmware(%struct.TYPE_25__* %361)
  %363 = load i64, i64* @QLA_SUCCESS, align 8
  %364 = icmp ne i64 %362, %363
  br i1 %364, label %365, label %369

365:                                              ; preds = %360
  %366 = load i32, i32* @ql_log_warn, align 4
  %367 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %368 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_log(i32 %366, %struct.TYPE_25__* %367, i32 28714, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  br label %369

369:                                              ; preds = %365, %360
  br label %370

370:                                              ; preds = %369, %345
  %371 = load i32, i32* @EIO, align 4
  %372 = sub nsw i32 0, %371
  store i32 %372, i32* %7, align 4
  br label %469

373:                                              ; preds = %340, %328
  %374 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %375 = load i64, i64* %374, align 16
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %396

377:                                              ; preds = %373
  %378 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %379 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %380 = call i32 @qla81xx_reset_loopback_mode(%struct.TYPE_25__* %378, i64* %379, i32 0, i32 1)
  store i32 %380, i32* %23, align 4
  %381 = load i32, i32* %23, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %395

383:                                              ; preds = %377
  %384 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %385 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %384, i32 0, i32 2
  %386 = load %struct.TYPE_29__*, %struct.TYPE_29__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %386, i32 0, i32 0
  %388 = load i32 (%struct.TYPE_25__*, i32)*, i32 (%struct.TYPE_25__*, i32)** %387, align 8
  %389 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %390 = call i32 %388(%struct.TYPE_25__* %389, i32 0)
  %391 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %392 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %392, i32 0, i32 0
  %394 = call i32 @set_bit(i32 %391, i32* %393)
  br label %395

395:                                              ; preds = %383, %377
  br label %396

396:                                              ; preds = %395, %373
  br label %405

397:                                              ; preds = %258
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  %398 = load i32, i32* @ql_dbg_user, align 4
  %399 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %400 = load i8*, i8** %9, align 8
  %401 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_dbg(i32 %398, %struct.TYPE_25__* %399, i32 28715, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %400)
  %402 = load i32, i32* @INT_DEF_LB_LOOPBACK_CMD, align 4
  store i32 %402, i32* %8, align 4
  %403 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %404 = call i32 @qla2x00_loopback_test(%struct.TYPE_25__* %403, %struct.msg_echo_lb* %10, i64* %35)
  store i32 %404, i32* %7, align 4
  br label %405

405:                                              ; preds = %397, %396
  br label %406

406:                                              ; preds = %405, %246
  %407 = load i32, i32* %7, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %424

409:                                              ; preds = %406
  %410 = load i32, i32* @ql_log_warn, align 4
  %411 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %412 = load i8*, i8** %9, align 8
  %413 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_log(i32 %410, %struct.TYPE_25__* %411, i32 28716, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8* %412)
  store i32 0, i32* %7, align 4
  %414 = load i32, i32* @DID_ERROR, align 4
  %415 = shl i32 %414, 16
  %416 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %417 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %416, i32 0, i32 5
  %418 = load %struct.TYPE_30__*, %struct.TYPE_30__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %418, i32 0, i32 0
  store i32 %415, i32* %419, align 8
  %420 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %421 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %420, i32 0, i32 5
  %422 = load %struct.TYPE_30__*, %struct.TYPE_30__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %422, i32 0, i32 1
  store i64 0, i64* %423, align 8
  br label %446

424:                                              ; preds = %406
  %425 = load i32, i32* @ql_dbg_user, align 4
  %426 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %427 = load i8*, i8** %9, align 8
  %428 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_dbg(i32 %425, %struct.TYPE_25__* %426, i32 28717, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i8* %427)
  %429 = load i32, i32* @DID_OK, align 4
  %430 = shl i32 %429, 16
  %431 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %432 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %431, i32 0, i32 5
  %433 = load %struct.TYPE_30__*, %struct.TYPE_30__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %433, i32 0, i32 0
  store i32 %430, i32* %434, align 8
  %435 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %436 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %435, i32 0, i32 3
  %437 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 8
  %439 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %440 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %439, i32 0, i32 3
  %441 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = load i32*, i32** %19, align 8
  %444 = load i64, i64* %21, align 8
  %445 = call i32 @sg_copy_from_buffer(i32 %438, i64 %442, i32* %443, i64 %444)
  br label %446

446:                                              ; preds = %424, %409
  %447 = mul nuw i64 8, %33
  %448 = add i64 4, %447
  %449 = add i64 %448, 4
  %450 = trunc i64 %449 to i32
  %451 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %452 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %451, i32 0, i32 0
  store i32 %450, i32* %452, align 8
  %453 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %454 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %453, i32 0, i32 4
  %455 = load %struct.TYPE_31__*, %struct.TYPE_31__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = inttoptr i64 %457 to i32*
  %459 = getelementptr inbounds i32, i32* %458, i64 4
  store i32* %459, i32** %15, align 8
  %460 = load i32*, i32** %15, align 8
  %461 = mul nuw i64 8, %33
  %462 = trunc i64 %461 to i32
  %463 = call i32 @memcpy(i32* %460, i64* %35, i32 %462)
  %464 = mul nuw i64 8, %33
  %465 = load i32*, i32** %15, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 %464
  store i32* %466, i32** %15, align 8
  %467 = load i32, i32* %8, align 4
  %468 = load i32*, i32** %15, align 8
  store i32 %467, i32* %468, align 4
  br label %469

469:                                              ; preds = %446, %370, %325, %283, %271
  %470 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %471 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %470, i32 0, i32 1
  %472 = load %struct.TYPE_34__*, %struct.TYPE_34__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %472, i32 0, i32 0
  %474 = load i64, i64* %21, align 8
  %475 = load i32*, i32** %19, align 8
  %476 = load i8*, i8** %20, align 8
  %477 = call i32 @dma_free_coherent(i32* %473, i64 %474, i32* %475, i8* %476)
  br label %478

478:                                              ; preds = %469, %167
  %479 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %480 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %479, i32 0, i32 1
  %481 = load %struct.TYPE_34__*, %struct.TYPE_34__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %481, i32 0, i32 0
  %483 = load i64, i64* %18, align 8
  %484 = load i32*, i32** %16, align 8
  %485 = load i8*, i8** %17, align 8
  %486 = call i32 @dma_free_coherent(i32* %482, i64 %483, i32* %484, i8* %485)
  br label %487

487:                                              ; preds = %478, %151, %119
  %488 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %489 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %488, i32 0, i32 1
  %490 = load %struct.TYPE_34__*, %struct.TYPE_34__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %490, i32 0, i32 0
  %492 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %493 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %492, i32 0, i32 3
  %494 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 8
  %496 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %497 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %496, i32 0, i32 3
  %498 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %497, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %501 = call i32 @dma_unmap_sg(i32* %491, i32 %495, i64 %499, i32 %500)
  br label %502

502:                                              ; preds = %487, %93
  %503 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %504 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %503, i32 0, i32 1
  %505 = load %struct.TYPE_34__*, %struct.TYPE_34__** %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %505, i32 0, i32 0
  %507 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %508 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %507, i32 0, i32 2
  %509 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %508, i32 0, i32 2
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %512 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %511, i32 0, i32 2
  %513 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %512, i32 0, i32 0
  %514 = load i64, i64* %513, align 8
  %515 = load i32, i32* @DMA_TO_DEVICE, align 4
  %516 = call i32 @dma_unmap_sg(i32* %506, i32 %510, i64 %514, i32 %515)
  %517 = load i32, i32* %7, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %526, label %519

519:                                              ; preds = %502
  %520 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %521 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %520, i32 0, i32 1
  %522 = bitcast {}** %521 to i32 (%struct.fc_bsg_job*)**
  %523 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %522, align 8
  %524 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %525 = call i32 %523(%struct.fc_bsg_job* %524)
  br label %526

526:                                              ; preds = %519, %502
  %527 = load i32, i32* %7, align 4
  store i32 %527, i32* %2, align 4
  store i32 1, i32* %22, align 4
  br label %528

528:                                              ; preds = %526, %66, %41
  %529 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %529)
  %530 = load i32, i32* %2, align 4
  ret i32 %530
}

declare dso_local %struct.TYPE_25__* @shost_priv(%struct.Scsi_Host*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ql_log(i32, %struct.TYPE_25__*, i32, i8*, ...) #1

declare dso_local i8* @dma_map_sg(i32*, i32, i64, i32) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i64, i8**, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i64, i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @IS_QLA81XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA8031(%struct.qla_hw_data*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_25__*, i32, i8*, ...) #1

declare dso_local i32 @qla2x00_echo_test(%struct.TYPE_25__*, %struct.msg_echo_lb*, i64*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @qla81xx_get_port_config(%struct.TYPE_25__*, i64*) #1

declare dso_local i32 @qla81xx_set_loopback_mode(%struct.TYPE_25__*, i64*, i64*, i8*) #1

declare dso_local i32 @qla81xx_reset_loopback_mode(%struct.TYPE_25__*, i64*, i32, i32) #1

declare dso_local i32 @qla2x00_loopback_test(%struct.TYPE_25__*, %struct.msg_echo_lb*, i64*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qla2xxx_wake_dpc(%struct.TYPE_25__*) #1

declare dso_local i32 @qla2x00_wait_for_chip_reset(%struct.TYPE_25__*) #1

declare dso_local i64 @qla81xx_restart_mpi_firmware(%struct.TYPE_25__*) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i64, i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i32*, i8*) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
