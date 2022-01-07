; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_make_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, i32, i64, %struct.r5conf* }
%struct.r5conf = type { i64, i32, i32, i32, i32 }
%struct.bio = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.stripe_head = type { i32 }

@BIO_FLUSH = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@BIO_DISCARD = common dso_local global i32 0, align 4
@STRIPE_SECTORS = common dso_local global i64 0, align 8
@w = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"raid456: make_request, sector %llu logical %llu\0A\00", align 1
@RWA_MASK = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@STRIPE_EXPANDING = common dso_local global i32 0, align 4
@STRIPE_HANDLE = common dso_local global i32 0, align 4
@STRIPE_DELAYED = common dso_local global i32 0, align 4
@BIO_RW_SYNCIO = common dso_local global i32 0, align 4
@STRIPE_PREREAD_ACTIVE = common dso_local global i32 0, align 4
@BIO_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.bio*)* @make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_request(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.r5conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stripe_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %16 = load %struct.mddev*, %struct.mddev** %4, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 4
  %18 = load %struct.r5conf*, %struct.r5conf** %17, align 8
  store %struct.r5conf* %18, %struct.r5conf** %6, align 8
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = call i32 @bio_data_dir(%struct.bio* %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.bio*, %struct.bio** %5, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BIO_FLUSH, align 4
  %25 = and i32 %23, %24
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.mddev*, %struct.mddev** %4, align 8
  %30 = load %struct.bio*, %struct.bio** %5, align 8
  %31 = call i32 @md_flush_request(%struct.mddev* %29, %struct.bio* %30)
  store i32 0, i32* %3, align 4
  br label %337

32:                                               ; preds = %2
  %33 = load %struct.mddev*, %struct.mddev** %4, align 8
  %34 = load %struct.bio*, %struct.bio** %5, align 8
  %35 = call i32 @md_write_start(%struct.mddev* %33, %struct.bio* %34)
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @READ, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load %struct.mddev*, %struct.mddev** %4, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MaxSector, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.mddev*, %struct.mddev** %4, align 8
  %47 = load %struct.bio*, %struct.bio** %5, align 8
  %48 = call i64 @chunk_aligned_read(%struct.mddev* %46, %struct.bio* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %337

51:                                               ; preds = %45, %39, %32
  %52 = load %struct.bio*, %struct.bio** %5, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @BIO_DISCARD, align 4
  %56 = and i32 %54, %55
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.mddev*, %struct.mddev** %4, align 8
  %61 = load %struct.bio*, %struct.bio** %5, align 8
  %62 = call i32 @make_discard_request(%struct.mddev* %60, %struct.bio* %61)
  store i32 %62, i32* %3, align 4
  br label %337

63:                                               ; preds = %51
  %64 = load %struct.bio*, %struct.bio** %5, align 8
  %65 = getelementptr inbounds %struct.bio, %struct.bio* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* @STRIPE_SECTORS, align 8
  %68 = trunc i64 %67 to i32
  %69 = sub nsw i32 %68, 1
  %70 = xor i32 %69, -1
  %71 = and i32 %66, %70
  store i32 %71, i32* %9, align 4
  %72 = load %struct.bio*, %struct.bio** %5, align 8
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.bio*, %struct.bio** %5, align 8
  %76 = getelementptr inbounds %struct.bio, %struct.bio* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = ashr i32 %77, 9
  %79 = add nsw i32 %74, %78
  store i32 %79, i32* %10, align 4
  %80 = load %struct.bio*, %struct.bio** %5, align 8
  %81 = getelementptr inbounds %struct.bio, %struct.bio* %80, i32 0, i32 6
  store i32* null, i32** %81, align 8
  %82 = load %struct.bio*, %struct.bio** %5, align 8
  %83 = getelementptr inbounds %struct.bio, %struct.bio* %82, i32 0, i32 3
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %309, %63
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %315

88:                                               ; preds = %84
  %89 = load i32, i32* @w, align 4
  %90 = call i32 @DEFINE_WAIT(i32 %89)
  br label %91

91:                                               ; preds = %265, %251, %208, %144, %88
  store i32 0, i32* %14, align 4
  %92 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %93 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %92, i32 0, i32 2
  %94 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %95 = call i32 @prepare_to_wait(i32* %93, i32* @w, i32 %94)
  %96 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %97 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @MaxSector, align 8
  %100 = icmp ne i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %154

104:                                              ; preds = %91
  %105 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %106 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %105, i32 0, i32 4
  %107 = call i32 @spin_lock_irq(i32* %106)
  %108 = load %struct.mddev*, %struct.mddev** %4, align 8
  %109 = getelementptr inbounds %struct.mddev, %struct.mddev* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %116 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp slt i64 %114, %117
  br i1 %118, label %126, label %127

119:                                              ; preds = %104
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %123 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp sge i64 %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %119, %112
  store i32 1, i32* %14, align 4
  br label %150

127:                                              ; preds = %119, %112
  %128 = load %struct.mddev*, %struct.mddev** %4, align 8
  %129 = getelementptr inbounds %struct.mddev, %struct.mddev* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %135 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %144, label %149

138:                                              ; preds = %127
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %141 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp sge i32 %139, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %138, %132
  %145 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %146 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %145, i32 0, i32 4
  %147 = call i32 @spin_unlock_irq(i32* %146)
  %148 = call i32 (...) @schedule()
  br label %91

149:                                              ; preds = %138, %132
  br label %150

150:                                              ; preds = %149, %126
  %151 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %152 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %151, i32 0, i32 4
  %153 = call i32 @spin_unlock_irq(i32* %152)
  br label %154

154:                                              ; preds = %150, %91
  %155 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %14, align 4
  %158 = call i32 @raid5_compute_sector(%struct.r5conf* %155, i32 %156, i32 %157, i32* %7, i32* null)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %160, i64 %162)
  %164 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.bio*, %struct.bio** %5, align 8
  %168 = getelementptr inbounds %struct.bio, %struct.bio* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @RWA_MASK, align 4
  %171 = and i32 %169, %170
  %172 = call %struct.stripe_head* @get_active_stripe(%struct.r5conf* %164, i32 %165, i32 %166, i32 %171, i32 0)
  store %struct.stripe_head* %172, %struct.stripe_head** %11, align 8
  %173 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %174 = icmp ne %struct.stripe_head* %173, null
  br i1 %174, label %175, label %300

175:                                              ; preds = %154
  %176 = load i32, i32* %14, align 4
  %177 = call i64 @unlikely(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %213

179:                                              ; preds = %175
  store i32 0, i32* %15, align 4
  %180 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %181 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %180, i32 0, i32 4
  %182 = call i32 @spin_lock_irq(i32* %181)
  %183 = load %struct.mddev*, %struct.mddev** %4, align 8
  %184 = getelementptr inbounds %struct.mddev, %struct.mddev* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %179
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %191 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp sge i64 %189, %192
  br i1 %193, label %201, label %202

194:                                              ; preds = %179
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %198 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp slt i64 %196, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %194, %187
  store i32 1, i32* %15, align 4
  br label %202

202:                                              ; preds = %201, %194, %187
  %203 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %204 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %203, i32 0, i32 4
  %205 = call i32 @spin_unlock_irq(i32* %204)
  %206 = load i32, i32* %15, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %210 = call i32 @release_stripe(%struct.stripe_head* %209)
  %211 = call i32 (...) @schedule()
  br label %91

212:                                              ; preds = %202
  br label %213

213:                                              ; preds = %212, %175
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* @WRITE, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %252

217:                                              ; preds = %213
  %218 = load i32, i32* %9, align 4
  %219 = load %struct.mddev*, %struct.mddev** %4, align 8
  %220 = getelementptr inbounds %struct.mddev, %struct.mddev* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = icmp sge i32 %218, %221
  br i1 %222, label %223, label %252

223:                                              ; preds = %217
  %224 = load i32, i32* %9, align 4
  %225 = load %struct.mddev*, %struct.mddev** %4, align 8
  %226 = getelementptr inbounds %struct.mddev, %struct.mddev* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = icmp slt i32 %224, %227
  br i1 %228, label %229, label %252

229:                                              ; preds = %223
  %230 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %231 = call i32 @release_stripe(%struct.stripe_head* %230)
  %232 = load i32, i32* @current, align 4
  %233 = call i32 @flush_signals(i32 %232)
  %234 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %235 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %234, i32 0, i32 2
  %236 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %237 = call i32 @prepare_to_wait(i32* %235, i32* @w, i32 %236)
  %238 = load i32, i32* %9, align 4
  %239 = load %struct.mddev*, %struct.mddev** %4, align 8
  %240 = getelementptr inbounds %struct.mddev, %struct.mddev* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = icmp sge i32 %238, %241
  br i1 %242, label %243, label %251

243:                                              ; preds = %229
  %244 = load i32, i32* %9, align 4
  %245 = load %struct.mddev*, %struct.mddev** %4, align 8
  %246 = getelementptr inbounds %struct.mddev, %struct.mddev* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %243
  %250 = call i32 (...) @schedule()
  br label %251

251:                                              ; preds = %249, %243, %229
  br label %91

252:                                              ; preds = %223, %217, %213
  %253 = load i32, i32* @STRIPE_EXPANDING, align 4
  %254 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %255 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %254, i32 0, i32 0
  %256 = call i64 @test_bit(i32 %253, i32* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %265, label %258

258:                                              ; preds = %252
  %259 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %260 = load %struct.bio*, %struct.bio** %5, align 8
  %261 = load i32, i32* %7, align 4
  %262 = load i32, i32* %12, align 4
  %263 = call i32 @add_stripe_bio(%struct.stripe_head* %259, %struct.bio* %260, i32 %261, i32 %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %271, label %265

265:                                              ; preds = %258, %252
  %266 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %267 = call i32 @md_raid5_unplug_device(%struct.r5conf* %266)
  %268 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %269 = call i32 @release_stripe(%struct.stripe_head* %268)
  %270 = call i32 (...) @schedule()
  br label %91

271:                                              ; preds = %258
  %272 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %273 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %272, i32 0, i32 2
  %274 = call i32 @finish_wait(i32* %273, i32* @w)
  %275 = load i32, i32* @STRIPE_HANDLE, align 4
  %276 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %277 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %276, i32 0, i32 0
  %278 = call i32 @set_bit(i32 %275, i32* %277)
  %279 = load i32, i32* @STRIPE_DELAYED, align 4
  %280 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %281 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %280, i32 0, i32 0
  %282 = call i32 @clear_bit(i32 %279, i32* %281)
  %283 = load %struct.bio*, %struct.bio** %5, align 8
  %284 = load i32, i32* @BIO_RW_SYNCIO, align 4
  %285 = call i64 @bio_rw_flagged(%struct.bio* %283, i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %297

287:                                              ; preds = %271
  %288 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %289 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %290 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %289, i32 0, i32 0
  %291 = call i32 @test_and_set_bit(i32 %288, i32* %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %297, label %293

293:                                              ; preds = %287
  %294 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %295 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %294, i32 0, i32 3
  %296 = call i32 @atomic_inc(i32* %295)
  br label %297

297:                                              ; preds = %293, %287, %271
  %298 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %299 = call i32 @release_stripe(%struct.stripe_head* %298)
  br label %308

300:                                              ; preds = %154
  %301 = load i32, i32* @BIO_UPTODATE, align 4
  %302 = load %struct.bio*, %struct.bio** %5, align 8
  %303 = getelementptr inbounds %struct.bio, %struct.bio* %302, i32 0, i32 5
  %304 = call i32 @clear_bit(i32 %301, i32* %303)
  %305 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %306 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %305, i32 0, i32 2
  %307 = call i32 @finish_wait(i32* %306, i32* @w)
  br label %315

308:                                              ; preds = %297
  br label %309

309:                                              ; preds = %308
  %310 = load i64, i64* @STRIPE_SECTORS, align 8
  %311 = load i32, i32* %9, align 4
  %312 = sext i32 %311 to i64
  %313 = add nsw i64 %312, %310
  %314 = trunc i64 %313 to i32
  store i32 %314, i32* %9, align 4
  br label %84

315:                                              ; preds = %300, %84
  %316 = load %struct.bio*, %struct.bio** %5, align 8
  %317 = call i32 @raid5_dec_bi_active_stripes(%struct.bio* %316)
  store i32 %317, i32* %13, align 4
  %318 = load i32, i32* %13, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %336

320:                                              ; preds = %315
  %321 = load i32, i32* %12, align 4
  %322 = load i32, i32* @WRITE, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %327

324:                                              ; preds = %320
  %325 = load %struct.mddev*, %struct.mddev** %4, align 8
  %326 = call i32 @md_write_end(%struct.mddev* %325)
  br label %327

327:                                              ; preds = %324, %320
  %328 = load %struct.bio*, %struct.bio** %5, align 8
  %329 = getelementptr inbounds %struct.bio, %struct.bio* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @bdev_get_queue(i32 %330)
  %332 = load %struct.bio*, %struct.bio** %5, align 8
  %333 = call i32 @trace_block_bio_complete(i32 %331, %struct.bio* %332)
  %334 = load %struct.bio*, %struct.bio** %5, align 8
  %335 = call i32 @bio_endio(%struct.bio* %334, i32 0)
  br label %336

336:                                              ; preds = %327, %315
  store i32 0, i32* %3, align 4
  br label %337

337:                                              ; preds = %336, %59, %50, %28
  %338 = load i32, i32* %3, align 4
  ret i32 %338
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @md_flush_request(%struct.mddev*, %struct.bio*) #1

declare dso_local i32 @md_write_start(%struct.mddev*, %struct.bio*) #1

declare dso_local i64 @chunk_aligned_read(%struct.mddev*, %struct.bio*) #1

declare dso_local i32 @make_discard_request(%struct.mddev*, %struct.bio*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @raid5_compute_sector(%struct.r5conf*, i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local %struct.stripe_head* @get_active_stripe(%struct.r5conf*, i32, i32, i32, i32) #1

declare dso_local i32 @release_stripe(%struct.stripe_head*) #1

declare dso_local i32 @flush_signals(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @add_stripe_bio(%struct.stripe_head*, %struct.bio*, i32, i32) #1

declare dso_local i32 @md_raid5_unplug_device(%struct.r5conf*) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @bio_rw_flagged(%struct.bio*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @raid5_dec_bi_active_stripes(%struct.bio*) #1

declare dso_local i32 @md_write_end(%struct.mddev*) #1

declare dso_local i32 @trace_block_bio_complete(i32, %struct.bio*) #1

declare dso_local i32 @bdev_get_queue(i32) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
