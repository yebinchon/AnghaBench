; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_send_mgmt_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_send_mgmt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { %struct.lpfc_dmabuf*, %struct.TYPE_28__*, %struct.TYPE_29__, %struct.TYPE_21__, %struct.TYPE_27__*, %struct.TYPE_26__* }
%struct.lpfc_dmabuf = type { i32, i64, %struct.TYPE_25__, %struct.fc_bsg_job*, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.lpfc_dmabuf*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq* }
%struct.lpfc_nodelist = type { i32, i64 }
%struct.lpfc_iocbq = type { %struct.TYPE_23__, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, i32, i32, i32, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { %struct.lpfc_nodelist* }
%struct.TYPE_20__ = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_30__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i64 }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_28__ = type { i32, i64 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_27__ = type { %struct.lpfc_rport_data* }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.TYPE_26__ = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, i32, i32, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64* }
%struct.ulp_bde64 = type { i32 }
%struct.bsg_job_data = type { i32, i64, %struct.TYPE_25__, %struct.fc_bsg_job*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"2733 Failed allocation of dd_data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NLP_ELS_SND_MASK = common dso_local global i32 0, align 4
@LPFC_BPL_SIZE = common dso_local global i32 0, align 4
@BUFF_TYPE_BLP_64 = common dso_local global i32 0, align 4
@CMD_GEN_REQUEST64_CR = common dso_local global i32 0, align 4
@SI = common dso_local global i32 0, align 4
@LA = common dso_local global i32 0, align 4
@FC_RCTL_DD_UNSOL_CTL = common dso_local global i32 0, align 4
@FC_TYPE_CT = common dso_local global i32 0, align 4
@CLASS3 = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@OWN_CHIP = common dso_local global i32 0, align 4
@LPFC_IO_LIBDFC = common dso_local global i32 0, align 4
@lpfc_bsg_send_mgmt_cmd_cmp = common dso_local global i32 0, align 4
@TYPE_IOCB = common dso_local global i32 0, align 4
@DISABLE_FCP_RING_INT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HC_R0INT_ENA = common dso_local global i32 0, align 4
@LPFC_FCP_RING = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_SUCCESS = common dso_local global i32 0, align 4
@IOCB_BUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @lpfc_bsg_send_mgmt_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_send_mgmt_cmd(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_rport_data*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.ulp_bde64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_iocbq*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.lpfc_dmabuf*, align 8
  %14 = alloca %struct.lpfc_dmabuf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.bsg_job_data*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %21 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %22 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %21, i32 0, i32 5
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %26, %struct.lpfc_vport** %4, align 8
  %27 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %28 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %27, i32 0, i32 0
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %28, align 8
  store %struct.lpfc_hba* %29, %struct.lpfc_hba** %5, align 8
  %30 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %31 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %30, i32 0, i32 4
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 0
  %34 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %33, align 8
  store %struct.lpfc_rport_data* %34, %struct.lpfc_rport_data** %6, align 8
  %35 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %36 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %35, i32 0, i32 0
  %37 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %36, align 8
  store %struct.lpfc_nodelist* %37, %struct.lpfc_nodelist** %7, align 8
  store %struct.ulp_bde64* null, %struct.ulp_bde64** %8, align 8
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %10, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %12, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %13, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %14, align 8
  store i32 0, i32* %19, align 4
  %38 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %39 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %38, i32 0, i32 1
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.lpfc_dmabuf* @kmalloc(i32 56, i32 %42)
  %44 = bitcast %struct.lpfc_dmabuf* %43 to %struct.bsg_job_data*
  store %struct.bsg_job_data* %44, %struct.bsg_job_data** %17, align 8
  %45 = load %struct.bsg_job_data*, %struct.bsg_job_data** %17, align 8
  %46 = icmp ne %struct.bsg_job_data* %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %1
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %49 = load i32, i32* @KERN_WARNING, align 4
  %50 = load i32, i32* @LOG_LIBDFC, align 4
  %51 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %19, align 4
  br label %414

54:                                               ; preds = %1
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %56 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %19, align 4
  br label %410

61:                                               ; preds = %54
  %62 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %63 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @NLP_ELS_SND_MASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %19, align 4
  br label %407

71:                                               ; preds = %61
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %73 = call %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba* %72)
  store %struct.lpfc_iocbq* %73, %struct.lpfc_iocbq** %10, align 8
  %74 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %75 = icmp ne %struct.lpfc_iocbq* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %19, align 4
  br label %407

79:                                               ; preds = %71
  %80 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %81 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %80, i32 0, i32 7
  store %struct.TYPE_20__* %81, %struct.TYPE_20__** %11, align 8
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.lpfc_dmabuf* @kmalloc(i32 56, i32 %82)
  store %struct.lpfc_dmabuf* %83, %struct.lpfc_dmabuf** %12, align 8
  %84 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %85 = icmp ne %struct.lpfc_dmabuf* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %19, align 4
  br label %403

89:                                               ; preds = %79
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %91 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %92 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %91, i32 0, i32 0
  %93 = call i64 @lpfc_mbuf_alloc(%struct.lpfc_hba* %90, i32 0, i32* %92)
  %94 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %95 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %97 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %89
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %19, align 4
  br label %386

103:                                              ; preds = %89
  %104 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %105 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %104, i32 0, i32 5
  %106 = call i32 @INIT_LIST_HEAD(i32* %105)
  %107 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %108 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %110, %struct.ulp_bde64** %8, align 8
  %111 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %112 = sext i32 %111 to i64
  %113 = udiv i64 %112, 4
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %15, align 4
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %116 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %117 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ulp_bde64*, %struct.ulp_bde64** %8, align 8
  %121 = call %struct.lpfc_dmabuf* @lpfc_alloc_bsg_buffers(%struct.lpfc_hba* %115, i32 %119, i32 1, %struct.ulp_bde64* %120, i32* %15)
  store %struct.lpfc_dmabuf* %121, %struct.lpfc_dmabuf** %13, align 8
  %122 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %123 = icmp ne %struct.lpfc_dmabuf* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %103
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %19, align 4
  br label %386

127:                                              ; preds = %103
  %128 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %129 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %130 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %129, i32 0, i32 3
  %131 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %132 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf* %128, %struct.TYPE_21__* %130, i32 %134, i32 1)
  %136 = load i32, i32* %15, align 4
  %137 = load %struct.ulp_bde64*, %struct.ulp_bde64** %8, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %137, i64 %138
  store %struct.ulp_bde64* %139, %struct.ulp_bde64** %8, align 8
  %140 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %141 = sext i32 %140 to i64
  %142 = udiv i64 %141, 4
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = sub i64 %142, %144
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %16, align 4
  %147 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %148 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %149 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.ulp_bde64*, %struct.ulp_bde64** %8, align 8
  %153 = call %struct.lpfc_dmabuf* @lpfc_alloc_bsg_buffers(%struct.lpfc_hba* %147, i32 %151, i32 0, %struct.ulp_bde64* %152, i32* %16)
  store %struct.lpfc_dmabuf* %153, %struct.lpfc_dmabuf** %14, align 8
  %154 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %155 = icmp ne %struct.lpfc_dmabuf* %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %127
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %19, align 4
  br label %382

