; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_issue_mbox.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_issue_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, %struct.TYPE_62__, %struct.TYPE_70__* }
%struct.TYPE_62__ = type { i32 }
%struct.TYPE_70__ = type { i64 }
%struct.fc_bsg_job = type { %struct.TYPE_65__, %struct.TYPE_63__*, %struct.bsg_job_data*, %struct.TYPE_69__, %struct.TYPE_68__* }
%struct.TYPE_65__ = type { i32, i32, i32 }
%struct.TYPE_63__ = type { i32 }
%struct.bsg_job_data = type { %struct.TYPE_61__, %struct.fc_bsg_job*, i32 }
%struct.TYPE_61__ = type { %struct.TYPE_60__ }
%struct.TYPE_60__ = type { i32, i32, i32, %struct.TYPE_66__*, %struct.TYPE_66__*, %struct.TYPE_67__*, %struct.lpfc_dmabuf* }
%struct.TYPE_66__ = type { i64, %struct.TYPE_58__, i32 }
%struct.TYPE_58__ = type { i64*, %struct.TYPE_50__, %struct.TYPE_49__, %struct.READ_EVENT_LOG_VAR, %struct.TYPE_45__ }
%struct.TYPE_50__ = type { i64 }
%struct.TYPE_49__ = type { i64 }
%struct.READ_EVENT_LOG_VAR = type { %struct.TYPE_48__ }
%struct.TYPE_48__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i64 }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { %struct.TYPE_74__, %struct.TYPE_71__ }
%struct.TYPE_74__ = type { %struct.TYPE_73__, i8*, i8* }
%struct.TYPE_73__ = type { %struct.TYPE_72__ }
%struct.TYPE_72__ = type { i64 }
%struct.TYPE_71__ = type { i8*, i8* }
%struct.TYPE_67__ = type { i32, i32, %struct.bsg_job_data*, i32, %struct.TYPE_56__, i32, %struct.TYPE_66__*, %struct.lpfc_vport* }
%struct.TYPE_56__ = type { %struct.TYPE_55__, %struct.TYPE_66__ }
%struct.TYPE_55__ = type { %struct.TYPE_54__ }
%struct.TYPE_54__ = type { %struct.lpfc_mbx_sli4_config }
%struct.lpfc_mbx_sli4_config = type { %struct.TYPE_57__ }
%struct.TYPE_57__ = type { %struct.READ_EVENT_LOG_VAR }
%struct.lpfc_dmabuf = type { i64, i64 }
%struct.TYPE_69__ = type { i32, i32, i32 }
%struct.TYPE_68__ = type { %struct.TYPE_64__ }
%struct.TYPE_64__ = type { %struct.TYPE_53__ }
%struct.TYPE_53__ = type { i64 }
%struct.lpfc_vport = type { i32 }
%struct.dfc_mbox_req = type { i32, i32, i32 }
%struct.lpfc_mbx_nembed_cmd = type { %struct.TYPE_59__* }
%struct.TYPE_59__ = type { i64, i8*, i8* }
%struct.mbox_header = type { i32 }
%struct.ulp_bde64 = type { i8*, i8*, %struct.TYPE_52__ }
%struct.TYPE_52__ = type { %struct.TYPE_51__ }
%struct.TYPE_51__ = type { i32 }

