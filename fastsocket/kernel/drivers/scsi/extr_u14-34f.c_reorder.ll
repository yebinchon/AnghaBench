; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_reorder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_reorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64, i32, i32, i32, i32 }
%struct.mscp = type { i64, %struct.scsi_cmnd* }
%struct.TYPE_2__ = type { %struct.mscp* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@reorder.flushcount = internal global i32 0, align 4
@reorder.batchcount = internal global i32 0, align 4
@reorder.sortcount = internal global i32 0, align 4
@reorder.readycount = internal global i32 0, align 4
@reorder.ovlcount = internal global i32 0, align 4
@reorder.inputcount = internal global i32 0, align 4
@reorder.readysorted = internal global i32 0, align 4
@reorder.revcount = internal global i32 0, align 4
@reorder.seeksorted = internal global i64 0, align 8
@reorder.seeknosort = internal global i64 0, align 8
@link_statistics = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"fc %d bc %d ic %d oc %d rc %d rs %d sc %d re %d av %ldK as %ldK.\0A\00", align 1
@DTD_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i32*, i32)* @reorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reorder(i32 %0, i64 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.scsi_cmnd*, align 8
  %13 = alloca %struct.mscp*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %20, align 4
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %21, align 8
  %39 = alloca i64, i64 %37, align 16
  store i64 %37, i64* %22, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i64, i64 %41, align 16
  store i64 %41, i64* %23, align 8
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i64, i64 %44, align 16
  store i64 %44, i64* %24, align 8
  store i64 0, i64* %25, align 8
  %46 = load i64, i64* @ULONG_MAX, align 8
  store i64 %46, i64* %26, align 8
  store i64 0, i64* %27, align 8
  store i64 0, i64* %28, align 8
  store i64 0, i64* %29, align 8
  %47 = load i32, i32* @link_statistics, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %5
  %50 = load i32, i32* @reorder.flushcount, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* @reorder.flushcount, align 4
  %52 = load i32, i32* @link_statistics, align 4
  %53 = urem i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @reorder.flushcount, align 4
  %57 = load i32, i32* @reorder.batchcount, align 4
  %58 = load i32, i32* @reorder.inputcount, align 4
  %59 = load i32, i32* @reorder.ovlcount, align 4
  %60 = load i32, i32* @reorder.readycount, align 4
  %61 = load i32, i32* @reorder.readysorted, align 4
  %62 = load i32, i32* @reorder.sortcount, align 4
  %63 = load i32, i32* @reorder.revcount, align 4
  %64 = load i64, i64* @reorder.seeknosort, align 8
  %65 = load i32, i32* @reorder.readycount, align 4
  %66 = add i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = udiv i64 %64, %67
  %69 = load i64, i64* @reorder.seeksorted, align 8
  %70 = load i32, i32* @reorder.readycount, align 4
  %71 = add i32 %70, 1
  %72 = zext i32 %71 to i64
  %73 = udiv i64 %69, %72
  %74 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i64 %68, i64 %73)
  br label %75

75:                                               ; preds = %55, %49, %5
  %76 = load i32, i32* %11, align 4
  %77 = icmp ule i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %6, align 4
  store i32 1, i32* %30, align 4
  br label %462

80:                                               ; preds = %75
  store i32 0, i32* %15, align 4
  br label %81

81:                                               ; preds = %217, %80
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %220

