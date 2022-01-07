; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_bg_scsi_prep_dma_buf_s4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_bg_scsi_prep_dma_buf_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.lpfc_scsi_buf = type { i32, i32, %struct.TYPE_6__, i64, %struct.fcp_cmnd*, %struct.scsi_cmnd* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.fcp_cmnd = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.sli4_sge = type { i32 }

@lpfc_sli4_sge_last = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"9083 Unexpected protection group %i\0A\00", align 1
@LPFC_IO_DIF_STRIP = common dso_local global i32 0, align 4
@LPFC_IO_DIF_INSERT = common dso_local global i32 0, align 4
@LPFC_IO_DIF_PASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"9084 Cannot setup S/G List for HBAIO segs %d/%d SGL %d SCSI %d: %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_scsi_buf*)* @lpfc_bg_scsi_prep_dma_buf_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bg_scsi_prep_dma_buf_s4(%struct.lpfc_hba* %0, %struct.lpfc_scsi_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_scsi_buf*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.fcp_cmnd*, align 8
  %8 = alloca %struct.sli4_sge*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_scsi_buf* %1, %struct.lpfc_scsi_buf** %5, align 8
  %16 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %16, i32 0, i32 5
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %17, align 8
  store %struct.scsi_cmnd* %18, %struct.scsi_cmnd** %6, align 8
  %19 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %19, i32 0, i32 4
  %21 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %20, align 8
  store %struct.fcp_cmnd* %21, %struct.fcp_cmnd** %7, align 8
  %22 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.sli4_sge*
  store %struct.sli4_sge* %25, %struct.sli4_sge** %8, align 8
  %26 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %27 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %9, align 8
  store i32 0, i32* %10, align 4
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %33 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %172

35:                                               ; preds = %2
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 2
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %41 = call i32 @scsi_sglist(%struct.scsi_cmnd* %40)
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %43 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %42)
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @dma_map_sg(i32* %39, i32 %41, i64 %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %258

53:                                               ; preds = %35
  %54 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %55 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %54, i64 1
  store %struct.sli4_sge* %55, %struct.sli4_sge** %8, align 8
  %56 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %57 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %61 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @lpfc_sli4_sge_last, align 4
  %63 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %64 = call i32 @bf_set(i32 %62, %struct.sli4_sge* %63, i32 0)
  %65 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %66 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @cpu_to_le32(i32 %67)
  %69 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %70 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %72 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %71, i64 1
  store %struct.sli4_sge* %72, %struct.sli4_sge** %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %75 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %77 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %53
  br label %209

84:                                               ; preds = %53
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %87 = call i32 @lpfc_prot_group_type(%struct.lpfc_hba* %85, %struct.scsi_cmnd* %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  switch i32 %88, label %161 [
    i32 134, label %89
    i32 136, label %109
    i32 135, label %160
  ]

89:                                               ; preds = %84
  %90 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %91 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %209

99:                                               ; preds = %89
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %102 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @lpfc_bg_setup_sgl(%struct.lpfc_hba* %100, %struct.scsi_cmnd* %101, %struct.sli4_sge* %102, i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %209

108:                                              ; preds = %99
  br label %171

109:                                              ; preds = %84
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %111 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %110, i32 0, i32 2
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %115 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %114)
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %117 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %116)
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @dma_map_sg(i32* %113, i32 %115, i64 %117, i32 %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %109
  %127 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %128 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %127)
  store i32 1, i32* %3, align 4
  br label %258

129:                                              ; preds = %109
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %132 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %134 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %135, 3
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %138 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %139, 2
  %141 = icmp sgt i32 %136, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %129
  br label %209

143:                                              ; preds = %129
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %145 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %146 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @lpfc_bg_setup_sgl_prot(%struct.lpfc_hba* %144, %struct.scsi_cmnd* %145, %struct.sli4_sge* %146, i32 %147, i32 %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp slt i32 %150, 3
  br i1 %151, label %158, label %152

152:                                              ; preds = %143
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %155 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %153, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %152, %143
  br label %209

159:                                              ; preds = %152
  br label %171

160:                                              ; preds = %84
  br label %161

161:                                              ; preds = %84, %160
  %162 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %163 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %162)
  %164 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %165 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  %166 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %167 = load i32, i32* @KERN_ERR, align 4
  %168 = load i32, i32* @LOG_FCP, align 4
  %169 = load i32, i32* %14, align 4
  %170 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %166, i32 %167, i32 %168, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %169)
  store i32 1, i32* %3, align 4
  br label %258