159:                                              ; preds = %127
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i32 0, i32 4
  store i64 0, i64* %164, align 8
  %165 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %166 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @putPaddrHigh(i32 %167)
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 6
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 3
  store i32 %168, i32* %173, align 4
  %174 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %175 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @putPaddrLow(i32 %176)
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 6
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %181, i32 0, i32 2
  store i32 %177, i32* %182, align 8
  %183 = load i32, i32* @BUFF_TYPE_BLP_64, align 4
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 6
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %187, i32 0, i32 1
  store i32 %183, i32* %188, align 4
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* %16, align 4
  %191 = add nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 4
  %194 = trunc i64 %193 to i32
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %198, i32 0, i32 0
  store i32 %194, i32* %199, align 8
  %200 = load i32, i32* @CMD_GEN_REQUEST64_CR, align 4
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 7
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* @SI, align 4
  %204 = load i32, i32* @LA, align 4
  %205 = or i32 %203, %204
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 6
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  store i32 %205, i32* %211, align 8
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 6
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 3
  store i64 0, i64* %217, align 8
  %218 = load i32, i32* @FC_RCTL_DD_UNSOL_CTL, align 4
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 6
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 2
  store i32 %218, i32* %224, align 8
  %225 = load i32, i32* @FC_TYPE_CT, align 4
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 6
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 1
  store i32 %225, i32* %231, align 4
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 0
  store i32 1, i32* %233, align 8
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 1
  store i32 1, i32* %235, align 4
  %236 = load i32, i32* @CLASS3, align 4
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 5
  store i32 %236, i32* %238, align 8
  %239 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %240 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 2
  store i64 %241, i64* %243, align 8
  %244 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %245 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @LPFC_SLI_REV4, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %261