@BSG_MBOX_SIZE = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@LPFC_BLOCK_MGMT_IO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@SLI_CONFIG_HANDLED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"2727 Failed allocation of dd_data\0A\00", align 1
@OWN_HOST = common dso_local global i32 0, align 4
@MBX_DUMP_MEMORY = common dso_local global i64 0, align 8
@MBX_RESTART = common dso_local global i64 0, align 8
@MBX_WRITE_VPARMS = common dso_local global i64 0, align 8
@MBX_WRITE_WWN = common dso_local global i64 0, align 8
@LOG_MBOX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"2797 mbox: Issued mailbox cmd 0x%x while in stopped state.\0A\00", align 1
@MBX_RUN_BIU_DIAG64 = common dso_local global i64 0, align 8
@MBX_READ_EVENT_LOG = common dso_local global i64 0, align 8
@lpfc_event_log = common dso_local global i32 0, align 4
@DMP_WELL_KNOWN = common dso_local global i64 0, align 8
@MBX_UPDATE_CFG = common dso_local global i64 0, align 8
@MBX_SLI4_CONFIG = common dso_local global i64 0, align 8
@lpfc_mbox_hdr_emb = common dso_local global i32 0, align 4
@lpfc_bsg_issue_mbox_cmpl = common dso_local global i32 0, align 4
@TYPE_MBOX = common dso_local global i32 0, align 4
@FC_OFFLINE_MODE = common dso_local global i32 0, align 4
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.lpfc_hba*, %struct.fc_bsg_job*, %struct.lpfc_vport*)* @lpfc_bsg_issue_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lpfc_bsg_issue_mbox(%struct.lpfc_hba* %0, %struct.fc_bsg_job* %1, %struct.lpfc_vport* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.fc_bsg_job*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.TYPE_67__*, align 8
  %9 = alloca %struct.TYPE_66__*, align 8
  %10 = alloca %struct.TYPE_66__*, align 8
  %11 = alloca %struct.bsg_job_data*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.dfc_mbox_req*, align 8
  %14 = alloca %struct.READ_EVENT_LOG_VAR*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.lpfc_mbx_sli4_config*, align 8
  %19 = alloca %struct.lpfc_mbx_nembed_cmd*, align 8
  %20 = alloca %struct.mbox_header*, align 8
  %21 = alloca %struct.ulp_bde64*, align 8
  %22 = alloca %struct.TYPE_66__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_66__*, align 8
  %25 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.fc_bsg_job* %1, %struct.fc_bsg_job** %6, align 8
  store %struct.lpfc_vport* %2, %struct.lpfc_vport** %7, align 8
  store %struct.TYPE_67__* null, %struct.TYPE_67__** %8, align 8
  store %struct.TYPE_66__* null, %struct.TYPE_66__** %10, align 8
  store %struct.bsg_job_data* null, %struct.bsg_job_data** %11, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %12, align 8
  store %struct.TYPE_66__* null, %struct.TYPE_66__** %22, align 8
  store i32 0, i32* %23, align 4
  %26 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %27 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %26, i32 0, i32 1
  %28 = load %struct.TYPE_63__*, %struct.TYPE_63__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %31 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BSG_MBOX_SIZE, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %3
  %37 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %38 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BSG_MBOX_SIZE, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36, %3
  %44 = load i32, i32* @ERANGE, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %23, align 4
  br label %719

46:                                               ; preds = %36
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @LPFC_BLOCK_MGMT_IO, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %23, align 4
  br label %719

57:                                               ; preds = %46
  %58 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %59 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %58, i32 0, i32 4
  %60 = load %struct.TYPE_68__*, %struct.TYPE_68__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.dfc_mbox_req*
  store %struct.dfc_mbox_req* %65, %struct.dfc_mbox_req** %13, align 8
  %66 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %13, align 8
  %67 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = load i32, i32* @BSG_MBOX_SIZE, align 4
  %71 = sext i32 %70 to i64
  %72 = udiv i64 %71, 8
  %73 = icmp ugt i64 %69, %72
  br i1 %73, label %83, label %74

74:                                               ; preds = %57
  %75 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %13, align 8
  %76 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = load i32, i32* @BSG_MBOX_SIZE, align 4
  %80 = sext i32 %79 to i64
  %81 = udiv i64 %80, 8
  %82 = icmp ugt i64 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %74, %57
  %84 = load i32, i32* @ERANGE, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %23, align 4
  br label %719

86:                                               ; preds = %74
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %88 = call %struct.lpfc_dmabuf* @lpfc_bsg_dma_page_alloc(%struct.lpfc_hba* %87)
  store %struct.lpfc_dmabuf* %88, %struct.lpfc_dmabuf** %12, align 8
  %89 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %90 = icmp ne %struct.lpfc_dmabuf* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %93 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91, %86
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %23, align 4
  br label %719

99:                                               ; preds = %91
  %100 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %101 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to %struct.TYPE_66__*
  store %struct.TYPE_66__* %103, %struct.TYPE_66__** %10, align 8
  %104 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %105 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %25, align 8
  %109 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %110 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %114 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_66__*, %struct.TYPE_66__** %10, align 8
  %118 = load i64, i64* %25, align 8
  %119 = call i32 @sg_copy_to_buffer(i32 %112, i32 %116, %struct.TYPE_66__* %117, i64 %118)
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @LPFC_SLI_REV4, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %139

125:                                              ; preds = %99
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %127 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %128 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %129 = call i32 @lpfc_bsg_handle_sli_cfg_ext(%struct.lpfc_hba* %126, %struct.fc_bsg_job* %127, %struct.lpfc_dmabuf* %128)
  store i32 %129, i32* %23, align 4
  %130 = load i32, i32* %23, align 4
  %131 = load i32, i32* @SLI_CONFIG_HANDLED, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %734

134:                                              ; preds = %125
  %135 = load i32, i32* %23, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  br label %719

138:                                              ; preds = %134
  br label %139

139:                                              ; preds = %138, %99
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %141 = load %struct.TYPE_66__*, %struct.TYPE_66__** %10, align 8
  %142 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %143 = call i32 @lpfc_bsg_check_cmd_access(%struct.lpfc_hba* %140, %struct.TYPE_66__* %141, %struct.lpfc_vport* %142)
  store i32 %143, i32* %23, align 4
  %144 = load i32, i32* %23, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %719

147:                                              ; preds = %139
  %148 = load i32, i32* @GFP_KERNEL, align 4
  %149 = call %struct.bsg_job_data* @kmalloc(i32 64, i32 %148)
  store %struct.bsg_job_data* %149, %struct.bsg_job_data** %11, align 8
  %150 = load %struct.bsg_job_data*, %struct.bsg_job_data** %11, align 8
  %151 = icmp ne %struct.bsg_job_data* %150, null
  br i1 %151, label %159, label %152

152:                                              ; preds = %147
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %154 = load i32, i32* @KERN_WARNING, align 4
  %155 = load i32, i32* @LOG_LIBDFC, align 4
  %156 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %153, i32 %154, i32 %155, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %23, align 4
  br label %719

159:                                              ; preds = %147
  %160 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %161 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @GFP_KERNEL, align 4
  %164 = call %struct.TYPE_67__* @mempool_alloc(i32 %162, i32 %163)
  store %struct.TYPE_67__* %164, %struct.TYPE_67__** %8, align 8
  %165 = load %struct.TYPE_67__*, %struct.TYPE_67__** %8, align 8
  %166 = icmp ne %struct.TYPE_67__* %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %159
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %23, align 4
  br label %719

170:                                              ; preds = %159
  %171 = load %struct.TYPE_67__*, %struct.TYPE_67__** %8, align 8
  %172 = call i32 @memset(%struct.TYPE_67__* %171, i32 0, i32 144)
  %173 = load %struct.TYPE_67__*, %struct.TYPE_67__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %174, i32 0, i32 1
  store %struct.TYPE_66__* %175, %struct.TYPE_66__** %9, align 8
  %176 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %177 = load %struct.TYPE_66__*, %struct.TYPE_66__** %10, align 8
  %178 = call i32 @memcpy(%struct.TYPE_66__* %176, %struct.TYPE_66__* %177, i32 88)
  %179 = load i32, i32* @OWN_HOST, align 4
  %180 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 8
  %182 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %183 = load %struct.TYPE_67__*, %struct.TYPE_67__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %183, i32 0, i32 7
  store %struct.lpfc_vport* %182, %struct.lpfc_vport** %184, align 8
  %185 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %186 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %185, i32 0, i32 3
  %187 = load %struct.TYPE_70__*, %struct.TYPE_70__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %223

191:                                              ; preds = %170
  %192 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @MBX_DUMP_MEMORY, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %223

197:                                              ; preds = %191
  %198 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @MBX_RESTART, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %223

203:                                              ; preds = %197
  %204 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @MBX_WRITE_VPARMS, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %223

209:                                              ; preds = %203
  %210 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @MBX_WRITE_WWN, align 8
  %214 = icmp ne i64 %212, %213
  br i1 %214, label %215, label %223

215:                                              ; preds = %209
  %216 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %217 = load i32, i32* @KERN_WARNING, align 4
  %218 = load i32, i32* @LOG_MBOX, align 4
  %219 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %216, i32 %217, i32 %218, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %221)
  br label %223

