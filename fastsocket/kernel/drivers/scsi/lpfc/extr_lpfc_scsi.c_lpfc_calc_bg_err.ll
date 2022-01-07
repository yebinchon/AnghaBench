; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_calc_bg_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_calc_bg_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32 }
%struct.lpfc_scsi_buf = type { i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32 }
%struct.scsi_dif_tuple = type { i64, i32, i64 }

@BGS_GUARD_ERR_MASK = common dso_local global i32 0, align 4
@SCSI_PROT_READ_STRIP = common dso_local global i32 0, align 4
@SCSI_PROT_WRITE_INSERT = common dso_local global i32 0, align 4
@SCSI_PROT_NORMAL = common dso_local global i32 0, align 4
@BGS_REFTAG_ERR_MASK = common dso_local global i32 0, align 4
@BGS_APPTAG_ERR_MASK = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@LOG_BG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"9069 BLKGRD: LBA %lx grd_tag error %x != %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"9066 BLKGRD: LBA %lx ref_tag error %x != %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"9041 BLKGRD: LBA %lx app_tag error %x != %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_calc_bg_err(%struct.lpfc_hba* %0, %struct.lpfc_scsi_buf* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_scsi_buf*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.scsi_dif_tuple*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_scsi_buf* %1, %struct.lpfc_scsi_buf** %4, align 8
  %26 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %4, align 8
  %27 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %26, i32 0, i32 1
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %27, align 8
  store %struct.scsi_cmnd* %28, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_dif_tuple* null, %struct.scsi_dif_tuple** %8, align 8
  store i32* null, i32** %9, align 8
  %29 = load i32, i32* @BGS_GUARD_ERR_MASK, align 4
  store i32 %29, i32* %18, align 4
  store i64 0, i64* %24, align 8
  store i64 0, i64* %10, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %31 = call i32 @scsi_get_prot_op(%struct.scsi_cmnd* %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* @SCSI_PROT_READ_STRIP, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @SCSI_PROT_WRITE_INSERT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* @SCSI_PROT_NORMAL, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35, %2
  br label %230

44:                                               ; preds = %39
  store i32 1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %46 = call %struct.scatterlist* @scsi_prot_sglist(%struct.scsi_cmnd* %45)
  store %struct.scatterlist* %46, %struct.scatterlist** %5, align 8
  %47 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %17, align 4
  %50 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %51 = icmp ne %struct.scatterlist* %50, null
  br i1 %51, label %52, label %229

52:                                               ; preds = %44
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %229

55:                                               ; preds = %52
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %57 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %56)
  store %struct.scatterlist* %57, %struct.scatterlist** %6, align 8
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %59 = call i32 @lpfc_cmd_blksize(%struct.scsi_cmnd* %58)
  store i32 %59, i32* %25, align 4
  %60 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %61 = call i64 @sg_virt(%struct.scatterlist* %60)
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %9, align 8
  %63 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %64 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %20, align 4
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %25, align 4
  %68 = sub i32 %67, 1
  %69 = and i32 %66, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %55
  store i32 1, i32* %23, align 4
  br label %72

72:                                               ; preds = %71, %55
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @scsi_host_get_guard(i32 %77)
  store i64 %78, i64* %11, align 8
  %79 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %80 = call i64 @sg_virt(%struct.scatterlist* %79)
  %81 = inttoptr i64 %80 to %struct.scsi_dif_tuple*
  store %struct.scsi_dif_tuple* %81, %struct.scsi_dif_tuple** %8, align 8
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %83 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %82)
  store i64 %83, i64* %14, align 8
  %84 = load %struct.scsi_dif_tuple*, %struct.scsi_dif_tuple** %8, align 8
  %85 = getelementptr inbounds %struct.scsi_dif_tuple, %struct.scsi_dif_tuple* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %12, align 8
  %87 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %88 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %19, align 4
  br label %90

90:                                               ; preds = %225, %72
  %91 = load %struct.scsi_dif_tuple*, %struct.scsi_dif_tuple** %8, align 8
  %92 = icmp ne %struct.scsi_dif_tuple* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  br label %96

96:                                               ; preds = %93, %90
  %97 = phi i1 [ false, %90 ], [ %95, %93 ]
  br i1 %97, label %98, label %228

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %211, %98
  %100 = load i32, i32* %19, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %212

102:                                              ; preds = %99
  %103 = load %struct.scsi_dif_tuple*, %struct.scsi_dif_tuple** %8, align 8
  %104 = getelementptr inbounds %struct.scsi_dif_tuple, %struct.scsi_dif_tuple* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load %struct.scsi_dif_tuple*, %struct.scsi_dif_tuple** %8, align 8
  %109 = getelementptr inbounds %struct.scsi_dif_tuple, %struct.scsi_dif_tuple* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 65535
  br i1 %111, label %112, label %115

112:                                              ; preds = %107, %102
  %113 = load i64, i64* %14, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %14, align 8
  br label %168