171:                                              ; preds = %159, %108
  br label %172

172:                                              ; preds = %171, %2
  %173 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %174 = call i32 @scsi_get_prot_op(%struct.scsi_cmnd* %173)
  switch i32 %174, label %196 [
    i32 128, label %175
    i32 131, label %175
    i32 130, label %182
    i32 133, label %182
    i32 129, label %189
    i32 132, label %189
  ]

175:                                              ; preds = %172, %172
  %176 = load i32, i32* @LPFC_IO_DIF_STRIP, align 4
  %177 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %178 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %176
  store i32 %181, i32* %179, align 8
  br label %196

182:                                              ; preds = %172, %172
  %183 = load i32, i32* @LPFC_IO_DIF_INSERT, align 4
  %184 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %185 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %183
  store i32 %188, i32* %186, align 8
  br label %196

189:                                              ; preds = %172, %172
  %190 = load i32, i32* @LPFC_IO_DIF_PASS, align 4
  %191 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %192 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %190
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %172, %189, %182, %175
  %197 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %198 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %199 = call i32 @lpfc_bg_scsi_adjust_dl(%struct.lpfc_hba* %197, %struct.lpfc_scsi_buf* %198)
  store i32 %199, i32* %15, align 4
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @be32_to_cpu(i32 %200)
  %202 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %7, align 8
  %203 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %15, align 4
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  store i32 %204, i32* %208, align 4
  store i32 0, i32* %3, align 4
  br label %258

209:                                              ; preds = %158, %142, %107, %98, %83
  %210 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %211 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %216 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %215)
  br label %217

217:                                              ; preds = %214, %209
  %218 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %219 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %217
  %223 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %224 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %223, i32 0, i32 2
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %228 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %227)
  %229 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %230 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %229)
  %231 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %232 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @dma_unmap_sg(i32* %226, i32 %228, i64 %230, i32 %233)
  br label %235

235:                                              ; preds = %222, %217
  %236 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %237 = load i32, i32* @KERN_ERR, align 4
  %238 = load i32, i32* @LOG_FCP, align 4
  %239 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %240 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %243 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %246 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %249 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* %14, align 4
  %252 = load i32, i32* %10, align 4
  %253 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %236, i32 %237, i32 %238, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %241, i32 %244, i32 %247, i32 %250, i32 %251, i32 %252)
  %254 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %255 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %254, i32 0, i32 0
  store i32 0, i32* %255, align 8
  %256 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %257 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %256, i32 0, i32 1
  store i32 0, i32* %257, align 4
  store i32 1, i32* %3, align 4
  br label %258

258:                                              ; preds = %235, %196, %161, %126, %52
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @dma_map_sg(i32*, i32, i64, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @bf_set(i32, %struct.sli4_sge*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @lpfc_prot_group_type(%struct.lpfc_hba*, %struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_bg_setup_sgl(%struct.lpfc_hba*, %struct.scsi_cmnd*, %struct.sli4_sge*, i32) #1

declare dso_local i32 @scsi_prot_sglist(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_prot_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_bg_setup_sgl_prot(%struct.lpfc_hba*, %struct.scsi_cmnd*, %struct.sli4_sge*, i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_bg_scsi_adjust_dl(%struct.lpfc_hba*, %struct.lpfc_scsi_buf*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
