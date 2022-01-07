; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_menlo_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_menlo_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { i32, i32, %struct.lpfc_dmabuf*, %struct.TYPE_19__*, %struct.TYPE_20__, %struct.TYPE_25__, %struct.TYPE_33__*, %struct.TYPE_30__* }
%struct.lpfc_dmabuf = type { i32, i64, %struct.TYPE_29__, %struct.fc_bsg_job*, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.lpfc_dmabuf*, %struct.lpfc_iocbq* }
%struct.lpfc_iocbq = type { %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, i32, i32, i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32, i32, i32, %struct.TYPE_22__, i32, i64, i32, i32 }
%struct.TYPE_22__ = type { i64*, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_27__, %struct.TYPE_21__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, i32, i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_30__ = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32 }
%struct.menlo_command = type { i64, i32 }
%struct.menlo_response = type { i32 }
%struct.bsg_job_data = type { i32, i64, %struct.TYPE_29__, %struct.fc_bsg_job*, i32, i32 }
%struct.ulp_bde64 = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"2784 Received MENLO_CMD request below minimum size\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"2785 Received MENLO_CMD reply below minimum size\0A\00", align 1
@HBA_MENLO_SUPPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"2786 Adapter does not support menlo commands\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"2787 Failed allocation of dd_data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_BPL_SIZE = common dso_local global i32 0, align 4
@BUFF_TYPE_BLP_64 = common dso_local global i32 0, align 4
@SI = common dso_local global i32 0, align 4
@LA = common dso_local global i32 0, align 4
@FC_RCTL_DD_UNSOL_CMD = common dso_local global i32 0, align 4
@MENLO_TRANSPORT_TYPE = common dso_local global i32 0, align 4
@CLASS3 = common dso_local global i32 0, align 4
@OWN_CHIP = common dso_local global i32 0, align 4
@LPFC_IO_LIBDFC = common dso_local global i32 0, align 4
@MENLO_TIMEOUT = common dso_local global i64 0, align 8
@lpfc_bsg_menlo_cmd_cmp = common dso_local global i32 0, align 4
@LPFC_BSG_VENDOR_MENLO_CMD = common dso_local global i64 0, align 8
@CMD_GEN_REQUEST64_CR = common dso_local global i32 0, align 4
@MENLO_PU = common dso_local global i32 0, align 4
@MENLO_DID = common dso_local global i64 0, align 8
@MENLO_CONTEXT = common dso_local global i32 0, align 4
@CMD_GEN_REQUEST64_CX = common dso_local global i32 0, align 4
@TYPE_MENLO = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @lpfc_menlo_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_menlo_cmd(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.menlo_command*, align 8
  %10 = alloca %struct.menlo_response*, align 8
  %11 = alloca %struct.lpfc_dmabuf*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.lpfc_dmabuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bsg_job_data*, align 8
  %17 = alloca %struct.ulp_bde64*, align 8
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %18 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %19 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %18, i32 0, i32 7
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %23, %struct.lpfc_vport** %4, align 8
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %24, i32 0, i32 0
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %25, align 8
  store %struct.lpfc_hba* %26, %struct.lpfc_hba** %5, align 8
  store i32 0, i32* %8, align 4
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %11, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %12, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %13, align 8
  store %struct.ulp_bde64* null, %struct.ulp_bde64** %17, align 8
  %27 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %28 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %27, i32 0, i32 3
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %32 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 20
  br i1 %35, label %36, label %43

36:                                               ; preds = %1
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %38 = load i32, i32* @KERN_WARNING, align 4
  %39 = load i32, i32* @LOG_LIBDFC, align 4
  %40 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ERANGE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %395

43:                                               ; preds = %1
  %44 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %45 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ult i64 %47, 8
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %51 = load i32, i32* @KERN_WARNING, align 4
  %52 = load i32, i32* @LOG_LIBDFC, align 4
  %53 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %50, i32 %51, i32 %52, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @ERANGE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %395

56:                                               ; preds = %43
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @HBA_MENLO_SUPPORT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %65 = load i32, i32* @KERN_WARNING, align 4
  %66 = load i32, i32* @LOG_LIBDFC, align 4
  %67 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %64, i32 %65, i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @EPERM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %395

70:                                               ; preds = %56
  %71 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %72 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %71, i32 0, i32 6
  %73 = load %struct.TYPE_33__*, %struct.TYPE_33__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.menlo_command*
  store %struct.menlo_command* %78, %struct.menlo_command** %9, align 8
  %79 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %80 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %79, i32 0, i32 3
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.menlo_response*
  store %struct.menlo_response* %86, %struct.menlo_response** %10, align 8
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call %struct.lpfc_dmabuf* @kmalloc(i32 48, i32 %87)
  %89 = bitcast %struct.lpfc_dmabuf* %88 to %struct.bsg_job_data*
  store %struct.bsg_job_data* %89, %struct.bsg_job_data** %16, align 8
  %90 = load %struct.bsg_job_data*, %struct.bsg_job_data** %16, align 8
  %91 = icmp ne %struct.bsg_job_data* %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %70
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %94 = load i32, i32* @KERN_WARNING, align 4
  %95 = load i32, i32* @LOG_LIBDFC, align 4
  %96 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %93, i32 %94, i32 %95, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %8, align 4
  br label %395

99:                                               ; preds = %70
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call %struct.lpfc_dmabuf* @kmalloc(i32 48, i32 %100)
  store %struct.lpfc_dmabuf* %101, %struct.lpfc_dmabuf** %11, align 8
  %102 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %103 = icmp ne %struct.lpfc_dmabuf* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %8, align 4
  br label %391

107:                                              ; preds = %99
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %109 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %110 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %109, i32 0, i32 0
  %111 = call i64 @lpfc_mbuf_alloc(%struct.lpfc_hba* %108, i32 0, i32* %110)
  %112 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %113 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %115 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %107
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %8, align 4
  br label %374

121:                                              ; preds = %107
  %122 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %123 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %122, i32 0, i32 5
  %124 = call i32 @INIT_LIST_HEAD(i32* %123)
  %125 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %126 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %128, %struct.ulp_bde64** %17, align 8
  %129 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %130 = sext i32 %129 to i64
  %131 = udiv i64 %130, 4
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %14, align 4
  %133 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %134 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %135 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ulp_bde64*, %struct.ulp_bde64** %17, align 8
  %139 = call %struct.lpfc_dmabuf* @lpfc_alloc_bsg_buffers(%struct.lpfc_hba* %133, i32 %137, i32 1, %struct.ulp_bde64* %138, i32* %14)
  store %struct.lpfc_dmabuf* %139, %struct.lpfc_dmabuf** %12, align 8
  %140 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %141 = icmp ne %struct.lpfc_dmabuf* %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %121
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %8, align 4
  br label %374

145:                                              ; preds = %121
  %146 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %147 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %148 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %147, i32 0, i32 5
  %149 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %150 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf* %146, %struct.TYPE_25__* %148, i32 %152, i32 1)
  %154 = load i32, i32* %14, align 4
  %155 = load %struct.ulp_bde64*, %struct.ulp_bde64** %17, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %155, i64 %156
  store %struct.ulp_bde64* %157, %struct.ulp_bde64** %17, align 8
  %158 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %159 = sext i32 %158 to i64
  %160 = udiv i64 %159, 4
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = sub i64 %160, %162
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %15, align 4
  %165 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %166 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %167 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.ulp_bde64*, %struct.ulp_bde64** %17, align 8
  %171 = call %struct.lpfc_dmabuf* @lpfc_alloc_bsg_buffers(%struct.lpfc_hba* %165, i32 %169, i32 0, %struct.ulp_bde64* %170, i32* %15)
  store %struct.lpfc_dmabuf* %171, %struct.lpfc_dmabuf** %13, align 8
  %172 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %173 = icmp ne %struct.lpfc_dmabuf* %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %145
  %175 = load i32, i32* @ENOMEM, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %8, align 4
  br label %370

