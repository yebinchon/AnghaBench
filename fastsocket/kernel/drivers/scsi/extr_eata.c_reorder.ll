; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_reorder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_reorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostdata = type { %struct.mscp* }
%struct.mscp = type { i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i64, i32 }

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
@KERN_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostdata*, i64, i32, i32*, i32)* @reorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reorder(%struct.hostdata* %0, i64 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostdata*, align 8
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
  store %struct.hostdata* %0, %struct.hostdata** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %21, align 8
  %34 = alloca i64, i64 %32, align 16
  store i64 %32, i64* %22, align 8
  %35 = load i32, i32* %11, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i64, i64 %36, align 16
  store i64 %36, i64* %23, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i64, i64 %39, align 16
  store i64 %39, i64* %24, align 8
  store i64 0, i64* %25, align 8
  %41 = load i64, i64* @ULONG_MAX, align 8
  store i64 %41, i64* %26, align 8
  store i64 0, i64* %27, align 8
  store i64 0, i64* %28, align 8
  store i64 0, i64* %29, align 8
  %42 = load i32, i32* @link_statistics, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %5
  %45 = load i32, i32* @reorder.flushcount, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* @reorder.flushcount, align 4
  %47 = load i32, i32* @link_statistics, align 4
  %48 = urem i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @reorder.flushcount, align 4
  %52 = load i32, i32* @reorder.batchcount, align 4
  %53 = load i32, i32* @reorder.inputcount, align 4
  %54 = load i32, i32* @reorder.ovlcount, align 4
  %55 = load i32, i32* @reorder.readycount, align 4
  %56 = load i32, i32* @reorder.readysorted, align 4
  %57 = load i32, i32* @reorder.sortcount, align 4
  %58 = load i32, i32* @reorder.revcount, align 4
  %59 = load i64, i64* @reorder.seeknosort, align 8
  %60 = load i32, i32* @reorder.readycount, align 4
  %61 = add i32 %60, 1
  %62 = zext i32 %61 to i64
  %63 = udiv i64 %59, %62
  %64 = load i64, i64* @reorder.seeksorted, align 8
  %65 = load i32, i32* @reorder.readycount, align 4
  %66 = add i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = udiv i64 %64, %67
  %69 = call i32 @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i64 %63, i64 %68)
  br label %70

70:                                               ; preds = %50, %44, %5
  %71 = load i32, i32* %11, align 4
  %72 = icmp ule i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  store i32 1, i32* %30, align 4
  br label %446

74:                                               ; preds = %70
  store i32 0, i32* %15, align 4
  br label %75

75:                                               ; preds = %206, %74
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %209

79:                                               ; preds = %75
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %15, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %14, align 4
  %85 = load %struct.hostdata*, %struct.hostdata** %7, align 8
  %86 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %85, i32 0, i32 0
  %87 = load %struct.mscp*, %struct.mscp** %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.mscp, %struct.mscp* %87, i64 %89
  store %struct.mscp* %90, %struct.mscp** %13, align 8
  %91 = load %struct.mscp*, %struct.mscp** %13, align 8
  %92 = getelementptr inbounds %struct.mscp, %struct.mscp* %91, i32 0, i32 1
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %92, align 8
  store %struct.scsi_cmnd* %93, %struct.scsi_cmnd** %12, align 8
  %94 = load %struct.mscp*, %struct.mscp** %13, align 8
  %95 = getelementptr inbounds %struct.mscp, %struct.mscp* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %79
  store i32 0, i32* %19, align 4
  br label %99

99:                                               ; preds = %98, %79
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %101 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @blk_rq_pos(i32 %102)
  %104 = load i64, i64* %26, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %108 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @blk_rq_pos(i32 %109)
  store i64 %110, i64* %26, align 8
  br label %111

111:                                              ; preds = %106, %99
  %112 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %113 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @blk_rq_pos(i32 %114)
  %116 = load i64, i64* %25, align 8
  %117 = icmp ugt i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %120 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @blk_rq_pos(i32 %121)
  store i64 %122, i64* %25, align 8
  br label %123

123:                                              ; preds = %118, %111
  %124 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %125 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @blk_rq_pos(i32 %126)
  %128 = load i32, i32* %15, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %34, i64 %129
  store i64 %127, i64* %130, align 8
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %132 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @blk_rq_sectors(i32 %133)
  %135 = load i64, i64* %29, align 8
  %136 = add i64 %135, %134
  store i64 %136, i64* %29, align 8
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %123
  br label %206

