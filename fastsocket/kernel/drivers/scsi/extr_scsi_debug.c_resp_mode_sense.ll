; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_mode_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_mode_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64 }
%struct.sdebug_dev_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SDEBUG_MAX_MSENSE_SZ = common dso_local global i32 0, align 4
@MODE_SENSE = common dso_local global i8 0, align 1
@scsi_debug_ptype = common dso_local global i64 0, align 8
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SAVING_PARAMS_UNSUP = common dso_local global i32 0, align 4
@check_condition_result = common dso_local global i32 0, align 4
@sdebug_capacity = common dso_local global i32 0, align 4
@scsi_debug_sector_size = common dso_local global i32 0, align 4
@INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32, %struct.sdebug_dev_info*)* @resp_mode_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_mode_sense(%struct.scsi_cmnd* %0, i32 %1, %struct.sdebug_dev_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdebug_dev_info*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sdebug_dev_info* %2, %struct.sdebug_dev_info** %7, align 8
  %28 = load i32, i32* @SDEBUG_MAX_MSENSE_SZ, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %23, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %24, align 8
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %25, align 8
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %37 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %38 = call i32 @check_readiness(%struct.scsi_cmnd* %36, i32 1, %struct.sdebug_dev_info* %37)
  store i32 %38, i32* %20, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* %20, align 4
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %563

42:                                               ; preds = %3
  %43 = load i8*, i8** %25, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 8
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %8, align 1
  %53 = load i8*, i8** %25, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 192
  %58 = ashr i32 %57, 6
  store i32 %58, i32* %10, align 4
  %59 = load i8*, i8** %25, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 63
  store i32 %63, i32* %11, align 4
  %64 = load i8*, i8** %25, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  store i32 %67, i32* %12, align 4
  %68 = load i8, i8* @MODE_SENSE, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8*, i8** %25, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %69, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %42
  br label %89

79:                                               ; preds = %42
  %80 = load i8*, i8** %25, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 16
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  br label %89

89:                                               ; preds = %79, %78
  %90 = phi i32 [ 0, %78 ], [ %88, %79 ]
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %9, align 1
  %92 = load i64, i64* @scsi_debug_ptype, align 8
  %93 = icmp eq i64 0, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load i8, i8* %8, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 0, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i8, i8* %9, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 16, i32 8
  store i32 %103, i32* %13, align 4
  br label %105

104:                                              ; preds = %94, %89
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %104, %98
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i8*, i8** %25, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 4
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  br label %124

113:                                              ; preds = %105
  %114 = load i8*, i8** %25, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 7
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = shl i32 %117, 8
  %119 = load i8*, i8** %25, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 8
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = or i32 %118, %122
  br label %124

124:                                              ; preds = %113, %108
  %125 = phi i32 [ %112, %108 ], [ %123, %113 ]
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* @SDEBUG_MAX_MSENSE_SZ, align 4
  %127 = call i32 @memset(i8* %31, i32 0, i32 %126)
  %128 = load i32, i32* %10, align 4
  %129 = icmp eq i32 3, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %132 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %133 = load i32, i32* @SAVING_PARAMS_UNSUP, align 4
  %134 = call i32 @mk_sense_buffer(%struct.sdebug_dev_info* %131, i32 %132, i32 %133, i32 0)
  %135 = load i32, i32* @check_condition_result, align 4
  store i32 %135, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %563

136:                                              ; preds = %124
  %137 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %138 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  %145 = mul nsw i32 %144, 2000
  %146 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %147 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 %148, 1000
  %150 = add nsw i32 %145, %149
  %151 = sub nsw i32 %150, 3
  store i32 %151, i32* %21, align 4
  %152 = load i64, i64* @scsi_debug_ptype, align 8
  %153 = icmp eq i64 0, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %136
  %155 = load i32, i32* %6, align 4
  %156 = call i64 @DEV_READONLY(i32 %155)
  %157 = icmp ne i64 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 128, i32 0
  %160 = or i32 %159, 16
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %14, align 1
  br label %163

162:                                              ; preds = %136
  store i8 0, i8* %14, align 1
  br label %163

163:                                              ; preds = %162, %154
  %164 = load i32, i32* %17, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i8, i8* %14, align 1
  %168 = getelementptr inbounds i8, i8* %31, i64 2
  store i8 %167, i8* %168, align 2
  %169 = load i32, i32* %13, align 4
  %170 = trunc i32 %169 to i8
  %171 = getelementptr inbounds i8, i8* %31, i64 3
  store i8 %170, i8* %171, align 1
  store i32 4, i32* %18, align 4
  br label %183

172:                                              ; preds = %163
  %173 = load i8, i8* %14, align 1
  %174 = getelementptr inbounds i8, i8* %31, i64 3
  store i8 %173, i8* %174, align 1
  %175 = load i32, i32* %13, align 4
  %176 = icmp eq i32 16, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = getelementptr inbounds i8, i8* %31, i64 4
  store i8 1, i8* %178, align 4
  br label %179

179:                                              ; preds = %177, %172
  %180 = load i32, i32* %13, align 4
  %181 = trunc i32 %180 to i8
  %182 = getelementptr inbounds i8, i8* %31, i64 7
  store i8 %181, i8* %182, align 1
  store i32 8, i32* %18, align 4
  br label %183

183:                                              ; preds = %179, %166
  %184 = load i32, i32* %18, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %31, i64 %185
  store i8* %186, i8** %22, align 8
  %187 = load i32, i32* %13, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %183
  %190 = load i32, i32* @sdebug_capacity, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %189
  %193 = call i32 (...) @get_sdebug_capacity()
  store i32 %193, i32* @sdebug_capacity, align 4
  br label %194

194:                                              ; preds = %192, %189, %183
  %195 = load i32, i32* %13, align 4
  %196 = icmp eq i32 8, %195
  br i1 %196, label %197, label %251

197:                                              ; preds = %194
  %198 = load i32, i32* @sdebug_capacity, align 4
  %199 = icmp ugt i32 %198, -2
  br i1 %199, label %200, label %209

200:                                              ; preds = %197
  %201 = load i8*, i8** %22, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 0
  store i8 -1, i8* %202, align 1
  %203 = load i8*, i8** %22, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  store i8 -1, i8* %204, align 1
  %205 = load i8*, i8** %22, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 2
  store i8 -1, i8* %206, align 1
  %207 = load i8*, i8** %22, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 3
  store i8 -1, i8* %208, align 1
  br label %233

209:                                              ; preds = %197
  %210 = load i32, i32* @sdebug_capacity, align 4
  %211 = ashr i32 %210, 24
  %212 = and i32 %211, 255
  %213 = trunc i32 %212 to i8
  %214 = load i8*, i8** %22, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 0
  store i8 %213, i8* %215, align 1
  %216 = load i32, i32* @sdebug_capacity, align 4
  %217 = ashr i32 %216, 16
  %218 = and i32 %217, 255
  %219 = trunc i32 %218 to i8
  %220 = load i8*, i8** %22, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 1
  store i8 %219, i8* %221, align 1
  %222 = load i32, i32* @sdebug_capacity, align 4
  %223 = ashr i32 %222, 8
  %224 = and i32 %223, 255
  %225 = trunc i32 %224 to i8
  %226 = load i8*, i8** %22, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 2
  store i8 %225, i8* %227, align 1
  %228 = load i32, i32* @sdebug_capacity, align 4
  %229 = and i32 %228, 255
  %230 = trunc i32 %229 to i8
  %231 = load i8*, i8** %22, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 3
  store i8 %230, i8* %232, align 1
  br label %233

233:                                              ; preds = %209, %200
  %234 = load i32, i32* @scsi_debug_sector_size, align 4
  %235 = ashr i32 %234, 8
  %236 = and i32 %235, 255
  %237 = trunc i32 %236 to i8
  %238 = load i8*, i8** %22, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 6
  store i8 %237, i8* %239, align 1
  %240 = load i32, i32* @scsi_debug_sector_size, align 4
  %241 = and i32 %240, 255
  %242 = trunc i32 %241 to i8
  %243 = load i8*, i8** %22, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 7
  store i8 %242, i8* %244, align 1
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* %18, align 4
  %247 = add nsw i32 %246, %245
  store i32 %247, i32* %18, align 4
  %248 = load i32, i32* %18, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %31, i64 %249
  store i8* %250, i8** %22, align 8
  br label %305

251:                                              ; preds = %194
  %252 = load i32, i32* %13, align 4
  %253 = icmp eq i32 16, %252
  br i1 %253, label %254, label %304

254:                                              ; preds = %251
  %255 = load i32, i32* @sdebug_capacity, align 4
  %256 = sext i32 %255 to i64
  store i64 %256, i64* %27, align 8
  store i32 0, i32* %15, align 4
  br label %257

257:                                              ; preds = %269, %254
  %258 = load i32, i32* %15, align 4
  %259 = icmp slt i32 %258, 8
  br i1 %259, label %260, label %274

260:                                              ; preds = %257
  %261 = load i64, i64* %27, align 8
  %262 = and i64 %261, 255
  %263 = trunc i64 %262 to i8
  %264 = load i8*, i8** %22, align 8
  %265 = load i32, i32* %15, align 4
  %266 = sub nsw i32 7, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %264, i64 %267
  store i8 %263, i8* %268, align 1
  br label %269

269:                                              ; preds = %260
  %270 = load i32, i32* %15, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %15, align 4
  %272 = load i64, i64* %27, align 8
  %273 = lshr i64 %272, 8
  store i64 %273, i64* %27, align 8
  br label %257

274:                                              ; preds = %257
  %275 = load i32, i32* @scsi_debug_sector_size, align 4
  %276 = ashr i32 %275, 24
  %277 = and i32 %276, 255
  %278 = trunc i32 %277 to i8
  %279 = load i8*, i8** %22, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 12
  store i8 %278, i8* %280, align 1
  %281 = load i32, i32* @scsi_debug_sector_size, align 4
  %282 = ashr i32 %281, 16
  %283 = and i32 %282, 255
  %284 = trunc i32 %283 to i8
  %285 = load i8*, i8** %22, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 13
  store i8 %284, i8* %286, align 1
  %287 = load i32, i32* @scsi_debug_sector_size, align 4
  %288 = ashr i32 %287, 8
  %289 = and i32 %288, 255
  %290 = trunc i32 %289 to i8
  %291 = load i8*, i8** %22, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 14
  store i8 %290, i8* %292, align 1
  %293 = load i32, i32* @scsi_debug_sector_size, align 4
  %294 = and i32 %293, 255
  %295 = trunc i32 %294 to i8
  %296 = load i8*, i8** %22, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 15
  store i8 %295, i8* %297, align 1
  %298 = load i32, i32* %13, align 4
  %299 = load i32, i32* %18, align 4
  %300 = add nsw i32 %299, %298
  store i32 %300, i32* %18, align 4
  %301 = load i32, i32* %18, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8, i8* %31, i64 %302
  store i8* %303, i8** %22, align 8
  br label %304

304:                                              ; preds = %274, %251
  br label %305

305:                                              ; preds = %304, %233
  %306 = load i32, i32* %12, align 4
  %307 = icmp sgt i32 %306, 0
  br i1 %307, label %308, label %320

308:                                              ; preds = %305
  %309 = load i32, i32* %12, align 4
  %310 = icmp slt i32 %309, 255
  br i1 %310, label %311, label %320

311:                                              ; preds = %308
  %312 = load i32, i32* %11, align 4
  %313 = icmp ne i32 25, %312
  br i1 %313, label %314, label %320

314:                                              ; preds = %311
  %315 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %316 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %317 = load i32, i32* @INVALID_FIELD_IN_CDB, align 4
  %318 = call i32 @mk_sense_buffer(%struct.sdebug_dev_info* %315, i32 %316, i32 %317, i32 0)
  %319 = load i32, i32* @check_condition_result, align 4
  store i32 %319, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %563

320:                                              ; preds = %311, %308, %305
  %321 = load i32, i32* %11, align 4
  switch i32 %321, label %531 [
    i32 1, label %322
    i32 2, label %330
    i32 3, label %338
    i32 8, label %346
    i32 10, label %354
    i32 25, label %362
    i32 28, label %426
    i32 63, label %434
  ]

322:                                              ; preds = %320
  %323 = load i8*, i8** %22, align 8
  %324 = load i32, i32* %10, align 4
  %325 = load i32, i32* %6, align 4
  %326 = call i32 @resp_err_recov_pg(i8* %323, i32 %324, i32 %325)
  store i32 %326, i32* %19, align 4
  %327 = load i32, i32* %19, align 4
  %328 = load i32, i32* %18, align 4
  %329 = add nsw i32 %328, %327
  store i32 %329, i32* %18, align 4
  br label %537

330:                                              ; preds = %320
  %331 = load i8*, i8** %22, align 8
  %332 = load i32, i32* %10, align 4
  %333 = load i32, i32* %6, align 4
  %334 = call i32 @resp_disconnect_pg(i8* %331, i32 %332, i32 %333)
  store i32 %334, i32* %19, align 4
  %335 = load i32, i32* %19, align 4
  %336 = load i32, i32* %18, align 4
  %337 = add nsw i32 %336, %335
  store i32 %337, i32* %18, align 4
  br label %537

338:                                              ; preds = %320
  %339 = load i8*, i8** %22, align 8
  %340 = load i32, i32* %10, align 4
  %341 = load i32, i32* %6, align 4
  %342 = call i32 @resp_format_pg(i8* %339, i32 %340, i32 %341)
  store i32 %342, i32* %19, align 4
  %343 = load i32, i32* %19, align 4
  %344 = load i32, i32* %18, align 4
  %345 = add nsw i32 %344, %343
  store i32 %345, i32* %18, align 4
  br label %537

346:                                              ; preds = %320
  %347 = load i8*, i8** %22, align 8
  %348 = load i32, i32* %10, align 4
  %349 = load i32, i32* %6, align 4
  %350 = call i32 @resp_caching_pg(i8* %347, i32 %348, i32 %349)
  store i32 %350, i32* %19, align 4
  %351 = load i32, i32* %19, align 4
  %352 = load i32, i32* %18, align 4
  %353 = add nsw i32 %352, %351
  store i32 %353, i32* %18, align 4
  br label %537

354:                                              ; preds = %320
  %355 = load i8*, i8** %22, align 8
  %356 = load i32, i32* %10, align 4
  %357 = load i32, i32* %6, align 4
  %358 = call i32 @resp_ctrl_m_pg(i8* %355, i32 %356, i32 %357)
  store i32 %358, i32* %19, align 4
  %359 = load i32, i32* %19, align 4
  %360 = load i32, i32* %18, align 4
  %361 = add nsw i32 %360, %359
  store i32 %361, i32* %18, align 4
  br label %537

362:                                              ; preds = %320
  %363 = load i32, i32* %12, align 4
  %364 = icmp sgt i32 %363, 2
  br i1 %364, label %365, label %374

365:                                              ; preds = %362
  %366 = load i32, i32* %12, align 4
  %367 = icmp slt i32 %366, 255
  br i1 %367, label %368, label %374

368:                                              ; preds = %365
  %369 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %370 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %371 = load i32, i32* @INVALID_FIELD_IN_CDB, align 4
  %372 = call i32 @mk_sense_buffer(%struct.sdebug_dev_info* %369, i32 %370, i32 %371, i32 0)
  %373 = load i32, i32* @check_condition_result, align 4
  store i32 %373, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %563

374:                                              ; preds = %365, %362
  store i32 0, i32* %19, align 4
  %375 = load i32, i32* %12, align 4
  %376 = icmp eq i32 0, %375
  br i1 %376, label %380, label %377

377:                                              ; preds = %374
  %378 = load i32, i32* %12, align 4
  %379 = icmp eq i32 255, %378
  br i1 %379, label %380, label %390

380:                                              ; preds = %377, %374
  %381 = load i8*, i8** %22, align 8
  %382 = load i32, i32* %19, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i8, i8* %381, i64 %383
  %385 = load i32, i32* %10, align 4
  %386 = load i32, i32* %6, align 4
  %387 = call i32 @resp_sas_sf_m_pg(i8* %384, i32 %385, i32 %386)
  %388 = load i32, i32* %19, align 4
  %389 = add nsw i32 %388, %387
  store i32 %389, i32* %19, align 4
  br label %390

390:                                              ; preds = %380, %377
  %391 = load i32, i32* %12, align 4
  %392 = icmp eq i32 1, %391
  br i1 %392, label %396, label %393

393:                                              ; preds = %390
  %394 = load i32, i32* %12, align 4
  %395 = icmp eq i32 255, %394
  br i1 %395, label %396, label %407

396:                                              ; preds = %393, %390
  %397 = load i8*, i8** %22, align 8
  %398 = load i32, i32* %19, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, i8* %397, i64 %399
  %401 = load i32, i32* %10, align 4
  %402 = load i32, i32* %6, align 4
  %403 = load i32, i32* %21, align 4
  %404 = call i32 @resp_sas_pcd_m_spg(i8* %400, i32 %401, i32 %402, i32 %403)
  %405 = load i32, i32* %19, align 4
  %406 = add nsw i32 %405, %404
  store i32 %406, i32* %19, align 4
  br label %407

407:                                              ; preds = %396, %393
  %408 = load i32, i32* %12, align 4
  %409 = icmp eq i32 2, %408
  br i1 %409, label %413, label %410

410:                                              ; preds = %407
  %411 = load i32, i32* %12, align 4
  %412 = icmp eq i32 255, %411
  br i1 %412, label %413, label %422

413:                                              ; preds = %410, %407
  %414 = load i8*, i8** %22, align 8
  %415 = load i32, i32* %19, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i8, i8* %414, i64 %416
  %418 = load i32, i32* %10, align 4
  %419 = call i32 @resp_sas_sha_m_spg(i8* %417, i32 %418)
  %420 = load i32, i32* %19, align 4
  %421 = add nsw i32 %420, %419
  store i32 %421, i32* %19, align 4
  br label %422

422:                                              ; preds = %413, %410
  %423 = load i32, i32* %19, align 4
  %424 = load i32, i32* %18, align 4
  %425 = add nsw i32 %424, %423
  store i32 %425, i32* %18, align 4
  br label %537

426:                                              ; preds = %320
  %427 = load i8*, i8** %22, align 8
  %428 = load i32, i32* %10, align 4
  %429 = load i32, i32* %6, align 4
  %430 = call i32 @resp_iec_m_pg(i8* %427, i32 %428, i32 %429)
  store i32 %430, i32* %19, align 4
  %431 = load i32, i32* %19, align 4
  %432 = load i32, i32* %18, align 4
  %433 = add nsw i32 %432, %431
  store i32 %433, i32* %18, align 4
  br label %537

434:                                              ; preds = %320
  %435 = load i32, i32* %12, align 4
  %436 = icmp eq i32 0, %435
  br i1 %436, label %440, label %437

437:                                              ; preds = %434
  %438 = load i32, i32* %12, align 4
  %439 = icmp eq i32 255, %438
  br i1 %439, label %440, label %521

440:                                              ; preds = %437, %434
  %441 = load i8*, i8** %22, align 8
  %442 = load i32, i32* %10, align 4
  %443 = load i32, i32* %6, align 4
  %444 = call i32 @resp_err_recov_pg(i8* %441, i32 %442, i32 %443)
  store i32 %444, i32* %19, align 4
  %445 = load i8*, i8** %22, align 8
  %446 = load i32, i32* %19, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i8, i8* %445, i64 %447
  %449 = load i32, i32* %10, align 4
  %450 = load i32, i32* %6, align 4
  %451 = call i32 @resp_disconnect_pg(i8* %448, i32 %449, i32 %450)
  %452 = load i32, i32* %19, align 4
  %453 = add nsw i32 %452, %451
  store i32 %453, i32* %19, align 4
  %454 = load i8*, i8** %22, align 8
  %455 = load i32, i32* %19, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i8, i8* %454, i64 %456
  %458 = load i32, i32* %10, align 4
  %459 = load i32, i32* %6, align 4
  %460 = call i32 @resp_format_pg(i8* %457, i32 %458, i32 %459)
  %461 = load i32, i32* %19, align 4
  %462 = add nsw i32 %461, %460
  store i32 %462, i32* %19, align 4
  %463 = load i8*, i8** %22, align 8
  %464 = load i32, i32* %19, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i8, i8* %463, i64 %465
  %467 = load i32, i32* %10, align 4
  %468 = load i32, i32* %6, align 4
  %469 = call i32 @resp_caching_pg(i8* %466, i32 %467, i32 %468)
  %470 = load i32, i32* %19, align 4
  %471 = add nsw i32 %470, %469
  store i32 %471, i32* %19, align 4
  %472 = load i8*, i8** %22, align 8
  %473 = load i32, i32* %19, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i8, i8* %472, i64 %474
  %476 = load i32, i32* %10, align 4
  %477 = load i32, i32* %6, align 4
  %478 = call i32 @resp_ctrl_m_pg(i8* %475, i32 %476, i32 %477)
  %479 = load i32, i32* %19, align 4
  %480 = add nsw i32 %479, %478
  store i32 %480, i32* %19, align 4
  %481 = load i8*, i8** %22, align 8
  %482 = load i32, i32* %19, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i8, i8* %481, i64 %483
  %485 = load i32, i32* %10, align 4
  %486 = load i32, i32* %6, align 4
  %487 = call i32 @resp_sas_sf_m_pg(i8* %484, i32 %485, i32 %486)
  %488 = load i32, i32* %19, align 4
  %489 = add nsw i32 %488, %487
  store i32 %489, i32* %19, align 4
  %490 = load i32, i32* %12, align 4
  %491 = icmp eq i32 255, %490
  br i1 %491, label %492, label %511

492:                                              ; preds = %440
  %493 = load i8*, i8** %22, align 8
  %494 = load i32, i32* %19, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i8, i8* %493, i64 %495
  %497 = load i32, i32* %10, align 4
  %498 = load i32, i32* %6, align 4
  %499 = load i32, i32* %21, align 4
  %500 = call i32 @resp_sas_pcd_m_spg(i8* %496, i32 %497, i32 %498, i32 %499)
  %501 = load i32, i32* %19, align 4
  %502 = add nsw i32 %501, %500
  store i32 %502, i32* %19, align 4
  %503 = load i8*, i8** %22, align 8
  %504 = load i32, i32* %19, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i8, i8* %503, i64 %505
  %507 = load i32, i32* %10, align 4
  %508 = call i32 @resp_sas_sha_m_spg(i8* %506, i32 %507)
  %509 = load i32, i32* %19, align 4
  %510 = add nsw i32 %509, %508
  store i32 %510, i32* %19, align 4
  br label %511

511:                                              ; preds = %492, %440
  %512 = load i8*, i8** %22, align 8
  %513 = load i32, i32* %19, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i8, i8* %512, i64 %514
  %516 = load i32, i32* %10, align 4
  %517 = load i32, i32* %6, align 4
  %518 = call i32 @resp_iec_m_pg(i8* %515, i32 %516, i32 %517)
  %519 = load i32, i32* %19, align 4
  %520 = add nsw i32 %519, %518
  store i32 %520, i32* %19, align 4
  br label %527

521:                                              ; preds = %437
  %522 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %523 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %524 = load i32, i32* @INVALID_FIELD_IN_CDB, align 4
  %525 = call i32 @mk_sense_buffer(%struct.sdebug_dev_info* %522, i32 %523, i32 %524, i32 0)
  %526 = load i32, i32* @check_condition_result, align 4
  store i32 %526, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %563

527:                                              ; preds = %511
  %528 = load i32, i32* %19, align 4
  %529 = load i32, i32* %18, align 4
  %530 = add nsw i32 %529, %528
  store i32 %530, i32* %18, align 4
  br label %537

531:                                              ; preds = %320
  %532 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %7, align 8
  %533 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %534 = load i32, i32* @INVALID_FIELD_IN_CDB, align 4
  %535 = call i32 @mk_sense_buffer(%struct.sdebug_dev_info* %532, i32 %533, i32 %534, i32 0)
  %536 = load i32, i32* @check_condition_result, align 4
  store i32 %536, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %563

537:                                              ; preds = %527, %426, %422, %354, %346, %338, %330, %322
  %538 = load i32, i32* %17, align 4
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %545

540:                                              ; preds = %537
  %541 = load i32, i32* %18, align 4
  %542 = sub nsw i32 %541, 1
  %543 = trunc i32 %542 to i8
  %544 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 %543, i8* %544, align 16
  br label %557

545:                                              ; preds = %537
  %546 = load i32, i32* %18, align 4
  %547 = sub nsw i32 %546, 2
  %548 = ashr i32 %547, 8
  %549 = and i32 %548, 255
  %550 = trunc i32 %549 to i8
  %551 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 %550, i8* %551, align 16
  %552 = load i32, i32* %18, align 4
  %553 = sub nsw i32 %552, 2
  %554 = and i32 %553, 255
  %555 = trunc i32 %554 to i8
  %556 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 %555, i8* %556, align 1
  br label %557

557:                                              ; preds = %545, %540
  %558 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %559 = load i32, i32* %16, align 4
  %560 = load i32, i32* %18, align 4
  %561 = call i32 @min(i32 %559, i32 %560)
  %562 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %558, i8* %31, i32 %561)
  store i32 %562, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %563

