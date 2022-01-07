; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_parse_bg_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_parse_bg_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32 }
%struct.lpfc_scsi_buf = type { %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32*, i32, i32*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.lpfc_iocbq = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sli3_bg_fields }
%struct.sli3_bg_fields = type { i64, i64 }

@_dump_buf_lock = common dso_local global i32 0, align 4
@_dump_buf_done = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_BG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"9070 BLKGRD: Saving Data for %u blocks to debugfs\0A\00", align 1
@LPFC_PG_TYPE_DIF_BUF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"9071 BLKGRD: Saving DIF for %u blocks to debugfs\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [89 x i8] c"9072 BLKGRD: Invalid BG Profile in cmd 0x%x lba 0x%llx blk cnt 0x%x bgstat=x%x bghm=x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [92 x i8] c"9073 BLKGRD: Invalid BG PDIF Block in cmd 0x%x lba 0x%llx blk cnt 0x%x bgstat=x%x bghm=x%x\0A\00", align 1
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [86 x i8] c"9055 BLKGRD: Guard Tag error in cmd 0x%x lba 0x%llx blk cnt 0x%x bgstat=x%x bghm=x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [84 x i8] c"9056 BLKGRD: Ref Tag error in cmd 0x%x lba 0x%llx blk cnt 0x%x bgstat=x%x bghm=x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [84 x i8] c"9061 BLKGRD: App Tag error in cmd 0x%x lba 0x%llx blk cnt 0x%x bgstat=x%x bghm=x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [84 x i8] c"9057 BLKGRD: Unknown error in cmd 0x%x lba 0x%llx blk cnt 0x%x bgstat=x%x bghm=x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_scsi_buf*, %struct.lpfc_iocbq*)* @lpfc_parse_bg_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_parse_bg_err(%struct.lpfc_hba* %0, %struct.lpfc_scsi_buf* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_scsi_buf*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.sli3_bg_fields*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_scsi_buf* %1, %struct.lpfc_scsi_buf** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %13 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %14 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %13, i32 0, i32 0
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  store %struct.scsi_cmnd* %15, %struct.scsi_cmnd** %7, align 8
  %16 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %17 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.sli3_bg_fields* %19, %struct.sli3_bg_fields** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.sli3_bg_fields*, %struct.sli3_bg_fields** %8, align 8
  %21 = getelementptr inbounds %struct.sli3_bg_fields, %struct.sli3_bg_fields* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.sli3_bg_fields*, %struct.sli3_bg_fields** %8, align 8
  %24 = getelementptr inbounds %struct.sli3_bg_fields, %struct.sli3_bg_fields* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %26 = call i32 @spin_lock(i32* @_dump_buf_lock)
  %27 = load i32, i32* @_dump_buf_done, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %75, label %29

29:                                               ; preds = %3
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load i32, i32* @LOG_BG, align 4
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 7
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %38, %43
  %45 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %48 = call i32 @lpfc_debug_save_data(%struct.lpfc_hba* %46, %struct.scsi_cmnd* %47)
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %51 = call i64 @lpfc_prot_group_type(%struct.lpfc_hba* %49, %struct.scsi_cmnd* %50)
  %52 = load i64, i64* @LPFC_PG_TYPE_DIF_BUF, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %29
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %56 = load i32, i32* @KERN_ERR, align 4
  %57 = load i32, i32* @LOG_BG, align 4
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 7
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 8
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %63, %68
  %70 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %73 = call i32 @lpfc_debug_save_dif(%struct.lpfc_hba* %71, %struct.scsi_cmnd* %72)
  br label %74

74:                                               ; preds = %54, %29
  store i32 1, i32* @_dump_buf_done, align 4
  br label %75

75:                                               ; preds = %74, %3
  %76 = call i32 @spin_unlock(i32* @_dump_buf_lock)
  %77 = load i64, i64* %11, align 8
  %78 = call i64 @lpfc_bgs_get_invalid_prof(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %75
  %81 = load i32, i32* @DID_ERROR, align 4
  %82 = call i32 @ScsiResult(i32 %81, i32 0)
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %84 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %86 = load i32, i32* @KERN_WARNING, align 4
  %87 = load i32, i32* @LOG_FCP, align 4
  %88 = load i32, i32* @LOG_BG, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %91 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %96 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %95)
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %98 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @blk_rq_sectors(i32 %99)
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %10, align 8
  %103 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %85, i32 %86, i32 %89, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i32 %94, i64 %96, i32 %100, i64 %101, i64 %102)
  store i32 -1, i32* %9, align 4
  br label %334