115:                                              ; preds = %107
  %116 = load i32, i32* %23, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %140

118:                                              ; preds = %115
  %119 = load %struct.scsi_dif_tuple*, %struct.scsi_dif_tuple** %8, align 8
  %120 = getelementptr inbounds %struct.scsi_dif_tuple, %struct.scsi_dif_tuple* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %10, align 8
  %122 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %123 = call i64 @lpfc_cmd_guard_csum(%struct.scsi_cmnd* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load i32*, i32** %9, align 8
  %127 = load i32, i32* %25, align 4
  %128 = call i64 @lpfc_bg_csum(i32* %126, i32 %127)
  store i64 %128, i64* %24, align 8
  br label %133

129:                                              ; preds = %118
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %25, align 4
  %132 = call i64 @lpfc_bg_crc(i32* %130, i32 %131)
  store i64 %132, i64* %24, align 8
  br label %133

133:                                              ; preds = %129, %125
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* %24, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32, i32* @BGS_GUARD_ERR_MASK, align 4
  store i32 %138, i32* %18, align 4
  br label %230

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139, %115
  %141 = load %struct.scsi_dif_tuple*, %struct.scsi_dif_tuple** %8, align 8
  %142 = getelementptr inbounds %struct.scsi_dif_tuple, %struct.scsi_dif_tuple* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @be32_to_cpu(i32 %143)
  store i64 %144, i64* %15, align 8
  %145 = load i32, i32* %21, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %140
  %148 = load i64, i64* %15, align 8
  %149 = load i64, i64* %14, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* @BGS_REFTAG_ERR_MASK, align 4
  store i32 %152, i32* %18, align 4
  br label %230

153:                                              ; preds = %147, %140
  %154 = load i64, i64* %14, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %14, align 8
  %156 = load %struct.scsi_dif_tuple*, %struct.scsi_dif_tuple** %8, align 8
  %157 = getelementptr inbounds %struct.scsi_dif_tuple, %struct.scsi_dif_tuple* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %13, align 8
  %159 = load i32, i32* %22, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %153
  %162 = load i64, i64* %13, align 8
  %163 = load i64, i64* %12, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i32, i32* @BGS_APPTAG_ERR_MASK, align 4
  store i32 %166, i32* %18, align 4
  br label %230

167:                                              ; preds = %161, %153
  br label %168

168:                                              ; preds = %167, %112
  %169 = load i32, i32* %19, align 4
  %170 = sext i32 %169 to i64
  %171 = sub i64 %170, 24
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %19, align 4
  %173 = load i32, i32* %19, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  store i32 0, i32* %19, align 4
  br label %176

176:                                              ; preds = %175, %168
  %177 = load %struct.scsi_dif_tuple*, %struct.scsi_dif_tuple** %8, align 8
  %178 = getelementptr inbounds %struct.scsi_dif_tuple, %struct.scsi_dif_tuple* %177, i32 1
  store %struct.scsi_dif_tuple* %178, %struct.scsi_dif_tuple** %8, align 8
  %179 = load i32, i32* %25, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = zext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32* %182, i32** %9, align 8
  %183 = load i32, i32* %25, align 4
  %184 = load i32, i32* %20, align 4
  %185 = sub i32 %184, %183
  store i32 %185, i32* %20, align 4
  %186 = load i32, i32* %23, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %211

188:                                              ; preds = %176
  %189 = load i32, i32* %20, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %211

191:                                              ; preds = %188
  store i32 0, i32* %23, align 4
  %192 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %193 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %192)
  store %struct.scatterlist* %193, %struct.scatterlist** %6, align 8
  %194 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %195 = icmp ne %struct.scatterlist* %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %191
  br label %230

197:                                              ; preds = %191
  %198 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %199 = call i64 @sg_virt(%struct.scatterlist* %198)
  %200 = inttoptr i64 %199 to i32*
  store i32* %200, i32** %9, align 8
  %201 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %202 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %20, align 4
  %204 = load i32, i32* %20, align 4
  %205 = load i32, i32* %25, align 4
  %206 = sub i32 %205, 1
  %207 = and i32 %204, %206
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %197
  store i32 1, i32* %23, align 4
  br label %210

210:                                              ; preds = %209, %197
  br label %211

211:                                              ; preds = %210, %188, %176
  br label %99

212:                                              ; preds = %99
  %213 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %214 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %213)
  store %struct.scatterlist* %214, %struct.scatterlist** %5, align 8
  %215 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %216 = icmp ne %struct.scatterlist* %215, null
  br i1 %216, label %217, label %224

217:                                              ; preds = %212
  %218 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %219 = call i64 @sg_virt(%struct.scatterlist* %218)
  %220 = inttoptr i64 %219 to %struct.scsi_dif_tuple*
  store %struct.scsi_dif_tuple* %220, %struct.scsi_dif_tuple** %8, align 8
  %221 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %222 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %19, align 4
  br label %225