85:                                               ; preds = %81
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %15, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call %struct.TYPE_2__* @HD(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load %struct.mscp*, %struct.mscp** %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.mscp, %struct.mscp* %94, i64 %96
  store %struct.mscp* %97, %struct.mscp** %13, align 8
  %98 = load %struct.mscp*, %struct.mscp** %13, align 8
  %99 = getelementptr inbounds %struct.mscp, %struct.mscp* %98, i32 0, i32 1
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %99, align 8
  store %struct.scsi_cmnd* %100, %struct.scsi_cmnd** %12, align 8
  %101 = load %struct.mscp*, %struct.mscp** %13, align 8
  %102 = getelementptr inbounds %struct.mscp, %struct.mscp* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DTD_IN, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %108, label %106

106:                                              ; preds = %85
  %107 = load i32, i32* @FALSE, align 4
  store i32 %107, i32* %19, align 4
  br label %108

108:                                              ; preds = %106, %85
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %110 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @blk_rq_pos(i32 %111)
  %113 = load i64, i64* %26, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %117 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @blk_rq_pos(i32 %118)
  store i64 %119, i64* %26, align 8
  br label %120

120:                                              ; preds = %115, %108
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %122 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @blk_rq_pos(i32 %123)
  %125 = load i64, i64* %25, align 8
  %126 = icmp ugt i64 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %129 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @blk_rq_pos(i32 %130)
  store i64 %131, i64* %25, align 8
  br label %132

132:                                              ; preds = %127, %120
  %133 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %134 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @blk_rq_pos(i32 %135)
  %137 = load i32, i32* %15, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %39, i64 %138
  store i64 %136, i64* %139, align 8
  %140 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %141 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @blk_rq_sectors(i32 %142)
  %144 = load i64, i64* %29, align 8
  %145 = add i64 %144, %143
  store i64 %145, i64* %29, align 8
  %146 = load i32, i32* %15, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %132
  br label %217

149:                                              ; preds = %132
  %150 = load i32, i32* %15, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %39, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sub i32 %154, 1
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %39, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = icmp ult i64 %153, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %149
  %161 = load i32, i32* @FALSE, align 4
  store i32 %161, i32* %17, align 4
  br label %162

162:                                              ; preds = %160, %149
  %163 = load i32, i32* %15, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %39, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* %15, align 4
  %168 = sub i32 %167, 1
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %39, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = icmp ugt i64 %166, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %162
  %174 = load i32, i32* @FALSE, align 4
  store i32 %174, i32* %18, align 4
  br label %175

175:                                              ; preds = %173, %162
  %176 = load i32, i32* @link_statistics, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %216

178:                                              ; preds = %175
  %179 = load i32, i32* %15, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %39, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sub i32 %183, 1
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %39, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = icmp ugt i64 %182, %187
  br i1 %188, label %189, label %202

189:                                              ; preds = %178
  %190 = load i32, i32* %15, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %39, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* %15, align 4
  %195 = sub i32 %194, 1
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %39, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = sub i64 %193, %198
  %200 = load i64, i64* %27, align 8
  %201 = add i64 %200, %199
  store i64 %201, i64* %27, align 8
  br label %215

202:                                              ; preds = %178
  %203 = load i32, i32* %15, align 4
  %204 = sub i32 %203, 1
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %39, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* %15, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %39, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = sub i64 %207, %211
  %213 = load i64, i64* %27, align 8
  %214 = add i64 %213, %212
  store i64 %214, i64* %27, align 8
  br label %215

215:                                              ; preds = %202, %189
  br label %216

216:                                              ; preds = %215, %175
  br label %217

217:                                              ; preds = %216, %148
  %218 = load i32, i32* %15, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %15, align 4
  br label %81

220:                                              ; preds = %81
  %221 = load i32, i32* @link_statistics, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %243

223:                                              ; preds = %220
  %224 = load i64, i64* %8, align 8
  %225 = getelementptr inbounds i64, i64* %39, i64 0
  %226 = load i64, i64* %225, align 16
  %227 = icmp ugt i64 %224, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %223
  %229 = load i64, i64* %8, align 8
  %230 = getelementptr inbounds i64, i64* %39, i64 0
  %231 = load i64, i64* %230, align 16
  %232 = sub i64 %229, %231
  %233 = load i64, i64* %27, align 8
  %234 = add i64 %233, %232
  store i64 %234, i64* %27, align 8
  br label %242

235:                                              ; preds = %223
  %236 = getelementptr inbounds i64, i64* %39, i64 0
  %237 = load i64, i64* %236, align 16
  %238 = load i64, i64* %8, align 8
  %239 = sub i64 %237, %238
  %240 = load i64, i64* %27, align 8
  %241 = add i64 %240, %239
  store i64 %241, i64* %27, align 8
  br label %242

242:                                              ; preds = %235, %228
  br label %243

243:                                              ; preds = %242, %220
  %244 = load i64, i64* %8, align 8
  %245 = load i64, i64* %25, align 8
  %246 = load i64, i64* %26, align 8
  %247 = add i64 %245, %246
  %248 = udiv i64 %247, 2
  %249 = icmp ugt i64 %244, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %243
  %251 = load i32, i32* @TRUE, align 4
  store i32 %251, i32* %16, align 4
  br label %252

252:                                              ; preds = %250, %243
  %253 = load i64, i64* %29, align 8
  %254 = load i64, i64* %25, align 8
  %255 = load i64, i64* %26, align 8
  %256 = sub i64 %254, %255
  %257 = udiv i64 %256, 2
  %258 = icmp ugt i64 %253, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %252
  %260 = load i32, i32* @FALSE, align 4
  store i32 %260, i32* %16, align 4
  br label %261

261:                                              ; preds = %259, %252
  %262 = load i32, i32* %16, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i32, i32* %18, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %278, label %267

267:                                              ; preds = %264, %261
  %268 = load i32, i32* %16, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %267
  %271 = load i32, i32* %17, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %278, label %273

273:                                              ; preds = %270, %267
  %274 = load i32*, i32** %10, align 8
  %275 = load i32, i32* %11, align 4
  %276 = load i32, i32* %16, align 4
  %277 = call i32 @sort(i64* %39, i32* %274, i32 %275, i32 %276)
  br label %278

278:                                              ; preds = %273, %270, %264
  %279 = load i32, i32* %19, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %375, label %281

281:                                              ; preds = %278
  store i32 0, i32* %15, align 4
  br label %282

282:                                              ; preds = %371, %281
  %283 = load i32, i32* %15, align 4
  %284 = load i32, i32* %11, align 4
  %285 = icmp ult i32 %283, %284
  br i1 %285, label %286, label %374

286:                                              ; preds = %282
  %287 = load i32*, i32** %10, align 8
  %288 = load i32, i32* %15, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  store i32 %291, i32* %14, align 4
  %292 = load i32, i32* %7, align 4
  %293 = call %struct.TYPE_2__* @HD(i32 %292)
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 0
  %295 = load %struct.mscp*, %struct.mscp** %294, align 8
  %296 = load i32, i32* %14, align 4
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds %struct.mscp, %struct.mscp* %295, i64 %297
  store %struct.mscp* %298, %struct.mscp** %13, align 8
  %299 = load %struct.mscp*, %struct.mscp** %13, align 8
  %300 = getelementptr inbounds %struct.mscp, %struct.mscp* %299, i32 0, i32 1
  %301 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %300, align 8
  store %struct.scsi_cmnd* %301, %struct.scsi_cmnd** %12, align 8
  %302 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %303 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = call i64 @blk_rq_sectors(i32 %304)
  %306 = load i32, i32* %15, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds i64, i64* %45, i64 %307
  store i64 %305, i64* %308, align 8
  %309 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %310 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i32, i32* %15, align 4
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds i64, i64* %42, i64 %313
  store i64 %311, i64* %314, align 8
  %315 = load i32, i32* %15, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %286
  br label %371

318:                                              ; preds = %286
  %319 = load i32, i32* %15, align 4
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds i64, i64* %39, i64 %320
  %322 = load i64, i64* %321, align 8
  %323 = load i32, i32* %15, align 4
  %324 = sub i32 %323, 1
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds i64, i64* %39, i64 %325
  %327 = load i64, i64* %326, align 8
  %328 = icmp eq i64 %322, %327
  br i1 %328, label %368, label %329

329:                                              ; preds = %318
  %330 = load i32, i32* %16, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %349, label %332

332:                                              ; preds = %329
  %333 = load i32, i32* %15, align 4
  %334 = sub i32 %333, 1
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds i64, i64* %39, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = load i32, i32* %15, align 4
  %339 = sub i32 %338, 1
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds i64, i64* %45, i64 %340
  %342 = load i64, i64* %341, align 8
  %343 = add i64 %337, %342
  %344 = load i32, i32* %15, align 4
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds i64, i64* %39, i64 %345
  %347 = load i64, i64* %346, align 8
  %348 = icmp ugt i64 %343, %347
  br i1 %348, label %368, label %349

349:                                              ; preds = %332, %329
  %350 = load i32, i32* %16, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %370

352:                                              ; preds = %349
  %353 = load i32, i32* %15, align 4
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds i64, i64* %39, i64 %354
  %356 = load i64, i64* %355, align 8
  %357 = load i32, i32* %15, align 4
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds i64, i64* %45, i64 %358
  %360 = load i64, i64* %359, align 8
  %361 = add i64 %356, %360
  %362 = load i32, i32* %15, align 4
  %363 = sub i32 %362, 1
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds i64, i64* %39, i64 %364
  %366 = load i64, i64* %365, align 8
  %367 = icmp ugt i64 %361, %366
  br i1 %367, label %368, label %370

368:                                              ; preds = %352, %332, %318
  %369 = load i32, i32* @TRUE, align 4
  store i32 %369, i32* %20, align 4
  br label %370

370:                                              ; preds = %368, %352, %349
  br label %371

371:                                              ; preds = %370, %317
  %372 = load i32, i32* %15, align 4
  %373 = add i32 %372, 1
  store i32 %373, i32* %15, align 4
  br label %282

374:                                              ; preds = %282
  br label %375

375:                                              ; preds = %374, %278
  %376 = load i32, i32* %20, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %383

378:                                              ; preds = %375
  %379 = load i32*, i32** %10, align 8
  %380 = load i32, i32* %11, align 4
  %381 = load i32, i32* @FALSE, align 4
  %382 = call i32 @sort(i64* %42, i32* %379, i32 %380, i32 %381)
  br label %383

383:                                              ; preds = %378, %375
  %384 = load i32, i32* @link_statistics, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %460

386:                                              ; preds = %383
  %387 = load i64, i64* %8, align 8
  %388 = getelementptr inbounds i64, i64* %39, i64 0
  %389 = load i64, i64* %388, align 16
  %390 = icmp ugt i64 %387, %389
  br i1 %390, label %391, label %396

391:                                              ; preds = %386
  %392 = load i64, i64* %8, align 8
  %393 = getelementptr inbounds i64, i64* %39, i64 0
  %394 = load i64, i64* %393, align 16
  %395 = sub i64 %392, %394
  store i64 %395, i64* %28, align 8
  br label %401

396:                                              ; preds = %386
  %397 = getelementptr inbounds i64, i64* %39, i64 0
  %398 = load i64, i64* %397, align 16
  %399 = load i64, i64* %8, align 8
  %400 = sub i64 %398, %399
  store i64 %400, i64* %28, align 8
  br label %401

401:                                              ; preds = %396, %391
  %402 = load i32, i32* @reorder.batchcount, align 4
  %403 = add i32 %402, 1
  store i32 %403, i32* @reorder.batchcount, align 4
  %404 = load i32, i32* %11, align 4
  %405 = load i32, i32* @reorder.readycount, align 4
  %406 = add i32 %405, %404
  store i32 %406, i32* @reorder.readycount, align 4
  %407 = load i64, i64* %27, align 8
  %408 = udiv i64 %407, 1024
  %409 = load i64, i64* @reorder.seeknosort, align 8
  %410 = add i64 %409, %408
  store i64 %410, i64* @reorder.seeknosort, align 8
  %411 = load i32, i32* %19, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %401
  %414 = load i32, i32* @reorder.inputcount, align 4
  %415 = add i32 %414, 1
  store i32 %415, i32* @reorder.inputcount, align 4
  br label %416

416:                                              ; preds = %413, %401
  %417 = load i32, i32* %20, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %426

419:                                              ; preds = %416
  %420 = load i32, i32* @reorder.ovlcount, align 4
  %421 = add i32 %420, 1
  store i32 %421, i32* @reorder.ovlcount, align 4
  %422 = load i64, i64* %28, align 8
  %423 = udiv i64 %422, 1024
  %424 = load i64, i64* @reorder.seeksorted, align 8
  %425 = add i64 %424, %423
  store i64 %425, i64* @reorder.seeksorted, align 8
  br label %435

426:                                              ; preds = %416
  %427 = load i64, i64* %28, align 8
  %428 = load i64, i64* %25, align 8
  %429 = add i64 %427, %428
  %430 = load i64, i64* %26, align 8
  %431 = sub i64 %429, %430
  %432 = udiv i64 %431, 1024
  %433 = load i64, i64* @reorder.seeksorted, align 8
  %434 = add i64 %433, %432
  store i64 %434, i64* @reorder.seeksorted, align 8
  br label %435

435:                                              ; preds = %426, %419
  %436 = load i32, i32* %16, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %447

438:                                              ; preds = %435
  %439 = load i32, i32* %18, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %447, label %441

441:                                              ; preds = %438
  %442 = load i32, i32* @reorder.revcount, align 4
  %443 = add i32 %442, 1
  store i32 %443, i32* @reorder.revcount, align 4
  %444 = load i32, i32* %11, align 4
  %445 = load i32, i32* @reorder.readysorted, align 4
  %446 = add i32 %445, %444
  store i32 %446, i32* @reorder.readysorted, align 4
  br label %447

447:                                              ; preds = %441, %438, %435
  %448 = load i32, i32* %16, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %459, label %450

450:                                              ; preds = %447
  %451 = load i32, i32* %17, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %459, label %453

453:                                              ; preds = %450
  %454 = load i32, i32* @reorder.sortcount, align 4
  %455 = add i32 %454, 1
  store i32 %455, i32* @reorder.sortcount, align 4
  %456 = load i32, i32* %11, align 4
  %457 = load i32, i32* @reorder.readysorted, align 4
  %458 = add i32 %457, %456
  store i32 %458, i32* @reorder.readysorted, align 4
  br label %459

459:                                              ; preds = %453, %450, %447
  br label %460

460:                                              ; preds = %459, %383
  %461 = load i32, i32* %20, align 4
  store i32 %461, i32* %6, align 4
  store i32 1, i32* %30, align 4
  br label %462

462:                                              ; preds = %460, %78
  %463 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %463)
  %464 = load i32, i32* %6, align 4
  ret i32 %464
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printk(i8*, ...) #2

declare dso_local %struct.TYPE_2__* @HD(i32) #2

declare dso_local i64 @blk_rq_pos(i32) #2

declare dso_local i64 @blk_rq_sectors(i32) #2

declare dso_local i32 @sort(i64*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