140:                                              ; preds = %123
  %141 = load i32, i32* %15, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %34, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* %15, align 4
  %146 = sub i32 %145, 1
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %34, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = icmp ult i64 %144, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %140
  store i32 0, i32* %17, align 4
  br label %152

152:                                              ; preds = %151, %140
  %153 = load i32, i32* %15, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %34, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sub i32 %157, 1
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %34, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = icmp ugt i64 %156, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %152
  store i32 0, i32* %18, align 4
  br label %164

164:                                              ; preds = %163, %152
  %165 = load i32, i32* @link_statistics, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %205

167:                                              ; preds = %164
  %168 = load i32, i32* %15, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %34, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sub i32 %172, 1
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %34, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = icmp ugt i64 %171, %176
  br i1 %177, label %178, label %191

178:                                              ; preds = %167
  %179 = load i32, i32* %15, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %34, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sub i32 %183, 1
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %34, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = sub i64 %182, %187
  %189 = load i64, i64* %27, align 8
  %190 = add i64 %189, %188
  store i64 %190, i64* %27, align 8
  br label %204

191:                                              ; preds = %167
  %192 = load i32, i32* %15, align 4
  %193 = sub i32 %192, 1
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %34, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* %15, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %34, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = sub i64 %196, %200
  %202 = load i64, i64* %27, align 8
  %203 = add i64 %202, %201
  store i64 %203, i64* %27, align 8
  br label %204

204:                                              ; preds = %191, %178
  br label %205

205:                                              ; preds = %204, %164
  br label %206

206:                                              ; preds = %205, %139
  %207 = load i32, i32* %15, align 4
  %208 = add i32 %207, 1
  store i32 %208, i32* %15, align 4
  br label %75

209:                                              ; preds = %75
  %210 = load i32, i32* @link_statistics, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %232

212:                                              ; preds = %209
  %213 = load i64, i64* %8, align 8
  %214 = getelementptr inbounds i64, i64* %34, i64 0
  %215 = load i64, i64* %214, align 16
  %216 = icmp ugt i64 %213, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %212
  %218 = load i64, i64* %8, align 8
  %219 = getelementptr inbounds i64, i64* %34, i64 0
  %220 = load i64, i64* %219, align 16
  %221 = sub i64 %218, %220
  %222 = load i64, i64* %27, align 8
  %223 = add i64 %222, %221
  store i64 %223, i64* %27, align 8
  br label %231

224:                                              ; preds = %212
  %225 = getelementptr inbounds i64, i64* %34, i64 0
  %226 = load i64, i64* %225, align 16
  %227 = load i64, i64* %8, align 8
  %228 = sub i64 %226, %227
  %229 = load i64, i64* %27, align 8
  %230 = add i64 %229, %228
  store i64 %230, i64* %27, align 8
  br label %231

231:                                              ; preds = %224, %217
  br label %232

232:                                              ; preds = %231, %209
  %233 = load i64, i64* %8, align 8
  %234 = load i64, i64* %25, align 8
  %235 = load i64, i64* %26, align 8
  %236 = add i64 %234, %235
  %237 = udiv i64 %236, 2
  %238 = icmp ugt i64 %233, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %232
  store i32 1, i32* %16, align 4
  br label %240

240:                                              ; preds = %239, %232
  %241 = load i64, i64* %29, align 8
  %242 = load i64, i64* %25, align 8
  %243 = load i64, i64* %26, align 8
  %244 = sub i64 %242, %243
  %245 = udiv i64 %244, 2
  %246 = icmp ugt i64 %241, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %240
  store i32 0, i32* %16, align 4
  br label %248

248:                                              ; preds = %247, %240
  %249 = load i32, i32* %16, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load i32, i32* %18, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %265, label %254

254:                                              ; preds = %251, %248
  %255 = load i32, i32* %16, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* %17, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %265, label %260

260:                                              ; preds = %257, %254
  %261 = load i32*, i32** %10, align 8
  %262 = load i32, i32* %11, align 4
  %263 = load i32, i32* %16, align 4
  %264 = call i32 @sort(i64* %34, i32* %261, i32 %262, i32 %263)
  br label %265

265:                                              ; preds = %260, %257, %251
  %266 = load i32, i32* %19, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %360, label %268