224:                                              ; preds = %212
  store %struct.scsi_dif_tuple* null, %struct.scsi_dif_tuple** %8, align 8
  br label %225

225:                                              ; preds = %224, %217
  %226 = load i32, i32* %17, align 4
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* %17, align 4
  br label %90

228:                                              ; preds = %96
  br label %229

229:                                              ; preds = %228, %52, %44
  br label %230

230:                                              ; preds = %229, %196, %165, %151, %137, %43
  %231 = load i32, i32* %18, align 4
  %232 = load i32, i32* @BGS_GUARD_ERR_MASK, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %262

234:                                              ; preds = %230
  %235 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %236 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %239 = call i32 @scsi_build_sense_buffer(i32 1, i32 %237, i32 %238, i32 16, i32 1)
  %240 = load i32, i32* @DRIVER_SENSE, align 4
  %241 = shl i32 %240, 24
  %242 = load i32, i32* @DID_ABORT, align 4
  %243 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %244 = call i32 @ScsiResult(i32 %242, i32 %243)
  %245 = or i32 %241, %244
  %246 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %247 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  %248 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %249 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4
  %252 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %253 = load i32, i32* @KERN_WARNING, align 4
  %254 = load i32, i32* @LOG_FCP, align 4
  %255 = load i32, i32* @LOG_BG, align 4
  %256 = or i32 %254, %255
  %257 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %258 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %257)
  %259 = load i64, i64* %24, align 8
  %260 = load i64, i64* %10, align 8
  %261 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %252, i32 %253, i32 %256, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %258, i64 %259, i64 %260)
  br label %328

262:                                              ; preds = %230
  %263 = load i32, i32* %18, align 4
  %264 = load i32, i32* @BGS_REFTAG_ERR_MASK, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %294

266:                                              ; preds = %262
  %267 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %268 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %271 = call i32 @scsi_build_sense_buffer(i32 1, i32 %269, i32 %270, i32 16, i32 3)
  %272 = load i32, i32* @DRIVER_SENSE, align 4
  %273 = shl i32 %272, 24
  %274 = load i32, i32* @DID_ABORT, align 4
  %275 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %276 = call i32 @ScsiResult(i32 %274, i32 %275)
  %277 = or i32 %273, %276
  %278 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %279 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %278, i32 0, i32 0
  store i32 %277, i32* %279, align 8
  %280 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %281 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %281, align 4
  %284 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %285 = load i32, i32* @KERN_WARNING, align 4
  %286 = load i32, i32* @LOG_FCP, align 4
  %287 = load i32, i32* @LOG_BG, align 4
  %288 = or i32 %286, %287
  %289 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %290 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %289)
  %291 = load i64, i64* %15, align 8
  %292 = load i64, i64* %14, align 8
  %293 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %284, i32 %285, i32 %288, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %290, i64 %291, i64 %292)
  br label %327

294:                                              ; preds = %262
  %295 = load i32, i32* %18, align 4
  %296 = load i32, i32* @BGS_APPTAG_ERR_MASK, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %326

298:                                              ; preds = %294
  %299 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %300 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %303 = call i32 @scsi_build_sense_buffer(i32 1, i32 %301, i32 %302, i32 16, i32 2)
  %304 = load i32, i32* @DRIVER_SENSE, align 4
  %305 = shl i32 %304, 24
  %306 = load i32, i32* @DID_ABORT, align 4
  %307 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %308 = call i32 @ScsiResult(i32 %306, i32 %307)
  %309 = or i32 %305, %308
  %310 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %311 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %310, i32 0, i32 0
  store i32 %309, i32* %311, align 8
  %312 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %313 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %313, align 4
  %316 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %317 = load i32, i32* @KERN_WARNING, align 4
  %318 = load i32, i32* @LOG_FCP, align 4
  %319 = load i32, i32* @LOG_BG, align 4
  %320 = or i32 %318, %319
  %321 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %322 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %321)
  %323 = load i64, i64* %13, align 8
  %324 = load i64, i64* %12, align 8
  %325 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %316, i32 %317, i32 %320, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %322, i64 %323, i64 %324)
  br label %326

326:                                              ; preds = %298, %294
  br label %327

327:                                              ; preds = %326, %266
  br label %328

328:                                              ; preds = %327, %234
  ret void
}

declare dso_local i32 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local %struct.scatterlist* @scsi_prot_sglist(%struct.scsi_cmnd*) #1

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_cmd_blksize(%struct.scsi_cmnd*) #1

declare dso_local i64 @sg_virt(%struct.scatterlist*) #1

declare dso_local i64 @scsi_host_get_guard(i32) #1

declare dso_local i64 @scsi_get_lba(%struct.scsi_cmnd*) #1

declare dso_local i64 @lpfc_cmd_guard_csum(%struct.scsi_cmnd*) #1

declare dso_local i64 @lpfc_bg_csum(i32*, i32) #1

declare dso_local i64 @lpfc_bg_crc(i32*, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @scsi_build_sense_buffer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ScsiResult(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