223:                                              ; preds = %215, %209, %203, %197, %191, %170
  %224 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %13, align 8
  %225 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %223
  %229 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %13, align 8
  %230 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %261

233:                                              ; preds = %228, %223
  %234 = load %struct.TYPE_66__*, %struct.TYPE_66__** %10, align 8
  store %struct.TYPE_66__* %234, %struct.TYPE_66__** %24, align 8
  %235 = load %struct.TYPE_66__*, %struct.TYPE_66__** %24, align 8
  %236 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %235, i64 88
  store %struct.TYPE_66__* %236, %struct.TYPE_66__** %22, align 8
  %237 = load %struct.TYPE_66__*, %struct.TYPE_66__** %22, align 8
  %238 = load %struct.TYPE_67__*, %struct.TYPE_67__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %238, i32 0, i32 6
  store %struct.TYPE_66__* %237, %struct.TYPE_66__** %239, align 8
  %240 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %13, align 8
  %241 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = mul i64 %243, 8
  %245 = trunc i64 %244 to i32
  %246 = load %struct.TYPE_67__*, %struct.TYPE_67__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  %248 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %13, align 8
  %249 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = mul i64 %251, 8
  %253 = trunc i64 %252 to i32
  %254 = load %struct.TYPE_67__*, %struct.TYPE_67__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 4
  %256 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %13, align 8
  %257 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_67__*, %struct.TYPE_67__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %259, i32 0, i32 5
  store i32 %258, i32* %260, align 8
  br label %261

261:                                              ; preds = %233, %228
  %262 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @MBX_RUN_BIU_DIAG64, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %363

267:                                              ; preds = %261
  %268 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %269, i32 0, i32 0
  %271 = load i64*, i64** %270, align 8
  %272 = getelementptr inbounds i64, i64* %271, i64 1
  %273 = load i64, i64* %272, align 8
  store i64 %273, i64* %15, align 8
  %274 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %275, i32 0, i32 0
  %277 = load i64*, i64** %276, align 8
  %278 = getelementptr inbounds i64, i64* %277, i64 4
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %16, align 8
  %280 = load i64, i64* %15, align 8
  %281 = load i64, i64* %16, align 8
  %282 = icmp sgt i64 %280, %281
  br i1 %282, label %289, label %283

