; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_write_ebuf_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_write_ebuf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_19__, i32, i32 }
%struct.TYPE_19__ = type { i64, i32, i64, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.fc_bsg_job = type { i32 (%struct.fc_bsg_job*)*, %struct.TYPE_20__*, %struct.bsg_job_data*, %struct.TYPE_15__ }
%struct.TYPE_20__ = type { i64 }
%struct.bsg_job_data = type { %struct.TYPE_18__, %struct.fc_bsg_job*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_21__*, %struct.TYPE_22__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { %struct.bsg_job_data*, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_21__ }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.lpfc_dmabuf = type { i32, i64 }
%struct.lpfc_sli_config_mbox = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nemb_mse = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"2966 SLI_CONFIG (mse) ext-buffer wr set buffer[%d], size:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"2967 SLI_CONFIG (hbd) ext-buffer wr set buffer[%d], size:%d\0A\00", align 1
@mbox_wr = common dso_local global i32 0, align 4
@dma_ebuf = common dso_local global i32 0, align 4
@sta_pos_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"2968 SLI_CONFIG ext-buffer wr all %d ebuffers received\0A\00", align 1
@OWN_HOST = common dso_local global i32 0, align 4
@lpfc_bsg_issue_write_mbox_ext_cmpl = common dso_local global i32 0, align 4
@TYPE_MBOX = common dso_local global i32 0, align 4
@LPFC_BSG_MBOX_PORT = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@MBX_BUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"2969 Issued SLI_CONFIG ext-buffer maibox command, rc:x%x\0A\00", align 1
@SLI_CONFIG_HANDLED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"2970 Failed to issue SLI_CONFIG ext-buffer maibox command, rc:x%x\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.fc_bsg_job*, %struct.lpfc_dmabuf*)* @lpfc_bsg_write_ebuf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_write_ebuf_set(%struct.lpfc_hba* %0, %struct.fc_bsg_job* %1, %struct.lpfc_dmabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.fc_bsg_job*, align 8
  %7 = alloca %struct.lpfc_dmabuf*, align 8
  %8 = alloca %struct.lpfc_sli_config_mbox*, align 8
  %9 = alloca %struct.bsg_job_data*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.fc_bsg_job* %1, %struct.fc_bsg_job** %6, align 8
  store %struct.lpfc_dmabuf* %2, %struct.lpfc_dmabuf** %7, align 8
  store %struct.bsg_job_data* null, %struct.bsg_job_data** %9, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %10, align 8
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %15, align 8
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.lpfc_sli_config_mbox*
  store %struct.lpfc_sli_config_mbox* %36, %struct.lpfc_sli_config_mbox** %8, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.bsg_job_data* @kmalloc(i32 32, i32 %37)
  store %struct.bsg_job_data* %38, %struct.bsg_job_data** %9, align 8
  %39 = load %struct.bsg_job_data*, %struct.bsg_job_data** %9, align 8
  %40 = icmp ne %struct.bsg_job_data* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %3
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %16, align 4
  br label %241

44:                                               ; preds = %3
  %45 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %46 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %13, align 8
  %49 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %50 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %14, align 8
  %53 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %54 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %58 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i64, i64* %14, align 8
  %63 = call i32 @sg_copy_to_buffer(i32 %56, i32 %60, i32* %61, i64 %62)
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %65 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* @nemb_mse, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %44
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %73 = load i32, i32* @KERN_INFO, align 4
  %74 = load i32, i32* @LOG_LIBDFC, align 4
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i64, i64* %14, align 8
  %81 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %79, i64 %80)
  br label %93

82:                                               ; preds = %44
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %84 = load i32, i32* @KERN_INFO, align 4
  %85 = load i32, i32* @LOG_LIBDFC, align 4
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i64, i64* %14, align 8
  %92 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %90, i64 %91)
  br label %93

93:                                               ; preds = %82, %71
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load i64, i64* %15, align 8
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %98 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %102 = call i32 @lpfc_bsg_sli_cfg_dma_desc_setup(%struct.lpfc_hba* %94, i32 %95, i64 %96, %struct.TYPE_14__* %100, %struct.lpfc_dmabuf* %101)
  %103 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %104 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %103, i32 0, i32 0
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 5
  %108 = call i32 @list_add_tail(i32* %104, i32* %107)
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %111 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* @mbox_wr, align 4
  %116 = load i32, i32* @dma_ebuf, align 4
  %117 = load i32, i32* @sta_pos_addr, align 4
  %118 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %119 = load i64, i64* %15, align 8
  %120 = call i32 @lpfc_idiag_mbxacc_dump_bsg_mbox(%struct.lpfc_hba* %109, i64 %114, i32 %115, i32 %116, i32 %117, %struct.lpfc_dmabuf* %118, i64 %119)
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %122 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %126 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %124, %128
  br i1 %129, label %130, label %230

130:                                              ; preds = %93
  %131 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %132 = load i32, i32* @KERN_INFO, align 4
  %133 = load i32, i32* @LOG_LIBDFC, align 4
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %135 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %131, i32 %132, i32 %133, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %141 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @GFP_KERNEL, align 4
  %144 = call %struct.TYPE_22__* @mempool_alloc(i32 %142, i32 %143)
  store %struct.TYPE_22__* %144, %struct.TYPE_22__** %10, align 8
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %146 = icmp ne %struct.TYPE_22__* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %130
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %16, align 4
  br label %241