249:                                              ; preds = %159
  %250 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %251 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %250, i32 0, i32 5
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 0
  %253 = load i64*, i64** %252, align 8
  %254 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %255 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds i64, i64* %253, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 2
  store i64 %258, i64* %260, align 8
  br label %261

261:                                              ; preds = %249, %159
  %262 = load i32, i32* @OWN_CHIP, align 4
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 4
  store i32 %262, i32* %264, align 4
  %265 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %266 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %269 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %268, i32 0, i32 6
  store i32 %267, i32* %269, align 8
  %270 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %271 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %272 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %271, i32 0, i32 1
  store %struct.lpfc_dmabuf* %270, %struct.lpfc_dmabuf** %272, align 8
  %273 = load i32, i32* @LPFC_IO_LIBDFC, align 4
  %274 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %275 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 4
  %278 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %279 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = mul nsw i32 %280, 2
  store i32 %281, i32* %9, align 4
  %282 = load i32, i32* %9, align 4
  %283 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %284 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %283, i32 0, i32 3
  store i32 %282, i32* %284, align 8
  %285 = load i32, i32* @lpfc_bsg_send_mgmt_cmd_cmp, align 4
  %286 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %287 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %286, i32 0, i32 4
  store i32 %285, i32* %287, align 8
  %288 = load %struct.bsg_job_data*, %struct.bsg_job_data** %17, align 8
  %289 = bitcast %struct.bsg_job_data* %288 to %struct.lpfc_dmabuf*
  %290 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %291 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %290, i32 0, i32 3
  store %struct.lpfc_dmabuf* %289, %struct.lpfc_dmabuf** %291, align 8
  %292 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %293 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %294 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %293, i32 0, i32 2
  store %struct.lpfc_dmabuf* %292, %struct.lpfc_dmabuf** %294, align 8
  %295 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %296 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %297 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %296, i32 0, i32 1
  store %struct.lpfc_dmabuf* %295, %struct.lpfc_dmabuf** %297, align 8
  %298 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %299 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %300 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 0
  store %struct.lpfc_nodelist* %298, %struct.lpfc_nodelist** %301, align 8
  %302 = load i32, i32* @TYPE_IOCB, align 4
  %303 = load %struct.bsg_job_data*, %struct.bsg_job_data** %17, align 8
  %304 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %303, i32 0, i32 4
  store i32 %302, i32* %304, align 8
  %305 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %306 = load %struct.bsg_job_data*, %struct.bsg_job_data** %17, align 8
  %307 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %306, i32 0, i32 3
  store %struct.fc_bsg_job* %305, %struct.fc_bsg_job** %307, align 8
  %308 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %309 = load %struct.bsg_job_data*, %struct.bsg_job_data** %17, align 8
  %310 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %311, i32 0, i32 2
  store %struct.lpfc_iocbq* %308, %struct.lpfc_iocbq** %312, align 8
  %313 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %314 = load %struct.bsg_job_data*, %struct.bsg_job_data** %17, align 8
  %315 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %316, i32 0, i32 1
  store %struct.lpfc_nodelist* %313, %struct.lpfc_nodelist** %317, align 8
  %318 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %319 = load %struct.bsg_job_data*, %struct.bsg_job_data** %17, align 8
  %320 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %321, i32 0, i32 0
  store %struct.lpfc_dmabuf* %318, %struct.lpfc_dmabuf** %322, align 8
  %323 = load %struct.bsg_job_data*, %struct.bsg_job_data** %17, align 8
  %324 = bitcast %struct.bsg_job_data* %323 to %struct.lpfc_dmabuf*
  %325 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %326 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %325, i32 0, i32 0
  store %struct.lpfc_dmabuf* %324, %struct.lpfc_dmabuf** %326, align 8
  %327 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %328 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @DISABLE_FCP_RING_INT, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %357