177:                                              ; preds = %145
  %178 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %179 = call %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba* %178)
  store %struct.lpfc_iocbq* %179, %struct.lpfc_iocbq** %6, align 8
  %180 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %181 = icmp ne %struct.lpfc_iocbq* %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %177
  %183 = load i32, i32* @ENOMEM, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %8, align 4
  br label %366

185:                                              ; preds = %177
  %186 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %187 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %186, i32 0, i32 6
  store %struct.TYPE_24__* %187, %struct.TYPE_24__** %7, align 8
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 4
  store i64 0, i64* %192, align 8
  %193 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %194 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @putPaddrHigh(i32 %195)
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 3
  store i32 %196, i32* %201, align 4
  %202 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %203 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @putPaddrLow(i32 %204)
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 2
  store i32 %205, i32* %210, align 8
  %211 = load i32, i32* @BUFF_TYPE_BLP_64, align 4
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 1
  store i32 %211, i32* %216, align 4
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* %15, align 4
  %219 = add nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = mul i64 %220, 4
  %222 = trunc i64 %221 to i32
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 0
  store i32 %222, i32* %227, align 8
  %228 = load i32, i32* @SI, align 4
  %229 = load i32, i32* @LA, align 4
  %230 = or i32 %228, %229
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 0
  store i32 %230, i32* %236, align 8
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %241, i32 0, i32 3
  store i64 0, i64* %242, align 8
  %243 = load i32, i32* @FC_RCTL_DD_UNSOL_CMD, align 4
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %248, i32 0, i32 2
  store i32 %243, i32* %249, align 8
  %250 = load i32, i32* @MENLO_TRANSPORT_TYPE, align 4
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 1
  store i32 %250, i32* %256, align 4
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 0
  store i32 1, i32* %258, align 8
  %259 = load i32, i32* @CLASS3, align 4
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 8
  store i32 %259, i32* %261, align 4
  %262 = load i32, i32* @OWN_CHIP, align 4
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 7
  store i32 %262, i32* %264, align 8
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 1
  store i32 1, i32* %266, align 4
  %267 = load i32, i32* @LPFC_IO_LIBDFC, align 4
  %268 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %269 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 8
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 8
  %272 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %273 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %276 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %275, i32 0, i32 4
  store i32 %274, i32* %276, align 4
  %277 = load i64, i64* @MENLO_TIMEOUT, align 8
  %278 = sub nsw i64 %277, 5
  %279 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 6
  store i64 %278, i64* %280, align 8
  %281 = load i32, i32* @lpfc_bsg_menlo_cmd_cmp, align 4
  %282 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %283 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %282, i32 0, i32 3
  store i32 %281, i32* %283, align 8
  %284 = load %struct.bsg_job_data*, %struct.bsg_job_data** %16, align 8
  %285 = bitcast %struct.bsg_job_data* %284 to %struct.lpfc_dmabuf*
  %286 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %287 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %286, i32 0, i32 2
  store %struct.lpfc_dmabuf* %285, %struct.lpfc_dmabuf** %287, align 8
  %288 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %289 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %290 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %289, i32 0, i32 1
  store %struct.lpfc_dmabuf* %288, %struct.lpfc_dmabuf** %290, align 8
  %291 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %292 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %293 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %292, i32 0, i32 0
  store %struct.lpfc_dmabuf* %291, %struct.lpfc_dmabuf** %293, align 8
  %294 = load %struct.menlo_command*, %struct.menlo_command** %9, align 8
  %295 = getelementptr inbounds %struct.menlo_command, %struct.menlo_command* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @LPFC_BSG_VENDOR_MENLO_CMD, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %315