283:                                              ; preds = %267
  %284 = load i64, i64* %15, align 8
  %285 = load i32, i32* @BSG_MBOX_SIZE, align 4
  %286 = sext i32 %285 to i64
  %287 = sub i64 %286, 88
  %288 = icmp ugt i64 %284, %287
  br i1 %288, label %289, label %292

289:                                              ; preds = %283, %267
  %290 = load i32, i32* @ERANGE, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %23, align 4
  br label %719

292:                                              ; preds = %283
  %293 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %294 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = add i64 %295, 88
  %297 = call i8* @putPaddrHigh(i64 %296)
  %298 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %299, i32 0, i32 4
  %301 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %303, i32 0, i32 2
  store i8* %297, i8** %304, align 8
  %305 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %306 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = add i64 %307, 88
  %309 = call i8* @putPaddrLow(i64 %308)
  %310 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %311, i32 0, i32 4
  %313 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %315, i32 0, i32 1
  store i8* %309, i8** %316, align 8
  %317 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %318 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = add i64 %319, 88
  %321 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %322 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %322, i32 0, i32 4
  %324 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = add i64 %320, %330
  %332 = call i8* @putPaddrHigh(i64 %331)
  %333 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %334 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %334, i32 0, i32 4
  %336 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %338, i32 0, i32 1
  store i8* %332, i8** %339, align 8
  %340 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %341 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = add i64 %342, 88
  %344 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %345 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %345, i32 0, i32 4
  %347 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = add i64 %343, %353
  %355 = call i8* @putPaddrLow(i64 %354)
  %356 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %357 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %357, i32 0, i32 4
  %359 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %361, i32 0, i32 0
  store i8* %355, i8** %362, align 8
  br label %595

363:                                              ; preds = %261
  %364 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %365 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = load i64, i64* @MBX_READ_EVENT_LOG, align 8
  %368 = icmp eq i64 %366, %367
  br i1 %368, label %369, label %417

369:                                              ; preds = %363
  %370 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %371 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %371, i32 0, i32 3
  store %struct.READ_EVENT_LOG_VAR* %372, %struct.READ_EVENT_LOG_VAR** %14, align 8
  %373 = load %struct.READ_EVENT_LOG_VAR*, %struct.READ_EVENT_LOG_VAR** %14, align 8
  %374 = getelementptr inbounds %struct.READ_EVENT_LOG_VAR, %struct.READ_EVENT_LOG_VAR* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  store i64 %378, i64* %16, align 8
  %379 = load i32, i32* @lpfc_event_log, align 4
  %380 = load %struct.READ_EVENT_LOG_VAR*, %struct.READ_EVENT_LOG_VAR** %14, align 8
  %381 = call i64 @bf_get(i32 %379, %struct.READ_EVENT_LOG_VAR* %380)
  store i64 %381, i64* %17, align 8
  %382 = load i64, i64* %16, align 8
  %383 = load i32, i32* @BSG_MBOX_SIZE, align 4
  %384 = sext i32 %383 to i64
  %385 = sub i64 %384, 88
  %386 = icmp ugt i64 %382, %385
  br i1 %386, label %387, label %390

387:                                              ; preds = %369
  %388 = load i32, i32* @ERANGE, align 4
  %389 = sub nsw i32 0, %388
  store i32 %389, i32* %23, align 4
  br label %719

390:                                              ; preds = %369
  %391 = load i64, i64* %17, align 8
  %392 = icmp eq i64 %391, 0
  br i1 %392, label %393, label %416

393:                                              ; preds = %390
  %394 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %395 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = add i64 %396, 88
  %398 = call i8* @putPaddrLow(i64 %397)
  %399 = ptrtoint i8* %398 to i64
  %400 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %401 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %401, i32 0, i32 0
  %403 = load i64*, i64** %402, align 8
  %404 = getelementptr inbounds i64, i64* %403, i64 3
  store i64 %399, i64* %404, align 8
  %405 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %406 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = add i64 %407, 88
  %409 = call i8* @putPaddrHigh(i64 %408)
  %410 = ptrtoint i8* %409 to i64
  %411 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %412 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %412, i32 0, i32 0
  %414 = load i64*, i64** %413, align 8
  %415 = getelementptr inbounds i64, i64* %414, i64 4
  store i64 %410, i64* %415, align 8
  br label %416

416:                                              ; preds = %393, %390
  br label %594

417:                                              ; preds = %363
  %418 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %419 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = load i64, i64* @LPFC_SLI_REV4, align 8
  %422 = icmp eq i64 %420, %421
  br i1 %422, label %423, label %593

423:                                              ; preds = %417
  %424 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %425 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* @MBX_DUMP_MEMORY, align 8
  %428 = icmp eq i64 %426, %427
  br i1 %428, label %429, label %472

