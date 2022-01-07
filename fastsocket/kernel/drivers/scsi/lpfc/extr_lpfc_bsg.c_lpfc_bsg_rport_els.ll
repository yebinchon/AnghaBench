; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_rport_els.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_rport_els.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { %struct.lpfc_nodelist*, %struct.TYPE_17__*, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__*, %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.lpfc_nodelist = type { i64, %struct.TYPE_16__, %struct.fc_bsg_job*, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq* }
%struct.lpfc_iocbq = type { %struct.lpfc_nodelist*, i32, %struct.TYPE_14__, i32, %struct.TYPE_26__, i64 }
%struct.TYPE_14__ = type { %struct.lpfc_nodelist* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_24__ = type { i64, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.lpfc_rport_data* }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.TYPE_18__ = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64* }
%struct.bsg_job_data = type { i64, %struct.TYPE_16__, %struct.fc_bsg_job*, i32, i32 }
%struct.lpfc_dmabuf = type { i32 }

@FCELSSIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"2735 Failed allocation of dd_data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_IO_LIBDFC = common dso_local global i32 0, align 4
@lpfc_bsg_rport_els_cmp = common dso_local global i32 0, align 4
@TYPE_IOCB = common dso_local global i32 0, align 4
@DISABLE_FCP_RING_INT = common dso_local global i32 0, align 4
@HC_R0INT_ENA = common dso_local global i32 0, align 4
@LPFC_FCP_RING = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_SUCCESS = common dso_local global i32 0, align 4
@IOCB_BUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @lpfc_bsg_rport_els to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_rport_els(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_rport_data*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.bsg_job_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %16 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %17 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %16, i32 0, i32 6
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %21, %struct.lpfc_vport** %4, align 8
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %23 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %22, i32 0, i32 0
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %23, align 8
  store %struct.lpfc_hba* %24, %struct.lpfc_hba** %5, align 8
  %25 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %26 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %25, i32 0, i32 5
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %28, align 8
  store %struct.lpfc_rport_data* %29, %struct.lpfc_rport_data** %6, align 8
  %30 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %31 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %30, i32 0, i32 0
  %32 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %31, align 8
  store %struct.lpfc_nodelist* %32, %struct.lpfc_nodelist** %7, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %15, align 4
  %33 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %34 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %33, i32 0, i32 1
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %38 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FCELSSIZE, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %1
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %15, align 4
  br label %243

46:                                               ; preds = %1
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.lpfc_nodelist* @kmalloc(i32 48, i32 %47)
  %49 = bitcast %struct.lpfc_nodelist* %48 to %struct.bsg_job_data*
  store %struct.bsg_job_data* %49, %struct.bsg_job_data** %13, align 8
  %50 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %51 = icmp ne %struct.bsg_job_data* %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %54 = load i32, i32* @KERN_WARNING, align 4
  %55 = load i32, i32* @LOG_LIBDFC, align 4
  %56 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %15, align 4
  br label %243

59:                                               ; preds = %46
  %60 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %61 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %60, i32 0, i32 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  %67 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %68 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %9, align 4
  %72 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %73 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %10, align 4
  %76 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %77 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %59
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %15, align 4
  br label %239

82:                                               ; preds = %59
  %83 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %86 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %87 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %83, i32 1, i32 %84, i32 0, %struct.lpfc_nodelist* %85, i32 %88, i32 %89)
  store %struct.lpfc_iocbq* %90, %struct.lpfc_iocbq** %11, align 8
  %91 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %92 = icmp ne %struct.lpfc_iocbq* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %82
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %15, align 4
  br label %236

96:                                               ; preds = %82
  %97 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %98 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %12, align 8
  %100 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %101 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %105 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %109 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to %struct.lpfc_dmabuf*
  %112 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @sg_copy_to_buffer(i32 %103, i32 %107, i32 %113, i32 %114)
  %116 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %117 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @LPFC_SLI_REV4, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %96
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %123 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* %12, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %130 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 0
  store i64 %128, i64* %131, align 8
  br label %137

132:                                              ; preds = %96
  %133 = load i64, i64* %12, align 8
  %134 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %135 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 0
  store i64 %133, i64* %136, align 8
  br label %137

137:                                              ; preds = %132, %121
  %138 = load i32, i32* @LPFC_IO_LIBDFC, align 4
  %139 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %140 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %144 = bitcast %struct.bsg_job_data* %143 to %struct.lpfc_nodelist*
  %145 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %146 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %145, i32 0, i32 0
  store %struct.lpfc_nodelist* %144, %struct.lpfc_nodelist** %146, align 8
  %147 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %148 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %149 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  store %struct.lpfc_nodelist* %147, %struct.lpfc_nodelist** %150, align 8
  %151 = load i32, i32* @lpfc_bsg_rport_els_cmp, align 4
  %152 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %153 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* @TYPE_IOCB, align 4
  %155 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %156 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 8
  %157 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %158 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %159 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %158, i32 0, i32 2
  store %struct.fc_bsg_job* %157, %struct.fc_bsg_job** %159, align 8
  %160 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %161 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %162 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 2
  store %struct.lpfc_iocbq* %160, %struct.lpfc_iocbq** %164, align 8
  %165 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %166 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %167 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  store %struct.lpfc_nodelist* %165, %struct.lpfc_nodelist** %169, align 8
  %170 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %171 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  store i32* null, i32** %173, align 8
  %174 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %175 = bitcast %struct.bsg_job_data* %174 to %struct.lpfc_nodelist*
  %176 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %177 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %176, i32 0, i32 0
  store %struct.lpfc_nodelist* %175, %struct.lpfc_nodelist** %177, align 8
  %178 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %179 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @DISABLE_FCP_RING_INT, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %208

184:                                              ; preds = %137
  %185 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %186 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @lpfc_readl(i32 %187, i32* %14)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %184
  %191 = load i32, i32* @EIO, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %15, align 4
  br label %229

193:                                              ; preds = %184
  %194 = load i32, i32* @HC_R0INT_ENA, align 4
  %195 = load i32, i32* @LPFC_FCP_RING, align 4
  %196 = shl i32 %194, %195
  %197 = load i32, i32* %14, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %14, align 4
  %199 = load i32, i32* %14, align 4
  %200 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %201 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @writel(i32 %199, i32 %202)
  %204 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %205 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @readl(i32 %206)
  br label %208

208:                                              ; preds = %193, %137
  %209 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %210 = load i32, i32* @LPFC_ELS_RING, align 4
  %211 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %212 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %209, i32 %210, %struct.lpfc_iocbq* %211, i32 0)
  store i32 %212, i32* %15, align 4
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* @IOCB_SUCCESS, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  store i32 0, i32* %2, align 4
  br label %252