563:                                              ; preds = %557, %531, %521, %368, %314, %130, %40
  %564 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %564)
  %565 = load i32, i32* %4, align 4
  ret i32 %565
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @check_readiness(%struct.scsi_cmnd*, i32, %struct.sdebug_dev_info*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @mk_sense_buffer(%struct.sdebug_dev_info*, i32, i32, i32) #2

declare dso_local i64 @DEV_READONLY(i32) #2

declare dso_local i32 @get_sdebug_capacity(...) #2

declare dso_local i32 @resp_err_recov_pg(i8*, i32, i32) #2

declare dso_local i32 @resp_disconnect_pg(i8*, i32, i32) #2

declare dso_local i32 @resp_format_pg(i8*, i32, i32) #2

declare dso_local i32 @resp_caching_pg(i8*, i32, i32) #2

declare dso_local i32 @resp_ctrl_m_pg(i8*, i32, i32) #2

declare dso_local i32 @resp_sas_sf_m_pg(i8*, i32, i32) #2

declare dso_local i32 @resp_sas_pcd_m_spg(i8*, i32, i32, i32) #2

declare dso_local i32 @resp_sas_sha_m_spg(i8*, i32) #2

declare dso_local i32 @resp_iec_m_pg(i8*, i32, i32) #2

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i8*, i32) #2

declare dso_local i32 @min(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