104:                                              ; preds = %75
  %105 = load i64, i64* %11, align 8
  %106 = call i64 @lpfc_bgs_get_uninit_dif_block(i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %132

108:                                              ; preds = %104
  %109 = load i32, i32* @DID_ERROR, align 4
  %110 = call i32 @ScsiResult(i32 %109, i32 0)
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %112 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %114 = load i32, i32* @KERN_WARNING, align 4
  %115 = load i32, i32* @LOG_FCP, align 4
  %116 = load i32, i32* @LOG_BG, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %119 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %124 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %123)
  %125 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %126 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @blk_rq_sectors(i32 %127)
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* %10, align 8
  %131 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %113, i32 %114, i32 %117, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.3, i64 0, i64 0), i32 %122, i64 %124, i32 %128, i64 %129, i64 %130)
  store i32 -1, i32* %9, align 4
  br label %334

132:                                              ; preds = %104
  %133 = load i64, i64* %11, align 8
  %134 = call i64 @lpfc_bgs_get_guard_err(i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %173

136:                                              ; preds = %132
  store i32 1, i32* %9, align 4
  %137 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %138 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %141 = call i32 @scsi_build_sense_buffer(i32 1, i32* %139, i32 %140, i32 16, i32 1)
  %142 = load i32, i32* @DRIVER_SENSE, align 4
  %143 = shl i32 %142, 24
  %144 = load i32, i32* @DID_ABORT, align 4
  %145 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %146 = call i32 @ScsiResult(i32 %144, i32 %145)
  %147 = or i32 %143, %146
  %148 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %149 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  %150 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %151 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %155 = load i32, i32* @KERN_WARNING, align 4
  %156 = load i32, i32* @LOG_FCP, align 4
  %157 = load i32, i32* @LOG_BG, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %160 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %165 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %164)
  %166 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %167 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @blk_rq_sectors(i32 %168)
  %170 = load i64, i64* %11, align 8
  %171 = load i64, i64* %10, align 8
  %172 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %154, i32 %155, i32 %158, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0), i32 %163, i64 %165, i32 %169, i64 %170, i64 %171)
  br label %173

173:                                              ; preds = %136, %132
  %174 = load i64, i64* %11, align 8
  %175 = call i64 @lpfc_bgs_get_reftag_err(i64 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %214

177:                                              ; preds = %173
  store i32 1, i32* %9, align 4
  %178 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %179 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %182 = call i32 @scsi_build_sense_buffer(i32 1, i32* %180, i32 %181, i32 16, i32 3)
  %183 = load i32, i32* @DRIVER_SENSE, align 4
  %184 = shl i32 %183, 24
  %185 = load i32, i32* @DID_ABORT, align 4
  %186 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %187 = call i32 @ScsiResult(i32 %185, i32 %186)
  %188 = or i32 %184, %187
  %189 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %190 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 8
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %192 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4
  %195 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %196 = load i32, i32* @KERN_WARNING, align 4
  %197 = load i32, i32* @LOG_FCP, align 4
  %198 = load i32, i32* @LOG_BG, align 4
  %199 = or i32 %197, %198
  %200 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %201 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %206 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %205)
  %207 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %208 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @blk_rq_sectors(i32 %209)
  %211 = load i64, i64* %11, align 8
  %212 = load i64, i64* %10, align 8
  %213 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %195, i32 %196, i32 %199, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.5, i64 0, i64 0), i32 %204, i64 %206, i32 %210, i64 %211, i64 %212)
  br label %214

214:                                              ; preds = %177, %173
  %215 = load i64, i64* %11, align 8
  %216 = call i64 @lpfc_bgs_get_apptag_err(i64 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %255

218:                                              ; preds = %214
  store i32 1, i32* %9, align 4
  %219 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %220 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %223 = call i32 @scsi_build_sense_buffer(i32 1, i32* %221, i32 %222, i32 16, i32 2)
  %224 = load i32, i32* @DRIVER_SENSE, align 4
  %225 = shl i32 %224, 24
  %226 = load i32, i32* @DID_ABORT, align 4
  %227 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %228 = call i32 @ScsiResult(i32 %226, i32 %227)
  %229 = or i32 %225, %228
  %230 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %231 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 8
  %232 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %233 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 4
  %236 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %237 = load i32, i32* @KERN_WARNING, align 4
  %238 = load i32, i32* @LOG_FCP, align 4
  %239 = load i32, i32* @LOG_BG, align 4
  %240 = or i32 %238, %239
  %241 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %242 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %247 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %246)
  %248 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %249 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @blk_rq_sectors(i32 %250)
  %252 = load i64, i64* %11, align 8
  %253 = load i64, i64* %10, align 8
  %254 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %236, i32 %237, i32 %240, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.6, i64 0, i64 0), i32 %245, i64 %247, i32 %251, i64 %252, i64 %253)
  br label %255