429:                                              ; preds = %423
  %430 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %431 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %431, i32 0, i32 2
  %433 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %432, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = load i64, i64* @DMP_WELL_KNOWN, align 8
  %436 = icmp ne i64 %434, %435
  br i1 %436, label %437, label %472

437:                                              ; preds = %429
  %438 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %439 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %439, i32 0, i32 0
  %441 = load i64*, i64** %440, align 8
  %442 = getelementptr inbounds i64, i64* %441, i64 2
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %16, align 8
  %444 = load i64, i64* %16, align 8
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %446, label %449

446:                                              ; preds = %437
  %447 = load i32, i32* @ERANGE, align 4
  %448 = sub nsw i32 0, %447
  store i32 %448, i32* %23, align 4
  br label %719

449:                                              ; preds = %437
  %450 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %451 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %450, i32 0, i32 0
  %452 = load i64, i64* %451, align 8
  %453 = add i64 %452, 88
  %454 = call i8* @putPaddrLow(i64 %453)
  %455 = ptrtoint i8* %454 to i64
  %456 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %457 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %457, i32 0, i32 0
  %459 = load i64*, i64** %458, align 8
  %460 = getelementptr inbounds i64, i64* %459, i64 3
  store i64 %455, i64* %460, align 8
  %461 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %462 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = add i64 %463, 88
  %465 = call i8* @putPaddrHigh(i64 %464)
  %466 = ptrtoint i8* %465 to i64
  %467 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %468 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %467, i32 0, i32 1
  %469 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %468, i32 0, i32 0
  %470 = load i64*, i64** %469, align 8
  %471 = getelementptr inbounds i64, i64* %470, i64 4
  store i64 %466, i64* %471, align 8
  br label %592

472:                                              ; preds = %429, %423
  %473 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %474 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %473, i32 0, i32 0
  %475 = load i64, i64* %474, align 8
  %476 = load i64, i64* @MBX_UPDATE_CFG, align 8
  %477 = icmp eq i64 %475, %476
  br i1 %477, label %478, label %520

478:                                              ; preds = %472
  %479 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %480 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %479, i32 0, i32 1
  %481 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %480, i32 0, i32 1
  %482 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %520

485:                                              ; preds = %478
  %486 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %487 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %486, i32 0, i32 1
  %488 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %487, i32 0, i32 0
  %489 = load i64*, i64** %488, align 8
  %490 = getelementptr inbounds i64, i64* %489, i64 4
  %491 = bitcast i64* %490 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %491, %struct.ulp_bde64** %21, align 8
  %492 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %493 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %492, i32 0, i32 2
  %494 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %493, i32 0, i32 0
  %495 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = sext i32 %496 to i64
  %498 = load i32, i32* @BSG_MBOX_SIZE, align 4
  %499 = sext i32 %498 to i64
  %500 = sub i64 %499, 88
  %501 = icmp ugt i64 %497, %500
  br i1 %501, label %502, label %505

502:                                              ; preds = %485
  %503 = load i32, i32* @ERANGE, align 4
  %504 = sub nsw i32 0, %503
  store i32 %504, i32* %23, align 4
  br label %719

505:                                              ; preds = %485
  %506 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %507 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %506, i32 0, i32 0
  %508 = load i64, i64* %507, align 8
  %509 = add i64 %508, 88
  %510 = call i8* @putPaddrHigh(i64 %509)
  %511 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %512 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %511, i32 0, i32 1
  store i8* %510, i8** %512, align 8
  %513 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %514 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %513, i32 0, i32 0
  %515 = load i64, i64* %514, align 8
  %516 = add i64 %515, 88
  %517 = call i8* @putPaddrLow(i64 %516)
  %518 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %519 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %518, i32 0, i32 0
  store i8* %517, i8** %519, align 8
  br label %591

520:                                              ; preds = %478, %472
  %521 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %522 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %521, i32 0, i32 0
  %523 = load i64, i64* %522, align 8
  %524 = load i64, i64* @MBX_SLI4_CONFIG, align 8
  %525 = icmp eq i64 %523, %524
  br i1 %525, label %526, label %590

526:                                              ; preds = %520
  %527 = load %struct.TYPE_67__*, %struct.TYPE_67__** %8, align 8
  %528 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %527, i32 0, i32 4
  %529 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %528, i32 0, i32 0
  %530 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %529, i32 0, i32 0
  %531 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %530, i32 0, i32 0
  store %struct.lpfc_mbx_sli4_config* %531, %struct.lpfc_mbx_sli4_config** %18, align 8
  %532 = load i32, i32* @lpfc_mbox_hdr_emb, align 4
  %533 = load %struct.lpfc_mbx_sli4_config*, %struct.lpfc_mbx_sli4_config** %18, align 8
  %534 = getelementptr inbounds %struct.lpfc_mbx_sli4_config, %struct.lpfc_mbx_sli4_config* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %534, i32 0, i32 0
  %536 = call i64 @bf_get(i32 %532, %struct.READ_EVENT_LOG_VAR* %535)
  %537 = icmp ne i64 %536, 0
  br i1 %537, label %589, label %538