150:                                              ; preds = %130
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %152 = call i32 @memset(%struct.TYPE_22__* %151, i32 0, i32 24)
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %154 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 4
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to i32*
  store i32* %159, i32** %13, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  store %struct.TYPE_21__* %162, %struct.TYPE_21__** %11, align 8
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %164 = load i32*, i32** %13, align 8
  %165 = call i32 @memcpy(%struct.TYPE_21__* %163, i32* %164, i32 4)
  %166 = load i32, i32* @OWN_HOST, align 4
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %170 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* @lpfc_bsg_issue_write_mbox_ext_cmpl, align 4
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 8
  %177 = load %struct.bsg_job_data*, %struct.bsg_job_data** %9, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  store %struct.bsg_job_data* %177, %struct.bsg_job_data** %179, align 8
  %180 = load i32, i32* @TYPE_MBOX, align 4
  %181 = load %struct.bsg_job_data*, %struct.bsg_job_data** %9, align 8
  %182 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  %183 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %184 = load %struct.bsg_job_data*, %struct.bsg_job_data** %9, align 8
  %185 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %184, i32 0, i32 1
  store %struct.fc_bsg_job* %183, %struct.fc_bsg_job** %185, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %187 = load %struct.bsg_job_data*, %struct.bsg_job_data** %9, align 8
  %188 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 1
  store %struct.TYPE_22__* %186, %struct.TYPE_22__** %190, align 8
  %191 = load i32*, i32** %13, align 8
  %192 = bitcast i32* %191 to %struct.TYPE_21__*
  %193 = load %struct.bsg_job_data*, %struct.bsg_job_data** %9, align 8
  %194 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  store %struct.TYPE_21__* %192, %struct.TYPE_21__** %196, align 8
  %197 = load %struct.bsg_job_data*, %struct.bsg_job_data** %9, align 8
  %198 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %199 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %198, i32 0, i32 2
  store %struct.bsg_job_data* %197, %struct.bsg_job_data** %199, align 8
  %200 = load i32, i32* @LPFC_BSG_MBOX_PORT, align 4
  %201 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %202 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 3
  store i32 %200, i32* %203, align 8
  %204 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %206 = load i32, i32* @MBX_NOWAIT, align 4
  %207 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %204, %struct.TYPE_22__* %205, i32 %206)
  store i32 %207, i32* %16, align 4
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* @MBX_SUCCESS, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %215, label %211

211:                                              ; preds = %150
  %212 = load i32, i32* %16, align 4
  %213 = load i32, i32* @MBX_BUSY, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %222

215:                                              ; preds = %211, %150
  %216 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %217 = load i32, i32* @KERN_INFO, align 4
  %218 = load i32, i32* @LOG_LIBDFC, align 4
  %219 = load i32, i32* %16, align 4
  %220 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %216, i32 %217, i32 %218, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %219)
  %221 = load i32, i32* @SLI_CONFIG_HANDLED, align 4
  store i32 %221, i32* %4, align 4
  br label %248

222:                                              ; preds = %211
  %223 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %224 = load i32, i32* @KERN_ERR, align 4
  %225 = load i32, i32* @LOG_LIBDFC, align 4
  %226 = load i32, i32* %16, align 4
  %227 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %223, i32 %224, i32 %225, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* @EPIPE, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %16, align 4
  br label %241

230:                                              ; preds = %93
  %231 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %232 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %231, i32 0, i32 1
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 0
  store i64 0, i64* %234, align 8
  %235 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %236 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %235, i32 0, i32 0
  %237 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %236, align 8
  %238 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %239 = call i32 %237(%struct.fc_bsg_job* %238)
  %240 = load i32, i32* @SLI_CONFIG_HANDLED, align 4
  store i32 %240, i32* %4, align 4
  br label %248

241:                                              ; preds = %222, %147, %41
  %242 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %243 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %244 = call i32 @lpfc_bsg_dma_page_free(%struct.lpfc_hba* %242, %struct.lpfc_dmabuf* %243)
  %245 = load %struct.bsg_job_data*, %struct.bsg_job_data** %9, align 8
  %246 = call i32 @kfree(%struct.bsg_job_data* %245)
  %247 = load i32, i32* %16, align 4
  store i32 %247, i32* %4, align 4
  br label %248

248:                                              ; preds = %241, %230, %215
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local %struct.bsg_job_data* @kmalloc(i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i32*, i64) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @lpfc_bsg_sli_cfg_dma_desc_setup(%struct.lpfc_hba*, i32, i64, %struct.TYPE_14__*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @lpfc_idiag_mbxacc_dump_bsg_mbox(%struct.lpfc_hba*, i64, i32, i32, i32, %struct.lpfc_dmabuf*, i64) #1

declare dso_local %struct.TYPE_22__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @lpfc_bsg_dma_page_free(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @kfree(%struct.bsg_job_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