268:                                              ; preds = %265
  store i32 0, i32* %15, align 4
  br label %269

269:                                              ; preds = %356, %268
  %270 = load i32, i32* %15, align 4
  %271 = load i32, i32* %11, align 4
  %272 = icmp ult i32 %270, %271
  br i1 %272, label %273, label %359

273:                                              ; preds = %269
  %274 = load i32*, i32** %10, align 8
  %275 = load i32, i32* %15, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  store i32 %278, i32* %14, align 4
  %279 = load %struct.hostdata*, %struct.hostdata** %7, align 8
  %280 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %279, i32 0, i32 0
  %281 = load %struct.mscp*, %struct.mscp** %280, align 8
  %282 = load i32, i32* %14, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds %struct.mscp, %struct.mscp* %281, i64 %283
  store %struct.mscp* %284, %struct.mscp** %13, align 8
  %285 = load %struct.mscp*, %struct.mscp** %13, align 8
  %286 = getelementptr inbounds %struct.mscp, %struct.mscp* %285, i32 0, i32 1
  %287 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %286, align 8
  store %struct.scsi_cmnd* %287, %struct.scsi_cmnd** %12, align 8
  %288 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %289 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = call i64 @blk_rq_sectors(i32 %290)
  %292 = load i32, i32* %15, align 4
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds i64, i64* %40, i64 %293
  store i64 %291, i64* %294, align 8
  %295 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %296 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load i32, i32* %15, align 4
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds i64, i64* %37, i64 %299
  store i64 %297, i64* %300, align 8
  %301 = load i32, i32* %15, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %273
  br label %356

304:                                              ; preds = %273
  %305 = load i32, i32* %15, align 4
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i64, i64* %34, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = load i32, i32* %15, align 4
  %310 = sub i32 %309, 1
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds i64, i64* %34, i64 %311
  %313 = load i64, i64* %312, align 8
  %314 = icmp eq i64 %308, %313
  br i1 %314, label %354, label %315

315:                                              ; preds = %304
  %316 = load i32, i32* %16, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %335, label %318

318:                                              ; preds = %315
  %319 = load i32, i32* %15, align 4
  %320 = sub i32 %319, 1
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds i64, i64* %34, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = load i32, i32* %15, align 4
  %325 = sub i32 %324, 1
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds i64, i64* %40, i64 %326
  %328 = load i64, i64* %327, align 8
  %329 = add i64 %323, %328
  %330 = load i32, i32* %15, align 4
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds i64, i64* %34, i64 %331
  %333 = load i64, i64* %332, align 8
  %334 = icmp ugt i64 %329, %333
  br i1 %334, label %354, label %335

335:                                              ; preds = %318, %315
  %336 = load i32, i32* %16, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %355

338:                                              ; preds = %335
  %339 = load i32, i32* %15, align 4
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds i64, i64* %34, i64 %340
  %342 = load i64, i64* %341, align 8
  %343 = load i32, i32* %15, align 4
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds i64, i64* %40, i64 %344
  %346 = load i64, i64* %345, align 8
  %347 = add i64 %342, %346
  %348 = load i32, i32* %15, align 4
  %349 = sub i32 %348, 1
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds i64, i64* %34, i64 %350
  %352 = load i64, i64* %351, align 8
  %353 = icmp ugt i64 %347, %352
  br i1 %353, label %354, label %355

354:                                              ; preds = %338, %318, %304
  store i32 1, i32* %20, align 4
  br label %355

355:                                              ; preds = %354, %338, %335
  br label %356

356:                                              ; preds = %355, %303
  %357 = load i32, i32* %15, align 4
  %358 = add i32 %357, 1
  store i32 %358, i32* %15, align 4
  br label %269

359:                                              ; preds = %269
  br label %360

360:                                              ; preds = %359, %265
  %361 = load i32, i32* %20, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %360
  %364 = load i32*, i32** %10, align 8
  %365 = load i32, i32* %11, align 4
  %366 = call i32 @sort(i64* %37, i32* %364, i32 %365, i32 0)
  br label %367

367:                                              ; preds = %363, %360
  %368 = load i32, i32* @link_statistics, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %444

370:                                              ; preds = %367
  %371 = load i64, i64* %8, align 8
  %372 = getelementptr inbounds i64, i64* %34, i64 0
  %373 = load i64, i64* %372, align 16
  %374 = icmp ugt i64 %371, %373
  br i1 %374, label %375, label %380

