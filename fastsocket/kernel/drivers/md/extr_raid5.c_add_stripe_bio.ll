; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_add_stripe_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_add_stripe_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, i32, %struct.TYPE_4__*, i32, i64, i64, %struct.r5conf* }
%struct.TYPE_4__ = type { i64, i32, %struct.bio*, %struct.bio* }
%struct.r5conf = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.bio = type { i64, i32, %struct.bio* }

@.str = private unnamed_addr constant [35 x i8] c"adding bi b#%llu to stripe s#%llu\0A\00", align 1
@STRIPE_SECTORS = common dso_local global i64 0, align 8
@R5_OVERWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"added bi b#%llu to stripe s#%llu, disk %d.\0A\00", align 1
@STRIPE_BIT_DELAY = common dso_local global i32 0, align 4
@R5_Overlap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe_head*, %struct.bio*, i32, i32)* @add_stripe_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_stripe_bio(%struct.stripe_head* %0, %struct.bio* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stripe_head*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bio**, align 8
  %11 = alloca %struct.r5conf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %6, align 8
  store %struct.bio* %1, %struct.bio** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %15 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %14, i32 0, i32 6
  %16 = load %struct.r5conf*, %struct.r5conf** %15, align 8
  store %struct.r5conf* %16, %struct.r5conf** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.bio*, %struct.bio** %7, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %21 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i8*, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %22)
  %24 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %25 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %28 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %27, i32 0, i32 1
  %29 = call i32 @spin_lock_irq(i32* %28)
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %4
  %33 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %34 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store %struct.bio** %39, %struct.bio*** %10, align 8
  %40 = load %struct.bio**, %struct.bio*** %10, align 8
  %41 = load %struct.bio*, %struct.bio** %40, align 8
  %42 = icmp eq %struct.bio* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 1, i32* %12, align 4
  br label %44

44:                                               ; preds = %43, %32
  br label %53

45:                                               ; preds = %4
  %46 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %47 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store %struct.bio** %52, %struct.bio*** %10, align 8
  br label %53

53:                                               ; preds = %45, %44
  br label %54

54:                                               ; preds = %86, %53
  %55 = load %struct.bio**, %struct.bio*** %10, align 8
  %56 = load %struct.bio*, %struct.bio** %55, align 8
  %57 = icmp ne %struct.bio* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load %struct.bio**, %struct.bio*** %10, align 8
  %60 = load %struct.bio*, %struct.bio** %59, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.bio*, %struct.bio** %7, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br label %67

67:                                               ; preds = %58, %54
  %68 = phi i1 [ false, %54 ], [ %66, %58 ]
  br i1 %68, label %69, label %90

69:                                               ; preds = %67
  %70 = load %struct.bio**, %struct.bio*** %10, align 8
  %71 = load %struct.bio*, %struct.bio** %70, align 8
  %72 = getelementptr inbounds %struct.bio, %struct.bio* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.bio**, %struct.bio*** %10, align 8
  %75 = load %struct.bio*, %struct.bio** %74, align 8
  %76 = getelementptr inbounds %struct.bio, %struct.bio* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = ashr i32 %77, 9
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %73, %79
  %81 = load %struct.bio*, %struct.bio** %7, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %69
  br label %291

86:                                               ; preds = %69
  %87 = load %struct.bio**, %struct.bio*** %10, align 8
  %88 = load %struct.bio*, %struct.bio** %87, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 2
  store %struct.bio** %89, %struct.bio*** %10, align 8
  br label %54

90:                                               ; preds = %67
  %91 = load %struct.bio**, %struct.bio*** %10, align 8
  %92 = load %struct.bio*, %struct.bio** %91, align 8
  %93 = icmp ne %struct.bio* %92, null
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load %struct.bio**, %struct.bio*** %10, align 8
  %96 = load %struct.bio*, %struct.bio** %95, align 8
  %97 = getelementptr inbounds %struct.bio, %struct.bio* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.bio*, %struct.bio** %7, align 8
  %100 = getelementptr inbounds %struct.bio, %struct.bio* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.bio*, %struct.bio** %7, align 8
  %103 = getelementptr inbounds %struct.bio, %struct.bio* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = ashr i32 %104, 9
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %101, %106
  %108 = icmp slt i64 %98, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  br label %291