255:                                              ; preds = %218, %214
  %256 = load i64, i64* %11, align 8
  %257 = call i64 @lpfc_bgs_get_hi_water_mark_present(i64 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %307

259:                                              ; preds = %255
  %260 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %261 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %260, i32 0, i32 2
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 7
  store i32 12, i32* %263, align 4
  %264 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %265 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %264, i32 0, i32 2
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 8
  store i32 0, i32* %267, align 4
  %268 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %269 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %268, i32 0, i32 2
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 9
  store i32 10, i32* %271, align 4
  %272 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %273 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 10
  store i32 128, i32* %275, align 4
  %276 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %277 = call i32 @scsi_get_prot_op(%struct.scsi_cmnd* %276)
  switch i32 %277, label %295 [
    i32 133, label %278
    i32 128, label %278
    i32 131, label %286
    i32 130, label %286
    i32 132, label %286
    i32 129, label %286
  ]

278:                                              ; preds = %259, %259
  %279 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %280 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %279, i32 0, i32 4
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* %10, align 8
  %285 = sdiv i64 %284, %283
  store i64 %285, i64* %10, align 8
  br label %295

286:                                              ; preds = %259, %259, %259, %259
  %287 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %288 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %287, i32 0, i32 4
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = add i64 %291, 4
  %293 = load i64, i64* %10, align 8
  %294 = udiv i64 %293, %292
  store i64 %294, i64* %10, align 8
  br label %295

295:                                              ; preds = %259, %286, %278
  %296 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %297 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %296)
  store i64 %297, i64* %12, align 8
  %298 = load i64, i64* %10, align 8
  %299 = load i64, i64* %12, align 8
  %300 = add nsw i64 %299, %298
  store i64 %300, i64* %12, align 8
  %301 = load i64, i64* %12, align 8
  %302 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %303 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %302, i32 0, i32 2
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 12
  %306 = call i32 @put_unaligned_be64(i64 %301, i32* %305)
  br label %307

307:                                              ; preds = %295, %255
  %308 = load i32, i32* %9, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %333, label %310

310:                                              ; preds = %307
  %311 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %312 = load i32, i32* @KERN_WARNING, align 4
  %313 = load i32, i32* @LOG_FCP, align 4
  %314 = load i32, i32* @LOG_BG, align 4
  %315 = or i32 %313, %314
  %316 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %317 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 0
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %322 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %321)
  %323 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %324 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @blk_rq_sectors(i32 %325)
  %327 = load i64, i64* %11, align 8
  %328 = load i64, i64* %10, align 8
  %329 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %311, i32 %312, i32 %315, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.7, i64 0, i64 0), i32 %320, i64 %322, i32 %326, i64 %327, i64 %328)
  %330 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %331 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %332 = call i32 @lpfc_calc_bg_err(%struct.lpfc_hba* %330, %struct.lpfc_scsi_buf* %331)
  br label %333

333:                                              ; preds = %310, %307
  br label %334

334:                                              ; preds = %333, %108, %80
  %335 = load i32, i32* %9, align 4
  ret i32 %335
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @lpfc_debug_save_data(%struct.lpfc_hba*, %struct.scsi_cmnd*) #1

declare dso_local i64 @lpfc_prot_group_type(%struct.lpfc_hba*, %struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_debug_save_dif(%struct.lpfc_hba*, %struct.scsi_cmnd*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @lpfc_bgs_get_invalid_prof(i64) #1

declare dso_local i32 @ScsiResult(i32, i32) #1

declare dso_local i64 @scsi_get_lba(%struct.scsi_cmnd*) #1

declare dso_local i32 @blk_rq_sectors(i32) #1

declare dso_local i64 @lpfc_bgs_get_uninit_dif_block(i64) #1

declare dso_local i64 @lpfc_bgs_get_guard_err(i64) #1

declare dso_local i32 @scsi_build_sense_buffer(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @lpfc_bgs_get_reftag_err(i64) #1

declare dso_local i64 @lpfc_bgs_get_apptag_err(i64) #1

declare dso_local i64 @lpfc_bgs_get_hi_water_mark_present(i64) #1

declare dso_local i32 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local i32 @put_unaligned_be64(i64, i32*) #1

declare dso_local i32 @lpfc_calc_bg_err(%struct.lpfc_hba*, %struct.lpfc_scsi_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