299:                                              ; preds = %185
  %300 = load i32, i32* @CMD_GEN_REQUEST64_CR, align 4
  %301 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %301, i32 0, i32 5
  store i32 %300, i32* %302, align 8
  %303 = load i32, i32* @MENLO_PU, align 4
  %304 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %304, i32 0, i32 2
  store i32 %303, i32* %305, align 8
  %306 = load i64, i64* @MENLO_DID, align 8
  %307 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i32 0, i32 4
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 0
  %310 = load i64*, i64** %309, align 8
  %311 = getelementptr inbounds i64, i64* %310, i64 4
  store i64 %306, i64* %311, align 8
  %312 = load i32, i32* @MENLO_CONTEXT, align 4
  %313 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %313, i32 0, i32 3
  store i32 %312, i32* %314, align 4
  br label %331

315:                                              ; preds = %185
  %316 = load i32, i32* @CMD_GEN_REQUEST64_CX, align 4
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 5
  store i32 %316, i32* %318, align 8
  %319 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %319, i32 0, i32 2
  store i32 1, i32* %320, align 8
  %321 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %321, i32 0, i32 4
  %323 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %322, i32 0, i32 0
  %324 = load i64*, i64** %323, align 8
  %325 = getelementptr inbounds i64, i64* %324, i64 4
  store i64 0, i64* %325, align 8
  %326 = load %struct.menlo_command*, %struct.menlo_command** %9, align 8
  %327 = getelementptr inbounds %struct.menlo_command, %struct.menlo_command* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %329, i32 0, i32 3
  store i32 %328, i32* %330, align 4
  br label %331

