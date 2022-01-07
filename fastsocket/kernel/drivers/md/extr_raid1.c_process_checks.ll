; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_process_checks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_process_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1bio = type { i32, i32, i64, %struct.bio**, %struct.mddev* }
%struct.bio = type { i32, i32, i32, %struct.bio_vec*, i32, i64, i32*, i64, i64, i32* }
%struct.bio_vec = type { i32, %struct.page*, i64 }
%struct.page = type { i32 }
%struct.mddev = type { i32, i32, %struct.r1conf* }
%struct.r1conf = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@end_sync_read = common dso_local global i32* null, align 8
@BIO_UPTODATE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MD_RECOVERY_CHECK = common dso_local global i32 0, align 4
@BIO_POOL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r1bio*)* @process_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_checks(%struct.r1bio* %0) #0 {
  %2 = alloca %struct.r1bio*, align 8
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r1conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.bio_vec*, align 8
  store %struct.r1bio* %0, %struct.r1bio** %2, align 8
  %15 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %16 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %15, i32 0, i32 4
  %17 = load %struct.mddev*, %struct.mddev** %16, align 8
  store %struct.mddev* %17, %struct.mddev** %3, align 8
  %18 = load %struct.mddev*, %struct.mddev** %3, align 8
  %19 = getelementptr inbounds %struct.mddev, %struct.mddev* %18, i32 0, i32 2
  %20 = load %struct.r1conf*, %struct.r1conf** %19, align 8
  store %struct.r1conf* %20, %struct.r1conf** %4, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %72, %1
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %24 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 2
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %21
  %29 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %30 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %29, i32 0, i32 3
  %31 = load %struct.bio**, %struct.bio*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bio*, %struct.bio** %31, i64 %33
  %35 = load %struct.bio*, %struct.bio** %34, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 9
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** @end_sync_read, align 8
  %39 = icmp eq i32* %37, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %28
  %41 = load i32, i32* @BIO_UPTODATE, align 4
  %42 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %43 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %42, i32 0, i32 3
  %44 = load %struct.bio**, %struct.bio*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.bio*, %struct.bio** %44, i64 %46
  %48 = load %struct.bio*, %struct.bio** %47, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 0
  %50 = call i64 @test_bit(i32 %41, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %40
  %53 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %54 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %53, i32 0, i32 3
  %55 = load %struct.bio**, %struct.bio*** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.bio*, %struct.bio** %55, i64 %57
  %59 = load %struct.bio*, %struct.bio** %58, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 9
  store i32* null, i32** %60, align 8
  %61 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %62 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load %struct.mddev*, %struct.mddev** %3, align 8
  %70 = call i32 @rdev_dec_pending(%struct.TYPE_4__* %68, %struct.mddev* %69)
  br label %75

71:                                               ; preds = %40, %28
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %21

75:                                               ; preds = %52, %21
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %78 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %80 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = sdiv i32 %82, 512
  %84 = add nsw i32 %81, %83
  %85 = sub nsw i32 %84, 1
  %86 = load i32, i32* @PAGE_SHIFT, align 4
  %87 = sub nsw i32 %86, 9
  %88 = ashr i32 %85, %87
  store i32 %88, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %315, %75
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %92 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %93, 2
  %95 = icmp slt i32 %90, %94
  br i1 %95, label %96, label %318

96:                                               ; preds = %89
  %97 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %98 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %97, i32 0, i32 3
  %99 = load %struct.bio**, %struct.bio*** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.bio*, %struct.bio** %99, i64 %101
  %103 = load %struct.bio*, %struct.bio** %102, align 8
  store %struct.bio* %103, %struct.bio** %9, align 8
  %104 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %105 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %104, i32 0, i32 3
  %106 = load %struct.bio**, %struct.bio*** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.bio*, %struct.bio** %106, i64 %108
  %110 = load %struct.bio*, %struct.bio** %109, align 8
  store %struct.bio* %110, %struct.bio** %10, align 8
  %111 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %112 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %111, i32 0, i32 3
  %113 = load %struct.bio**, %struct.bio*** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.bio*, %struct.bio** %113, i64 %115
  %117 = load %struct.bio*, %struct.bio** %116, align 8
  %118 = getelementptr inbounds %struct.bio, %struct.bio* %117, i32 0, i32 9
  %119 = load i32*, i32** %118, align 8
  %120 = load i32*, i32** @end_sync_read, align 8
  %121 = icmp ne i32* %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %96
  br label %315

123:                                              ; preds = %96
  %124 = load i32, i32* @BIO_UPTODATE, align 4
  %125 = load %struct.bio*, %struct.bio** %10, align 8
  %126 = getelementptr inbounds %struct.bio, %struct.bio* %125, i32 0, i32 0
  %127 = call i64 @test_bit(i32 %124, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %169

129:                                              ; preds = %123
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %167, %129
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %8, align 4
  %134 = icmp ne i32 %132, 0
  br i1 %134, label %135, label %168

135:                                              ; preds = %131
  %136 = load %struct.bio*, %struct.bio** %9, align 8
  %137 = getelementptr inbounds %struct.bio, %struct.bio* %136, i32 0, i32 3
  %138 = load %struct.bio_vec*, %struct.bio_vec** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %138, i64 %140
  %142 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %141, i32 0, i32 1
  %143 = load %struct.page*, %struct.page** %142, align 8
  store %struct.page* %143, %struct.page** %12, align 8
  %144 = load %struct.bio*, %struct.bio** %10, align 8
  %145 = getelementptr inbounds %struct.bio, %struct.bio* %144, i32 0, i32 3
  %146 = load %struct.bio_vec*, %struct.bio_vec** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %146, i64 %148
  %150 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %149, i32 0, i32 1
  %151 = load %struct.page*, %struct.page** %150, align 8
  store %struct.page* %151, %struct.page** %13, align 8
  %152 = load %struct.page*, %struct.page** %12, align 8
  %153 = call i32 @page_address(%struct.page* %152)
  %154 = load %struct.page*, %struct.page** %13, align 8
  %155 = call i32 @page_address(%struct.page* %154)
  %156 = load %struct.bio*, %struct.bio** %10, align 8
  %157 = getelementptr inbounds %struct.bio, %struct.bio* %156, i32 0, i32 3
  %158 = load %struct.bio_vec*, %struct.bio_vec** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %158, i64 %160
  %162 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @memcmp(i32 %153, i32 %155, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %135
  br label %168

167:                                              ; preds = %135
  br label %131

168:                                              ; preds = %166, %131
  br label %170

169:                                              ; preds = %123
  store i32 0, i32* %8, align 4
  br label %170

170:                                              ; preds = %169, %168
  %171 = load i32, i32* %8, align 4
  %172 = icmp sge i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %175 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.mddev*, %struct.mddev** %3, align 8
  %178 = getelementptr inbounds %struct.mddev, %struct.mddev* %177, i32 0, i32 1
  %179 = call i32 @atomic64_add(i32 %176, i32* %178)
  br label %180

180:                                              ; preds = %173, %170
  %181 = load i32, i32* %8, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %195, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* @MD_RECOVERY_CHECK, align 4
  %185 = load %struct.mddev*, %struct.mddev** %3, align 8
  %186 = getelementptr inbounds %struct.mddev, %struct.mddev* %185, i32 0, i32 0
  %187 = call i64 @test_bit(i32 %184, i32* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %208

189:                                              ; preds = %183
  %190 = load i32, i32* @BIO_UPTODATE, align 4
  %191 = load %struct.bio*, %struct.bio** %10, align 8
  %192 = getelementptr inbounds %struct.bio, %struct.bio* %191, i32 0, i32 0
  %193 = call i64 @test_bit(i32 %190, i32* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %208

195:                                              ; preds = %189, %180
  %196 = load %struct.bio*, %struct.bio** %10, align 8
  %197 = getelementptr inbounds %struct.bio, %struct.bio* %196, i32 0, i32 9
  store i32* null, i32** %197, align 8
  %198 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %199 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %198, i32 0, i32 1
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = load %struct.mddev*, %struct.mddev** %3, align 8
  %207 = call i32 @rdev_dec_pending(%struct.TYPE_4__* %205, %struct.mddev* %206)
  br label %315

208:                                              ; preds = %189, %183
  %209 = load i32, i32* %7, align 4
  %210 = load %struct.bio*, %struct.bio** %10, align 8
  %211 = getelementptr inbounds %struct.bio, %struct.bio* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %213 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = shl i32 %214, 9
  %216 = load %struct.bio*, %struct.bio** %10, align 8
  %217 = getelementptr inbounds %struct.bio, %struct.bio* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  %218 = load %struct.bio*, %struct.bio** %10, align 8
  %219 = getelementptr inbounds %struct.bio, %struct.bio* %218, i32 0, i32 8
  store i64 0, i64* %219, align 8
  %220 = load %struct.bio*, %struct.bio** %10, align 8
  %221 = getelementptr inbounds %struct.bio, %struct.bio* %220, i32 0, i32 7
  store i64 0, i64* %221, align 8
  %222 = load i32, i32* @BIO_POOL_MASK, align 4
  %223 = sub nsw i32 %222, 1
  %224 = xor i32 %223, -1
  %225 = load %struct.bio*, %struct.bio** %10, align 8
  %226 = getelementptr inbounds %struct.bio, %struct.bio* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = and i32 %227, %224
  store i32 %228, i32* %226, align 8
  %229 = load i32, i32* @BIO_UPTODATE, align 4
  %230 = shl i32 1, %229
  %231 = load %struct.bio*, %struct.bio** %10, align 8
  %232 = getelementptr inbounds %struct.bio, %struct.bio* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  %235 = load %struct.bio*, %struct.bio** %10, align 8
  %236 = getelementptr inbounds %struct.bio, %struct.bio* %235, i32 0, i32 6
  store i32* null, i32** %236, align 8
  %237 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %238 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %241 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %240, i32 0, i32 1
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %241, align 8
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %239, %249
  %251 = load %struct.bio*, %struct.bio** %10, align 8
  %252 = getelementptr inbounds %struct.bio, %struct.bio* %251, i32 0, i32 5
  store i64 %250, i64* %252, align 8
  %253 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %254 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %253, i32 0, i32 1
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %254, align 8
  %256 = load i32, i32* %6, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.bio*, %struct.bio** %10, align 8
  %264 = getelementptr inbounds %struct.bio, %struct.bio* %263, i32 0, i32 4
  store i32 %262, i32* %264, align 8
  %265 = load %struct.bio*, %struct.bio** %10, align 8
  %266 = getelementptr inbounds %struct.bio, %struct.bio* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  store i32 %267, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %268

268:                                              ; preds = %311, %208
  %269 = load i32, i32* %8, align 4
  %270 = load i32, i32* %7, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %314

272:                                              ; preds = %268
  %273 = load %struct.bio*, %struct.bio** %10, align 8
  %274 = getelementptr inbounds %struct.bio, %struct.bio* %273, i32 0, i32 3
  %275 = load %struct.bio_vec*, %struct.bio_vec** %274, align 8
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %275, i64 %277
  store %struct.bio_vec* %278, %struct.bio_vec** %14, align 8
  %279 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %280 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %279, i32 0, i32 2
  store i64 0, i64* %280, align 8
  %281 = load i32, i32* %11, align 4
  %282 = load i32, i32* @PAGE_SIZE, align 4
  %283 = icmp sgt i32 %281, %282
  br i1 %283, label %284, label %288

284:                                              ; preds = %272
  %285 = load i32, i32* @PAGE_SIZE, align 4
  %286 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %287 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %286, i32 0, i32 0
  store i32 %285, i32* %287, align 8
  br label %292

288:                                              ; preds = %272
  %289 = load i32, i32* %11, align 4
  %290 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %291 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 8
  br label %292

292:                                              ; preds = %288, %284
  %293 = load i32, i32* @PAGE_SIZE, align 4
  %294 = load i32, i32* %11, align 4
  %295 = sub nsw i32 %294, %293
  store i32 %295, i32* %11, align 4
  %296 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %297 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %296, i32 0, i32 1
  %298 = load %struct.page*, %struct.page** %297, align 8
  %299 = call i32 @page_address(%struct.page* %298)
  %300 = load %struct.bio*, %struct.bio** %9, align 8
  %301 = getelementptr inbounds %struct.bio, %struct.bio* %300, i32 0, i32 3
  %302 = load %struct.bio_vec*, %struct.bio_vec** %301, align 8
  %303 = load i32, i32* %8, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %302, i64 %304
  %306 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %305, i32 0, i32 1
  %307 = load %struct.page*, %struct.page** %306, align 8
  %308 = call i32 @page_address(%struct.page* %307)
  %309 = load i32, i32* @PAGE_SIZE, align 4
  %310 = call i32 @memcpy(i32 %299, i32 %308, i32 %309)
  br label %311

311:                                              ; preds = %292
  %312 = load i32, i32* %8, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %8, align 4
  br label %268

314:                                              ; preds = %268
  br label %315

315:                                              ; preds = %314, %195, %122
  %316 = load i32, i32* %6, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %6, align 4
  br label %89

318:                                              ; preds = %89
  ret i32 0
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rdev_dec_pending(%struct.TYPE_4__*, %struct.mddev*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