217:                                              ; preds = %208
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* @IOCB_BUSY, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = load i32, i32* @EAGAIN, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %15, align 4
  br label %227

224:                                              ; preds = %217
  %225 = load i32, i32* @EIO, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %15, align 4
  br label %227

227:                                              ; preds = %224, %221
  br label %228

228:                                              ; preds = %227
  br label %229

229:                                              ; preds = %228, %190
  %230 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %231 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %232 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %231, i32 0, i32 0
  store %struct.lpfc_nodelist* %230, %struct.lpfc_nodelist** %232, align 8
  %233 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %234 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %235 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %233, %struct.lpfc_iocbq* %234)
  br label %236

236:                                              ; preds = %229, %93
  %237 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %238 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %237)
  br label %239

239:                                              ; preds = %236, %79
  %240 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %241 = bitcast %struct.bsg_job_data* %240 to %struct.lpfc_nodelist*
  %242 = call i32 @kfree(%struct.lpfc_nodelist* %241)
  br label %243

243:                                              ; preds = %239, %52, %43
  %244 = load i32, i32* %15, align 4
  %245 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %246 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %245, i32 0, i32 1
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 0
  store i32 %244, i32* %248, align 8
  %249 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %250 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %249, i32 0, i32 0
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %250, align 8
  %251 = load i32, i32* %15, align 4
  store i32 %251, i32* %2, align 4
  br label %252

252:                                              ; preds = %243, %216
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local %struct.lpfc_nodelist* @kmalloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i32, i32) #1

declare dso_local i64 @lpfc_readl(i32, i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @kfree(%struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