538:                                              ; preds = %526
  %539 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %540 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %539, i32 0, i32 1
  %541 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %540, i32 0, i32 0
  %542 = load i64*, i64** %541, align 8
  %543 = getelementptr inbounds i64, i64* %542, i64 0
  %544 = bitcast i64* %543 to %struct.mbox_header*
  store %struct.mbox_header* %544, %struct.mbox_header** %20, align 8
  %545 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %546 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %545, i32 0, i32 1
  %547 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %546, i32 0, i32 0
  %548 = load i64*, i64** %547, align 8
  %549 = getelementptr inbounds i64, i64* %548, i64 0
  %550 = bitcast i64* %549 to %struct.lpfc_mbx_nembed_cmd*
  store %struct.lpfc_mbx_nembed_cmd* %550, %struct.lpfc_mbx_nembed_cmd** %19, align 8
  %551 = load %struct.lpfc_mbx_nembed_cmd*, %struct.lpfc_mbx_nembed_cmd** %19, align 8
  %552 = getelementptr inbounds %struct.lpfc_mbx_nembed_cmd, %struct.lpfc_mbx_nembed_cmd* %551, i32 0, i32 0
  %553 = load %struct.TYPE_59__*, %struct.TYPE_59__** %552, align 8
  %554 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %553, i64 0
  %555 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %554, i32 0, i32 0
  %556 = load i64, i64* %555, align 8
  store i64 %556, i64* %16, align 8
  %557 = load i64, i64* %16, align 8
  %558 = icmp eq i64 %557, 0
  br i1 %558, label %565, label %559

559:                                              ; preds = %538
  %560 = load i64, i64* %16, align 8
  %561 = load i32, i32* @BSG_MBOX_SIZE, align 4
  %562 = sext i32 %561 to i64
  %563 = sub i64 %562, 88
  %564 = icmp ugt i64 %560, %563
  br i1 %564, label %565, label %568

565:                                              ; preds = %559, %538
  %566 = load i32, i32* @ERANGE, align 4
  %567 = sub nsw i32 0, %566
  store i32 %567, i32* %23, align 4
  br label %719

568:                                              ; preds = %559
  %569 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %570 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %569, i32 0, i32 0
  %571 = load i64, i64* %570, align 8
  %572 = add i64 %571, 88
  %573 = call i8* @putPaddrHigh(i64 %572)
  %574 = load %struct.lpfc_mbx_nembed_cmd*, %struct.lpfc_mbx_nembed_cmd** %19, align 8
  %575 = getelementptr inbounds %struct.lpfc_mbx_nembed_cmd, %struct.lpfc_mbx_nembed_cmd* %574, i32 0, i32 0
  %576 = load %struct.TYPE_59__*, %struct.TYPE_59__** %575, align 8
  %577 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %576, i64 0
  %578 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %577, i32 0, i32 2
  store i8* %573, i8** %578, align 8
  %579 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %580 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %579, i32 0, i32 0
  %581 = load i64, i64* %580, align 8
  %582 = add i64 %581, 88
  %583 = call i8* @putPaddrLow(i64 %582)
  %584 = load %struct.lpfc_mbx_nembed_cmd*, %struct.lpfc_mbx_nembed_cmd** %19, align 8
  %585 = getelementptr inbounds %struct.lpfc_mbx_nembed_cmd, %struct.lpfc_mbx_nembed_cmd* %584, i32 0, i32 0
  %586 = load %struct.TYPE_59__*, %struct.TYPE_59__** %585, align 8
  %587 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %586, i64 0
  %588 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %587, i32 0, i32 1
  store i8* %583, i8** %588, align 8
  br label %589

589:                                              ; preds = %568, %526
  br label %590

590:                                              ; preds = %589, %520
  br label %591

591:                                              ; preds = %590, %505
  br label %592

592:                                              ; preds = %591, %449
  br label %593

593:                                              ; preds = %592, %417
  br label %594

594:                                              ; preds = %593, %416
  br label %595