110:                                              ; preds = %94, %90
  %111 = load %struct.bio**, %struct.bio*** %10, align 8
  %112 = load %struct.bio*, %struct.bio** %111, align 8
  %113 = icmp ne %struct.bio* %112, null
  br i1 %113, label %114, label %126

114:                                              ; preds = %110
  %115 = load %struct.bio*, %struct.bio** %7, align 8
  %116 = getelementptr inbounds %struct.bio, %struct.bio* %115, i32 0, i32 2
  %117 = load %struct.bio*, %struct.bio** %116, align 8
  %118 = icmp ne %struct.bio* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.bio**, %struct.bio*** %10, align 8
  %121 = load %struct.bio*, %struct.bio** %120, align 8
  %122 = load %struct.bio*, %struct.bio** %7, align 8
  %123 = getelementptr inbounds %struct.bio, %struct.bio* %122, i32 0, i32 2
  %124 = load %struct.bio*, %struct.bio** %123, align 8
  %125 = icmp ne %struct.bio* %121, %124
  br label %126

126:                                              ; preds = %119, %114, %110
  %127 = phi i1 [ false, %114 ], [ false, %110 ], [ %125, %119 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @BUG_ON(i32 %128)
  %130 = load %struct.bio**, %struct.bio*** %10, align 8
  %131 = load %struct.bio*, %struct.bio** %130, align 8
  %132 = icmp ne %struct.bio* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load %struct.bio**, %struct.bio*** %10, align 8
  %135 = load %struct.bio*, %struct.bio** %134, align 8
  %136 = load %struct.bio*, %struct.bio** %7, align 8
  %137 = getelementptr inbounds %struct.bio, %struct.bio* %136, i32 0, i32 2
  store %struct.bio* %135, %struct.bio** %137, align 8
  br label %138

138:                                              ; preds = %133, %126
  %139 = load %struct.bio*, %struct.bio** %7, align 8
  %140 = load %struct.bio**, %struct.bio*** %10, align 8
  store %struct.bio* %139, %struct.bio** %140, align 8
  %141 = load %struct.bio*, %struct.bio** %7, align 8
  %142 = call i32 @raid5_inc_bi_active_stripes(%struct.bio* %141)
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %244

145:                                              ; preds = %138
  %146 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %147 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %146, i32 0, i32 2
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %13, align 8
  %154 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %155 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %154, i32 0, i32 2
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 2
  %161 = load %struct.bio*, %struct.bio** %160, align 8
  store %struct.bio* %161, %struct.bio** %7, align 8
  br label %162

162:                                              ; preds = %209, %145
  %163 = load i64, i64* %13, align 8
  %164 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %165 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %164, i32 0, i32 2
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @STRIPE_SECTORS, align 8
  %173 = add nsw i64 %171, %172
  %174 = icmp slt i64 %163, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %162
  %176 = load %struct.bio*, %struct.bio** %7, align 8
  %177 = icmp ne %struct.bio* %176, null
  br i1 %177, label %178, label %184

178:                                              ; preds = %175
  %179 = load %struct.bio*, %struct.bio** %7, align 8
  %180 = getelementptr inbounds %struct.bio, %struct.bio* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %13, align 8
  %183 = icmp sle i64 %181, %182
  br label %184

184:                                              ; preds = %178, %175, %162
  %185 = phi i1 [ false, %175 ], [ false, %162 ], [ %183, %178 ]
  br i1 %185, label %186, label %220

186:                                              ; preds = %184
  %187 = load %struct.bio*, %struct.bio** %7, align 8
  %188 = getelementptr inbounds %struct.bio, %struct.bio* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.bio*, %struct.bio** %7, align 8
  %191 = getelementptr inbounds %struct.bio, %struct.bio* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = ashr i32 %192, 9
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %189, %194
  %196 = load i64, i64* %13, align 8
  %197 = icmp sge i64 %195, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %186
  %199 = load %struct.bio*, %struct.bio** %7, align 8
  %200 = getelementptr inbounds %struct.bio, %struct.bio* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.bio*, %struct.bio** %7, align 8
  %203 = getelementptr inbounds %struct.bio, %struct.bio* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = ashr i32 %204, 9
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %201, %206
  store i64 %207, i64* %13, align 8
  br label %208

208:                                              ; preds = %198, %186
  br label %209

209:                                              ; preds = %208
  %210 = load %struct.bio*, %struct.bio** %7, align 8
  %211 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %212 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %211, i32 0, i32 2
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = call %struct.bio* @r5_next_bio(%struct.bio* %210, i64 %218)
  store %struct.bio* %219, %struct.bio** %7, align 8
  br label %162

220:                                              ; preds = %184
  %221 = load i64, i64* %13, align 8
  %222 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %223 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %222, i32 0, i32 2
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @STRIPE_SECTORS, align 8
  %231 = add nsw i64 %229, %230
  %232 = icmp sge i64 %221, %231
  br i1 %232, label %233, label %243

233:                                              ; preds = %220
  %234 = load i32, i32* @R5_OVERWRITE, align 4
  %235 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %236 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %235, i32 0, i32 2
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %236, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 1
  %242 = call i32 @set_bit(i32 %234, i32* %241)
  br label %243

243:                                              ; preds = %233, %220
  br label %244

244:                                              ; preds = %243, %138
  %245 = load %struct.bio**, %struct.bio*** %10, align 8
  %246 = load %struct.bio*, %struct.bio** %245, align 8
  %247 = getelementptr inbounds %struct.bio, %struct.bio* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %250 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %249, i32 0, i32 5
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* %8, align 4
  %253 = call i32 (i8*, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %248, i64 %251, i32 %252)
  %254 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %255 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %254, i32 0, i32 1
  %256 = call i32 @spin_unlock_irq(i32* %255)
  %257 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %258 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %257, i32 0, i32 0
  %259 = call i32 @spin_unlock(i32* %258)
  %260 = load %struct.r5conf*, %struct.r5conf** %11, align 8
  %261 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %260, i32 0, i32 1
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %290

266:                                              ; preds = %244
  %267 = load i32, i32* %12, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %290

269:                                              ; preds = %266
  %270 = load %struct.r5conf*, %struct.r5conf** %11, align 8
  %271 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %270, i32 0, i32 1
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %276 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %275, i32 0, i32 5
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @STRIPE_SECTORS, align 8
  %279 = call i32 @bitmap_startwrite(i64 %274, i64 %277, i64 %278, i32 0)
  %280 = load %struct.r5conf*, %struct.r5conf** %11, align 8
  %281 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = add nsw i64 %282, 1
  %284 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %285 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %284, i32 0, i32 4
  store i64 %283, i64* %285, align 8
  %286 = load i32, i32* @STRIPE_BIT_DELAY, align 4
  %287 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %288 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %287, i32 0, i32 3
  %289 = call i32 @set_bit(i32 %286, i32* %288)
  br label %290

290:                                              ; preds = %269, %266, %244
  store i32 1, i32* %5, align 4
  br label %307

291:                                              ; preds = %109, %85
  %292 = load i32, i32* @R5_Overlap, align 4
  %293 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %294 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %293, i32 0, i32 2
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %294, align 8
  %296 = load i32, i32* %8, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 1
  %300 = call i32 @set_bit(i32 %292, i32* %299)
  %301 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %302 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %301, i32 0, i32 1
  %303 = call i32 @spin_unlock_irq(i32* %302)
  %304 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %305 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %304, i32 0, i32 0
  %306 = call i32 @spin_unlock(i32* %305)
  store i32 0, i32* %5, align 4
  br label %307

307:                                              ; preds = %291, %290
  %308 = load i32, i32* %5, align 4
  ret i32 %308
}

declare dso_local i32 @pr_debug(i8*, i64, i64, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @raid5_inc_bi_active_stripes(%struct.bio*) #1

declare dso_local %struct.bio* @r5_next_bio(%struct.bio*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bitmap_startwrite(i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