331:                                              ; preds = %315, %299
  %332 = load i32, i32* @TYPE_MENLO, align 4
  %333 = load %struct.bsg_job_data*, %struct.bsg_job_data** %16, align 8
  %334 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %333, i32 0, i32 4
  store i32 %332, i32* %334, align 8
  %335 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %336 = load %struct.bsg_job_data*, %struct.bsg_job_data** %16, align 8
  %337 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %336, i32 0, i32 3
  store %struct.fc_bsg_job* %335, %struct.fc_bsg_job** %337, align 8
  %338 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %339 = load %struct.bsg_job_data*, %struct.bsg_job_data** %16, align 8
  %340 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %341, i32 0, i32 1
  store %struct.lpfc_iocbq* %338, %struct.lpfc_iocbq** %342, align 8
  %343 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %344 = load %struct.bsg_job_data*, %struct.bsg_job_data** %16, align 8
  %345 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %346, i32 0, i32 0
  store %struct.lpfc_dmabuf* %343, %struct.lpfc_dmabuf** %347, align 8
  %348 = load %struct.bsg_job_data*, %struct.bsg_job_data** %16, align 8
  %349 = bitcast %struct.bsg_job_data* %348 to %struct.lpfc_dmabuf*
  %350 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %351 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %350, i32 0, i32 2
  store %struct.lpfc_dmabuf* %349, %struct.lpfc_dmabuf** %351, align 8
  %352 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %353 = load i32, i32* @LPFC_ELS_RING, align 4
  %354 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %355 = load i64, i64* @MENLO_TIMEOUT, align 8
  %356 = sub nsw i64 %355, 5
  %357 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %352, i32 %353, %struct.lpfc_iocbq* %354, i64 %356)
  store i32 %357, i32* %8, align 4
  %358 = load i32, i32* %8, align 4
  %359 = load i32, i32* @IOCB_SUCCESS, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %362

361:                                              ; preds = %331
  store i32 0, i32* %2, align 4
  br label %404

362:                                              ; preds = %331
  %363 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %364 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %365 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %363, %struct.lpfc_iocbq* %364)
  br label %366

366:                                              ; preds = %362, %182
  %367 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %368 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %369 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %367, %struct.lpfc_dmabuf* %368)
  br label %370

370:                                              ; preds = %366, %174
  %371 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %372 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %373 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %371, %struct.lpfc_dmabuf* %372)
  br label %374

374:                                              ; preds = %370, %142, %118
  %375 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %376 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %388

379:                                              ; preds = %374
  %380 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %381 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %382 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %385 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %380, i64 %383, i32 %386)
  br label %388

388:                                              ; preds = %379, %374
  %389 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %390 = call i32 @kfree(%struct.lpfc_dmabuf* %389)
  br label %391

391:                                              ; preds = %388, %104
  %392 = load %struct.bsg_job_data*, %struct.bsg_job_data** %16, align 8
  %393 = bitcast %struct.bsg_job_data* %392 to %struct.lpfc_dmabuf*
  %394 = call i32 @kfree(%struct.lpfc_dmabuf* %393)
  br label %395

395:                                              ; preds = %391, %92, %63, %49, %36
  %396 = load i32, i32* %8, align 4
  %397 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %398 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %397, i32 0, i32 3
  %399 = load %struct.TYPE_19__*, %struct.TYPE_19__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %399, i32 0, i32 0
  store i32 %396, i32* %400, align 8
  %401 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %402 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %401, i32 0, i32 2
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %402, align 8
  %403 = load i32, i32* %8, align 4
  store i32 %403, i32* %2, align 4
  br label %404

404:                                              ; preds = %395, %361
  %405 = load i32, i32* %2, align 4
  ret i32 %405
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i64 @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.lpfc_dmabuf* @lpfc_alloc_bsg_buffers(%struct.lpfc_hba*, i32, i32, %struct.ulp_bde64*, i32*) #1

declare dso_local i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf*, %struct.TYPE_25__*, i32, i32) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local i32 @putPaddrHigh(i32) #1

declare dso_local i32 @putPaddrLow(i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i64) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i64, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