595:                                              ; preds = %594, %292
  %596 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %597 = load %struct.bsg_job_data*, %struct.bsg_job_data** %11, align 8
  %598 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %597, i32 0, i32 0
  %599 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %598, i32 0, i32 0
  %600 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %599, i32 0, i32 6
  store %struct.lpfc_dmabuf* %596, %struct.lpfc_dmabuf** %600, align 8
  %601 = load i32, i32* @lpfc_bsg_issue_mbox_cmpl, align 4
  %602 = load %struct.TYPE_67__*, %struct.TYPE_67__** %8, align 8
  %603 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %602, i32 0, i32 3
  store i32 %601, i32* %603, align 8
  %604 = load %struct.bsg_job_data*, %struct.bsg_job_data** %11, align 8
  %605 = load %struct.TYPE_67__*, %struct.TYPE_67__** %8, align 8
  %606 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %605, i32 0, i32 2
  store %struct.bsg_job_data* %604, %struct.bsg_job_data** %606, align 8
  %607 = load i32, i32* @TYPE_MBOX, align 4
  %608 = load %struct.bsg_job_data*, %struct.bsg_job_data** %11, align 8
  %609 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %608, i32 0, i32 2
  store i32 %607, i32* %609, align 8
  %610 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %611 = load %struct.bsg_job_data*, %struct.bsg_job_data** %11, align 8
  %612 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %611, i32 0, i32 1
  store %struct.fc_bsg_job* %610, %struct.fc_bsg_job** %612, align 8
  %613 = load %struct.TYPE_67__*, %struct.TYPE_67__** %8, align 8
  %614 = load %struct.bsg_job_data*, %struct.bsg_job_data** %11, align 8
  %615 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %614, i32 0, i32 0
  %616 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %615, i32 0, i32 0
  %617 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %616, i32 0, i32 5
  store %struct.TYPE_67__* %613, %struct.TYPE_67__** %617, align 8
  %618 = load %struct.TYPE_66__*, %struct.TYPE_66__** %10, align 8
  %619 = load %struct.bsg_job_data*, %struct.bsg_job_data** %11, align 8
  %620 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %619, i32 0, i32 0
  %621 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %620, i32 0, i32 0
  %622 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %621, i32 0, i32 4
  store %struct.TYPE_66__* %618, %struct.TYPE_66__** %622, align 8
  %623 = load %struct.TYPE_66__*, %struct.TYPE_66__** %22, align 8
  %624 = load %struct.bsg_job_data*, %struct.bsg_job_data** %11, align 8
  %625 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %624, i32 0, i32 0
  %626 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %625, i32 0, i32 0
  %627 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %626, i32 0, i32 3
  store %struct.TYPE_66__* %623, %struct.TYPE_66__** %627, align 8
  %628 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %13, align 8
  %629 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %628, i32 0, i32 2
  %630 = load i32, i32* %629, align 4
  %631 = load %struct.bsg_job_data*, %struct.bsg_job_data** %11, align 8
  %632 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %631, i32 0, i32 0
  %633 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %632, i32 0, i32 0
  %634 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %633, i32 0, i32 2
  store i32 %630, i32* %634, align 8
  %635 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %13, align 8
  %636 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %635, i32 0, i32 0
  %637 = load i32, i32* %636, align 4
  %638 = load %struct.bsg_job_data*, %struct.bsg_job_data** %11, align 8
  %639 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %638, i32 0, i32 0
  %640 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %639, i32 0, i32 0
  %641 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %640, i32 0, i32 0
  store i32 %637, i32* %641, align 8
  %642 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %13, align 8
  %643 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %642, i32 0, i32 1
  %644 = load i32, i32* %643, align 4
  %645 = load %struct.bsg_job_data*, %struct.bsg_job_data** %11, align 8
  %646 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %645, i32 0, i32 0
  %647 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %646, i32 0, i32 0
  %648 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %647, i32 0, i32 1
  store i32 %644, i32* %648, align 4
  %649 = load %struct.bsg_job_data*, %struct.bsg_job_data** %11, align 8
  %650 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %651 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %650, i32 0, i32 2
  store %struct.bsg_job_data* %649, %struct.bsg_job_data** %651, align 8
  %652 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %653 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %652, i32 0, i32 0
  %654 = load i32, i32* %653, align 4
  %655 = load i32, i32* @FC_OFFLINE_MODE, align 4
  %656 = and i32 %654, %655
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %666, label %658

658:                                              ; preds = %595
  %659 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %660 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %659, i32 0, i32 2
  %661 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %660, i32 0, i32 0
  %662 = load i32, i32* %661, align 4
  %663 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %664 = and i32 %662, %663
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %705, label %666

666:                                              ; preds = %658, %595
  %667 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %668 = load %struct.TYPE_67__*, %struct.TYPE_67__** %8, align 8
  %669 = load i32, i32* @MBX_POLL, align 4
  %670 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %667, %struct.TYPE_67__* %668, i32 %669)
  store i32 %670, i32* %23, align 4
  %671 = load i32, i32* %23, align 4
  %672 = load i32, i32* @MBX_SUCCESS, align 4
  %673 = icmp ne i32 %671, %672
  br i1 %673, label %674, label %686

674:                                              ; preds = %666
  %675 = load i32, i32* %23, align 4
  %676 = load i32, i32* @MBX_TIMEOUT, align 4
  %677 = icmp eq i32 %675, %676
  br i1 %677, label %678, label %681

678:                                              ; preds = %674
  %679 = load i32, i32* @ETIME, align 4
  %680 = sub nsw i32 0, %679
  br label %684

