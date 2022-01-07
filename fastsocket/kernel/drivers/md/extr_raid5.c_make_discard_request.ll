; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_make_discard_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_make_discard_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, %struct.r5conf* }
%struct.r5conf = type { i32, i32, i32, i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.bio = type { i32, i32, i32, i32* }
%struct.stripe_head = type { i64, i32, i32, i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.bio*, i64 }

@MaxSector = common dso_local global i64 0, align 8
@STRIPE_SECTORS = common dso_local global i64 0, align 8
@w = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@R5_Overlap = common dso_local global i32 0, align 4
@STRIPE_SYNCING = common dso_local global i32 0, align 4
@STRIPE_DISCARD = common dso_local global i32 0, align 4
@R5_OVERWRITE = common dso_local global i32 0, align 4
@STRIPE_BIT_DELAY = common dso_local global i32 0, align 4
@STRIPE_HANDLE = common dso_local global i32 0, align 4
@STRIPE_DELAYED = common dso_local global i32 0, align 4
@STRIPE_PREREAD_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.bio*)* @make_discard_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_discard_request(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.r5conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stripe_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %13 = load %struct.mddev*, %struct.mddev** %4, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 2
  %15 = load %struct.r5conf*, %struct.r5conf** %14, align 8
  store %struct.r5conf* %15, %struct.r5conf** %6, align 8
  %16 = load %struct.mddev*, %struct.mddev** %4, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MaxSector, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %311

22:                                               ; preds = %2
  %23 = load %struct.bio*, %struct.bio** %5, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* @STRIPE_SECTORS, align 8
  %27 = trunc i64 %26 to i32
  %28 = sub nsw i32 %27, 1
  %29 = xor i32 %28, -1
  %30 = and i32 %25, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.bio*, %struct.bio** %5, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.bio*, %struct.bio** %5, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 9
  %38 = add nsw i32 %33, %37
  store i32 %38, i32* %8, align 4
  %39 = load %struct.bio*, %struct.bio** %5, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load %struct.bio*, %struct.bio** %5, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 2
  store i32 1, i32* %42, align 8
  %43 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %44 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %47 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %50 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %48, %51
  %53 = mul nsw i32 %45, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @DIV_ROUND_UP_SECTOR_T(i32 %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @sector_div(i32 %57, i32 %58)
  %60 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %61 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = mul nsw i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %66 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = mul nsw i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %294, %22
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %300

74:                                               ; preds = %70
  %75 = load i32, i32* @w, align 4
  %76 = call i32 @DEFINE_WAIT(i32 %75)
  br label %77

77:                                               ; preds = %158, %100, %74
  %78 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call %struct.stripe_head* @get_active_stripe(%struct.r5conf* %78, i32 %79, i32 0, i32 0, i32 0)
  store %struct.stripe_head* %80, %struct.stripe_head** %9, align 8
  %81 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %82 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %81, i32 0, i32 6
  %83 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %84 = call i32 @prepare_to_wait(i32* %82, i32* @w, i32 %83)
  %85 = load i32, i32* @R5_Overlap, align 4
  %86 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %87 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %86, i32 0, i32 6
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %90 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = call i32 @set_bit(i32 %85, i32* %93)
  %95 = load i32, i32* @STRIPE_SYNCING, align 4
  %96 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %97 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %96, i32 0, i32 2
  %98 = call i64 @test_bit(i32 %95, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %77
  %101 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %102 = call i32 @release_stripe(%struct.stripe_head* %101)
  %103 = call i32 (...) @schedule()
  br label %77

104:                                              ; preds = %77
  %105 = load i32, i32* @R5_Overlap, align 4
  %106 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %107 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %106, i32 0, i32 6
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %110 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = call i32 @clear_bit(i32 %105, i32* %113)
  %115 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %116 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %115, i32 0, i32 5
  %117 = call i32 @spin_lock_irq(i32* %116)
  store i32 0, i32* %12, align 4
  br label %118

118:                                              ; preds = %175, %104
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %121 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %178

124:                                              ; preds = %118
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %128 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %126, %129
  br i1 %130, label %137, label %131

131:                                              ; preds = %124
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %134 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %132, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %131, %124
  br label %175

138:                                              ; preds = %131
  %139 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %140 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %139, i32 0, i32 6
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load %struct.bio*, %struct.bio** %145, align 8
  %147 = icmp ne %struct.bio* %146, null
  br i1 %147, label %158, label %148

148:                                              ; preds = %138
  %149 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %150 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %149, i32 0, i32 6
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %148, %138
  %159 = load i32, i32* @R5_Overlap, align 4
  %160 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %161 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %160, i32 0, i32 6
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = call i32 @set_bit(i32 %159, i32* %166)
  %168 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %169 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %168, i32 0, i32 5
  %170 = call i32 @spin_unlock_irq(i32* %169)
  %171 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %172 = call i32 @release_stripe(%struct.stripe_head* %171)
  %173 = call i32 (...) @schedule()
  br label %77

174:                                              ; preds = %148
  br label %175

175:                                              ; preds = %174, %137
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %12, align 4
  br label %118

178:                                              ; preds = %118
  %179 = load i32, i32* @STRIPE_DISCARD, align 4
  %180 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %181 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %180, i32 0, i32 2
  %182 = call i32 @set_bit(i32 %179, i32* %181)
  %183 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %184 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %183, i32 0, i32 6
  %185 = call i32 @finish_wait(i32* %184, i32* @w)
  store i32 0, i32* %12, align 4
  br label %186

186:                                              ; preds = %226, %178
  %187 = load i32, i32* %12, align 4
  %188 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %189 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %229

192:                                              ; preds = %186
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %196 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %194, %197
  br i1 %198, label %205, label %199

199:                                              ; preds = %192
  %200 = load i32, i32* %12, align 4
  %201 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %202 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %200, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %199, %192
  br label %226

206:                                              ; preds = %199
  %207 = load %struct.bio*, %struct.bio** %5, align 8
  %208 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %209 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %208, i32 0, i32 6
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %209, align 8
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  store %struct.bio* %207, %struct.bio** %214, align 8
  %215 = load i32, i32* @R5_OVERWRITE, align 4
  %216 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %217 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %216, i32 0, i32 6
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %217, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  %223 = call i32 @set_bit(i32 %215, i32* %222)
  %224 = load %struct.bio*, %struct.bio** %5, align 8
  %225 = call i32 @raid5_inc_bi_active_stripes(%struct.bio* %224)
  br label %226

226:                                              ; preds = %206, %205
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %12, align 4
  br label %186

229:                                              ; preds = %186
  %230 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %231 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %230, i32 0, i32 5
  %232 = call i32 @spin_unlock_irq(i32* %231)
  %233 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %234 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %233, i32 0, i32 5
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %273

239:                                              ; preds = %229
  store i32 0, i32* %12, align 4
  br label %240

240:                                              ; preds = %259, %239
  %241 = load i32, i32* %12, align 4
  %242 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %243 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %246 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = sub nsw i32 %244, %247
  %249 = icmp slt i32 %241, %248
  br i1 %249, label %250, label %262

250:                                              ; preds = %240
  %251 = load %struct.mddev*, %struct.mddev** %4, align 8
  %252 = getelementptr inbounds %struct.mddev, %struct.mddev* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %255 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = load i64, i64* @STRIPE_SECTORS, align 8
  %258 = call i32 @bitmap_startwrite(i32 %253, i32 %256, i64 %257, i32 0)
  br label %259

259:                                              ; preds = %250
  %260 = load i32, i32* %12, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %12, align 4
  br label %240

262:                                              ; preds = %240
  %263 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %264 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %265, 1
  %267 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %268 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %267, i32 0, i32 3
  store i64 %266, i64* %268, align 8
  %269 = load i32, i32* @STRIPE_BIT_DELAY, align 4
  %270 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %271 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %270, i32 0, i32 2
  %272 = call i32 @set_bit(i32 %269, i32* %271)
  br label %273

273:                                              ; preds = %262, %229
  %274 = load i32, i32* @STRIPE_HANDLE, align 4
  %275 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %276 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %275, i32 0, i32 2
  %277 = call i32 @set_bit(i32 %274, i32* %276)
  %278 = load i32, i32* @STRIPE_DELAYED, align 4
  %279 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %280 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %279, i32 0, i32 2
  %281 = call i32 @clear_bit(i32 %278, i32* %280)
  %282 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %283 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %284 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %283, i32 0, i32 2
  %285 = call i32 @test_and_set_bit(i32 %282, i32* %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %273
  %288 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %289 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %288, i32 0, i32 3
  %290 = call i32 @atomic_inc(i32* %289)
  br label %291

291:                                              ; preds = %287, %273
  %292 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %293 = call i32 @release_stripe(%struct.stripe_head* %292)
  br label %294

294:                                              ; preds = %291
  %295 = load i64, i64* @STRIPE_SECTORS, align 8
  %296 = load i32, i32* %7, align 4
  %297 = sext i32 %296 to i64
  %298 = add nsw i64 %297, %295
  %299 = trunc i64 %298 to i32
  store i32 %299, i32* %7, align 4
  br label %70

300:                                              ; preds = %70
  %301 = load %struct.bio*, %struct.bio** %5, align 8
  %302 = call i32 @raid5_dec_bi_active_stripes(%struct.bio* %301)
  store i32 %302, i32* %10, align 4
  %303 = load i32, i32* %10, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %300
  %306 = load %struct.mddev*, %struct.mddev** %4, align 8
  %307 = call i32 @md_write_end(%struct.mddev* %306)
  %308 = load %struct.bio*, %struct.bio** %5, align 8
  %309 = call i32 @bio_endio(%struct.bio* %308, i32 0)
  br label %310

310:                                              ; preds = %305, %300
  store i32 0, i32* %3, align 4
  br label %311

311:                                              ; preds = %310, %21
  %312 = load i32, i32* %3, align 4
  ret i32 %312
}

declare dso_local i32 @DIV_ROUND_UP_SECTOR_T(i32, i32) #1

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.stripe_head* @get_active_stripe(%struct.r5conf*, i32, i32, i32, i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @release_stripe(%struct.stripe_head*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @raid5_inc_bi_active_stripes(%struct.bio*) #1

declare dso_local i32 @bitmap_startwrite(i32, i32, i64, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @raid5_dec_bi_active_stripes(%struct.bio*) #1

declare dso_local i32 @md_write_end(%struct.mddev*) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