375:                                              ; preds = %370
  %376 = load i64, i64* %8, align 8
  %377 = getelementptr inbounds i64, i64* %34, i64 0
  %378 = load i64, i64* %377, align 16
  %379 = sub i64 %376, %378
  store i64 %379, i64* %28, align 8
  br label %385

380:                                              ; preds = %370
  %381 = getelementptr inbounds i64, i64* %34, i64 0
  %382 = load i64, i64* %381, align 16
  %383 = load i64, i64* %8, align 8
  %384 = sub i64 %382, %383
  store i64 %384, i64* %28, align 8
  br label %385

385:                                              ; preds = %380, %375
  %386 = load i32, i32* @reorder.batchcount, align 4
  %387 = add i32 %386, 1
  store i32 %387, i32* @reorder.batchcount, align 4
  %388 = load i32, i32* %11, align 4
  %389 = load i32, i32* @reorder.readycount, align 4
  %390 = add i32 %389, %388
  store i32 %390, i32* @reorder.readycount, align 4
  %391 = load i64, i64* %27, align 8
  %392 = udiv i64 %391, 1024
  %393 = load i64, i64* @reorder.seeknosort, align 8
  %394 = add i64 %393, %392
  store i64 %394, i64* @reorder.seeknosort, align 8
  %395 = load i32, i32* %19, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %400

397:                                              ; preds = %385
  %398 = load i32, i32* @reorder.inputcount, align 4
  %399 = add i32 %398, 1
  store i32 %399, i32* @reorder.inputcount, align 4
  br label %400

400:                                              ; preds = %397, %385
  %401 = load i32, i32* %20, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %410

403:                                              ; preds = %400
  %404 = load i32, i32* @reorder.ovlcount, align 4
  %405 = add i32 %404, 1
  store i32 %405, i32* @reorder.ovlcount, align 4
  %406 = load i64, i64* %28, align 8
  %407 = udiv i64 %406, 1024
  %408 = load i64, i64* @reorder.seeksorted, align 8
  %409 = add i64 %408, %407
  store i64 %409, i64* @reorder.seeksorted, align 8
  br label %419

410:                                              ; preds = %400
  %411 = load i64, i64* %28, align 8
  %412 = load i64, i64* %25, align 8
  %413 = add i64 %411, %412
  %414 = load i64, i64* %26, align 8
  %415 = sub i64 %413, %414
  %416 = udiv i64 %415, 1024
  %417 = load i64, i64* @reorder.seeksorted, align 8
  %418 = add i64 %417, %416
  store i64 %418, i64* @reorder.seeksorted, align 8
  br label %419

419:                                              ; preds = %410, %403
  %420 = load i32, i32* %16, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %431

422:                                              ; preds = %419
  %423 = load i32, i32* %18, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %431, label %425

425:                                              ; preds = %422
  %426 = load i32, i32* @reorder.revcount, align 4
  %427 = add i32 %426, 1
  store i32 %427, i32* @reorder.revcount, align 4
  %428 = load i32, i32* %11, align 4
  %429 = load i32, i32* @reorder.readysorted, align 4
  %430 = add i32 %429, %428
  store i32 %430, i32* @reorder.readysorted, align 4
  br label %431

431:                                              ; preds = %425, %422, %419
  %432 = load i32, i32* %16, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %443, label %434

434:                                              ; preds = %431
  %435 = load i32, i32* %17, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %443, label %437

437:                                              ; preds = %434
  %438 = load i32, i32* @reorder.sortcount, align 4
  %439 = add i32 %438, 1
  store i32 %439, i32* @reorder.sortcount, align 4
  %440 = load i32, i32* %11, align 4
  %441 = load i32, i32* @reorder.readysorted, align 4
  %442 = add i32 %441, %440
  store i32 %442, i32* @reorder.readysorted, align 4
  br label %443

443:                                              ; preds = %437, %434, %431
  br label %444

444:                                              ; preds = %443, %367
  %445 = load i32, i32* %20, align 4
  store i32 %445, i32* %6, align 4
  store i32 1, i32* %30, align 4
  br label %446

446:                                              ; preds = %444, %73
  %447 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %447)
  %448 = load i32, i32* %6, align 4
  ret i32 %448
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64) #2

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