333:                                              ; preds = %261
  %334 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %335 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 8
  %337 = call i64 @lpfc_readl(i32 %336, i32* %18)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %333
  %340 = load i32, i32* @EIO, align 4
  %341 = sub nsw i32 0, %340
  store i32 %341, i32* %19, align 4
  br label %378

342:                                              ; preds = %333
  %343 = load i32, i32* @HC_R0INT_ENA, align 4
  %344 = load i32, i32* @LPFC_FCP_RING, align 4
  %345 = shl i32 %343, %344
  %346 = load i32, i32* %18, align 4
  %347 = or i32 %346, %345
  store i32 %347, i32* %18, align 4
  %348 = load i32, i32* %18, align 4
  %349 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %350 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @writel(i32 %348, i32 %351)
  %353 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %354 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @readl(i32 %355)
  br label %357

357:                                              ; preds = %342, %261
  %358 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %359 = load i32, i32* @LPFC_ELS_RING, align 4
  %360 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %361 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %358, i32 %359, %struct.lpfc_iocbq* %360, i32 0)
  store i32 %361, i32* %20, align 4
  %362 = load i32, i32* %20, align 4
  %363 = load i32, i32* @IOCB_SUCCESS, align 4
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %366

365:                                              ; preds = %357
  store i32 0, i32* %2, align 4
  br label %423

366:                                              ; preds = %357
  %367 = load i32, i32* %20, align 4
  %368 = load i32, i32* @IOCB_BUSY, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %370, label %373

370:                                              ; preds = %366
  %371 = load i32, i32* @EAGAIN, align 4
  %372 = sub nsw i32 0, %371
  store i32 %372, i32* %19, align 4
  br label %376

373:                                              ; preds = %366
  %374 = load i32, i32* @EIO, align 4
  %375 = sub nsw i32 0, %374
  store i32 %375, i32* %19, align 4
  br label %376

376:                                              ; preds = %373, %370
  br label %377

377:                                              ; preds = %376
  br label %378

378:                                              ; preds = %377, %339
  %379 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %380 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %381 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %379, %struct.lpfc_dmabuf* %380)
  br label %382

382:                                              ; preds = %378, %156
  %383 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %384 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %385 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %383, %struct.lpfc_dmabuf* %384)
  br label %386

386:                                              ; preds = %382, %124, %100
  %387 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %388 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %400

391:                                              ; preds = %386
  %392 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %393 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %394 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %393, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %397 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %392, i64 %395, i32 %398)
  br label %400

400:                                              ; preds = %391, %386
  %401 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %402 = call i32 @kfree(%struct.lpfc_dmabuf* %401)
  br label %403

403:                                              ; preds = %400, %86
  %404 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %405 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %406 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %404, %struct.lpfc_iocbq* %405)
  br label %407

407:                                              ; preds = %403, %76, %68
  %408 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %409 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %408)
  br label %410

410:                                              ; preds = %407, %58
  %411 = load %struct.bsg_job_data*, %struct.bsg_job_data** %17, align 8
  %412 = bitcast %struct.bsg_job_data* %411 to %struct.lpfc_dmabuf*
  %413 = call i32 @kfree(%struct.lpfc_dmabuf* %412)
  br label %414

414:                                              ; preds = %410, %47
  %415 = load i32, i32* %19, align 4
  %416 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %417 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %416, i32 0, i32 1
  %418 = load %struct.TYPE_28__*, %struct.TYPE_28__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %418, i32 0, i32 0
  store i32 %415, i32* %419, align 8
  %420 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %421 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %420, i32 0, i32 0
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %421, align 8
  %422 = load i32, i32* %19, align 4
  store i32 %422, i32* %2, align 4
  br label %423

423:                                              ; preds = %414, %365
  %424 = load i32, i32* %2, align 4
  ret i32 %424
}

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.lpfc_dmabuf* @lpfc_alloc_bsg_buffers(%struct.lpfc_hba*, i32, i32, %struct.ulp_bde64*, i32*) #1

declare dso_local i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @putPaddrHigh(i32) #1

declare dso_local i32 @putPaddrLow(i32) #1

declare dso_local i64 @lpfc_readl(i32, i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i64, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