681:                                              ; preds = %674
  %682 = load i32, i32* @ENODEV, align 4
  %683 = sub nsw i32 0, %682
  br label %684

684:                                              ; preds = %681, %678
  %685 = phi i32 [ %680, %678 ], [ %683, %681 ]
  store i32 %685, i32* %23, align 4
  br label %719

686:                                              ; preds = %666
  %687 = load %struct.TYPE_66__*, %struct.TYPE_66__** %10, align 8
  %688 = load %struct.TYPE_66__*, %struct.TYPE_66__** %9, align 8
  %689 = call i32 @memcpy(%struct.TYPE_66__* %687, %struct.TYPE_66__* %688, i32 88)
  %690 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %691 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %690, i32 0, i32 0
  %692 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %691, i32 0, i32 2
  %693 = load i32, i32* %692, align 8
  %694 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %695 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %694, i32 0, i32 0
  %696 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %695, i32 0, i32 1
  %697 = load i32, i32* %696, align 4
  %698 = load %struct.TYPE_66__*, %struct.TYPE_66__** %10, align 8
  %699 = load i64, i64* %25, align 8
  %700 = call i32 @sg_copy_from_buffer(i32 %693, i32 %697, %struct.TYPE_66__* %698, i64 %699)
  %701 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %702 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %701, i32 0, i32 1
  %703 = load %struct.TYPE_63__*, %struct.TYPE_63__** %702, align 8
  %704 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %703, i32 0, i32 0
  store i32 %700, i32* %704, align 4
  store i32 0, i32* %23, align 4
  br label %719

705:                                              ; preds = %658
  %706 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %707 = load %struct.TYPE_67__*, %struct.TYPE_67__** %8, align 8
  %708 = load i32, i32* @MBX_NOWAIT, align 4
  %709 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %706, %struct.TYPE_67__* %707, i32 %708)
  store i32 %709, i32* %23, align 4
  %710 = load i32, i32* %23, align 4
  %711 = load i32, i32* @MBX_SUCCESS, align 4
  %712 = icmp eq i32 %710, %711
  br i1 %712, label %717, label %713

713:                                              ; preds = %705
  %714 = load i32, i32* %23, align 4
  %715 = load i32, i32* @MBX_BUSY, align 4
  %716 = icmp eq i32 %714, %715
  br i1 %716, label %717, label %718

717:                                              ; preds = %713, %705
  store i64 1, i64* %4, align 8
  br label %737

718:                                              ; preds = %713
  br label %719

719:                                              ; preds = %718, %686, %684, %565, %502, %446, %387, %289, %167, %152, %146, %137, %96, %83, %54, %43
  %720 = load %struct.TYPE_67__*, %struct.TYPE_67__** %8, align 8
  %721 = icmp ne %struct.TYPE_67__* %720, null
  br i1 %721, label %722, label %728

722:                                              ; preds = %719
  %723 = load %struct.TYPE_67__*, %struct.TYPE_67__** %8, align 8
  %724 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %725 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %724, i32 0, i32 1
  %726 = load i32, i32* %725, align 8
  %727 = call i32 @mempool_free(%struct.TYPE_67__* %723, i32 %726)
  br label %728

728:                                              ; preds = %722, %719
  %729 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %730 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %731 = call i32 @lpfc_bsg_dma_page_free(%struct.lpfc_hba* %729, %struct.lpfc_dmabuf* %730)
  %732 = load %struct.bsg_job_data*, %struct.bsg_job_data** %11, align 8
  %733 = call i32 @kfree(%struct.bsg_job_data* %732)
  br label %734

734:                                              ; preds = %728, %133
  %735 = load i32, i32* %23, align 4
  %736 = sext i32 %735 to i64
  store i64 %736, i64* %4, align 8
  br label %737

737:                                              ; preds = %734, %717
  %738 = load i64, i64* %4, align 8
  ret i64 %738
}

declare dso_local %struct.lpfc_dmabuf* @lpfc_bsg_dma_page_alloc(%struct.lpfc_hba*) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, %struct.TYPE_66__*, i64) #1

declare dso_local i32 @lpfc_bsg_handle_sli_cfg_ext(%struct.lpfc_hba*, %struct.fc_bsg_job*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_bsg_check_cmd_access(%struct.lpfc_hba*, %struct.TYPE_66__*, %struct.lpfc_vport*) #1

declare dso_local %struct.bsg_job_data* @kmalloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_67__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_67__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_66__*, %struct.TYPE_66__*, i32) #1

declare dso_local i8* @putPaddrHigh(i64) #1

declare dso_local i8* @putPaddrLow(i64) #1

declare dso_local i64 @bf_get(i32, %struct.READ_EVENT_LOG_VAR*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_67__*, i32) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, %struct.TYPE_66__*, i64) #1

declare dso_local i32 @mempool_free(%struct.TYPE_67__*, i32) #1

declare dso_local i32 @lpfc_bsg_dma_page_free(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @kfree(%struct.bsg_job_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
