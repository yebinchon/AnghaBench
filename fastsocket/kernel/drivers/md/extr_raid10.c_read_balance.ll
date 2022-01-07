; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_read_balance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_read_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i64, i32, i32 }
%struct.r10conf = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.geom }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.geom = type { i32, i32 }
%struct.r10bio = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i64 }

@MaxSector = common dso_local global i64 0, align 8
@IO_BLOCKED = common dso_local global i64 0, align 8
@Faulty = common dso_local global i32 0, align 4
@Unmerged = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.md_rdev* (%struct.r10conf*, %struct.r10bio*, i32*)* @read_balance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.md_rdev* @read_balance(%struct.r10conf* %0, %struct.r10bio* %1, i32* %2) #0 {
  %4 = alloca %struct.r10conf*, align 8
  %5 = alloca %struct.r10bio*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.md_rdev*, align 8
  %15 = alloca %struct.md_rdev*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.geom*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.r10conf* %0, %struct.r10conf** %4, align 8
  store %struct.r10bio* %1, %struct.r10bio** %5, align 8
  store i32* %2, i32** %6, align 8
  %23 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %24 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  %26 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %27 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  store %struct.md_rdev* null, %struct.md_rdev** %15, align 8
  %29 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %30 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %29, i32 0, i32 4
  store %struct.geom* %30, %struct.geom** %18, align 8
  %31 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %32 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %33 = call i32 @raid10_find_phys(%struct.r10conf* %31, %struct.r10bio* %32)
  %34 = call i32 (...) @rcu_read_lock()
  br label %35

35:                                               ; preds = %321, %3
  %36 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %37 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %10, align 4
  store i32 -1, i32* %17, align 4
  store %struct.md_rdev* null, %struct.md_rdev** %14, align 8
  %39 = load i64, i64* @MaxSector, align 8
  store i64 %39, i64* %13, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %16, align 4
  %40 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %41 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MaxSector, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %35
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %53 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 0, i32* %16, align 4
  br label %57

57:                                               ; preds = %56, %47, %35
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %297, %57
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %61 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %300

64:                                               ; preds = %58
  %65 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %66 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @IO_BLOCKED, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %297

76:                                               ; preds = %64
  %77 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %78 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %8, align 4
  %85 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %86 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %85, i32 0, i32 3
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.md_rdev* @rcu_dereference(i32 %92)
  store %struct.md_rdev* %93, %struct.md_rdev** %15, align 8
  %94 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %95 = icmp eq %struct.md_rdev* %94, null
  br i1 %95, label %124, label %96

96:                                               ; preds = %76
  %97 = load i32, i32* @Faulty, align 4
  %98 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %99 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %98, i32 0, i32 1
  %100 = call i64 @test_bit(i32 %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %124, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* @Unmerged, align 4
  %104 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %105 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %104, i32 0, i32 1
  %106 = call i64 @test_bit(i32 %103, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %124, label %108

108:                                              ; preds = %102
  %109 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %110 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %109, i32 0, i32 3
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %116, %118
  %120 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %121 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp sgt i64 %119, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %108, %102, %96, %76
  %125 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %126 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %125, i32 0, i32 3
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call %struct.md_rdev* @rcu_dereference(i32 %132)
  store %struct.md_rdev* %133, %struct.md_rdev** %15, align 8
  br label %134

134:                                              ; preds = %124, %108
  %135 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %136 = icmp eq %struct.md_rdev* %135, null
  br i1 %136, label %149, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* @Faulty, align 4
  %139 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %140 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %139, i32 0, i32 1
  %141 = call i64 @test_bit(i32 %138, i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %137
  %144 = load i32, i32* @Unmerged, align 4
  %145 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %146 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %145, i32 0, i32 1
  %147 = call i64 @test_bit(i32 %144, i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143, %137, %134
  br label %297

150:                                              ; preds = %143
  %151 = load i32, i32* @In_sync, align 4
  %152 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %153 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %152, i32 0, i32 1
  %154 = call i64 @test_bit(i32 %151, i32* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %173, label %156

156:                                              ; preds = %150
  %157 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %158 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %157, i32 0, i32 3
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %164, %166
  %168 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %169 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp sgt i64 %167, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %156
  br label %297

173:                                              ; preds = %156, %150
  %174 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %175 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %174, i32 0, i32 3
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %21, align 8
  %182 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %183 = load i64, i64* %21, align 8
  %184 = load i32, i32* %10, align 4
  %185 = call i64 @is_badblock(%struct.md_rdev* %182, i64 %183, i32 %184, i64* %19, i32* %20)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %238

187:                                              ; preds = %173
  %188 = load i64, i64* %13, align 8
  %189 = load i64, i64* @MaxSector, align 8
  %190 = icmp slt i64 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  br label %297

192:                                              ; preds = %187
  %193 = load i64, i64* %19, align 8
  %194 = load i64, i64* %21, align 8
  %195 = icmp sle i64 %193, %194
  br i1 %195, label %196, label %219

196:                                              ; preds = %192
  %197 = load i64, i64* %21, align 8
  %198 = load i64, i64* %19, align 8
  %199 = sub nsw i64 %197, %198
  %200 = load i32, i32* %20, align 4
  %201 = sext i32 %200 to i64
  %202 = sub nsw i64 %201, %199
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %20, align 4
  %204 = load i32, i32* %16, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %196
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %20, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i32, i32* %20, align 4
  store i32 %211, i32* %10, align 4
  br label %212

212:                                              ; preds = %210, %206, %196
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* %10, align 4
  %215 = icmp sgt i32 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = load i32, i32* %10, align 4
  store i32 %217, i32* %11, align 4
  br label %218

218:                                              ; preds = %216, %212
  br label %237

219:                                              ; preds = %192
  %220 = load i64, i64* %19, align 8
  %221 = load i64, i64* %21, align 8
  %222 = sub nsw i64 %220, %221
  store i64 %222, i64* %22, align 8
  %223 = load i64, i64* %22, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = icmp sgt i64 %223, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %219
  %228 = load i64, i64* %22, align 8
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %11, align 4
  %230 = load i32, i32* %9, align 4
  store i32 %230, i32* %17, align 4
  %231 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  store %struct.md_rdev* %231, %struct.md_rdev** %14, align 8
  br label %232

232:                                              ; preds = %227, %219
  %233 = load i32, i32* %16, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %232
  br label %300

236:                                              ; preds = %232
  br label %237

237:                                              ; preds = %236, %218
  br label %297

238:                                              ; preds = %173
  %239 = load i32, i32* %10, align 4
  store i32 %239, i32* %11, align 4
  br label %240

240:                                              ; preds = %238
  %241 = load i32, i32* %16, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %240
  br label %300

244:                                              ; preds = %240
  %245 = load %struct.geom*, %struct.geom** %18, align 8
  %246 = getelementptr inbounds %struct.geom, %struct.geom* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = icmp sgt i32 %247, 1
  br i1 %248, label %249, label %255

249:                                              ; preds = %244
  %250 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %251 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %250, i32 0, i32 2
  %252 = call i32 @atomic_read(i32* %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %249
  br label %300

255:                                              ; preds = %249, %244
  %256 = load %struct.geom*, %struct.geom** %18, align 8
  %257 = getelementptr inbounds %struct.geom, %struct.geom* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp sgt i32 %258, 1
  br i1 %259, label %260, label %269

260:                                              ; preds = %255
  %261 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %262 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %261, i32 0, i32 3
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %262, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %12, align 8
  br label %288

269:                                              ; preds = %255
  %270 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %271 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %270, i32 0, i32 3
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %271, align 8
  %273 = load i32, i32* %9, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %279 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %278, i32 0, i32 3
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %279, align 8
  %281 = load i32, i32* %8, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = sub nsw i64 %277, %285
  %287 = call i64 @abs(i64 %286)
  store i64 %287, i64* %12, align 8
  br label %288

288:                                              ; preds = %269, %260
  %289 = load i64, i64* %12, align 8
  %290 = load i64, i64* %13, align 8
  %291 = icmp slt i64 %289, %290
  br i1 %291, label %292, label %296

292:                                              ; preds = %288
  %293 = load i64, i64* %12, align 8
  store i64 %293, i64* %13, align 8
  %294 = load i32, i32* %9, align 4
  store i32 %294, i32* %17, align 4
  %295 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  store %struct.md_rdev* %295, %struct.md_rdev** %14, align 8
  br label %296

296:                                              ; preds = %292, %288
  br label %297

297:                                              ; preds = %296, %237, %191, %172, %149, %75
  %298 = load i32, i32* %9, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %9, align 4
  br label %58

300:                                              ; preds = %254, %243, %235, %58
  %301 = load i32, i32* %9, align 4
  %302 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %303 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = icmp sge i32 %301, %304
  br i1 %305, label %306, label %309

306:                                              ; preds = %300
  %307 = load i32, i32* %17, align 4
  store i32 %307, i32* %9, align 4
  %308 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  store %struct.md_rdev* %308, %struct.md_rdev** %15, align 8
  br label %309

309:                                              ; preds = %306, %300
  %310 = load i32, i32* %9, align 4
  %311 = icmp sge i32 %310, 0
  br i1 %311, label %312, label %331

312:                                              ; preds = %309
  %313 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %314 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %313, i32 0, i32 2
  %315 = call i32 @atomic_inc(i32* %314)
  %316 = load i32, i32* @Faulty, align 4
  %317 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %318 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %317, i32 0, i32 1
  %319 = call i64 @test_bit(i32 %316, i32* %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %312
  %322 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %323 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %324 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %323, i32 0, i32 2
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %324, align 8
  %326 = call i32 @rdev_dec_pending(%struct.md_rdev* %322, %struct.TYPE_6__* %325)
  br label %35

327:                                              ; preds = %312
  %328 = load i32, i32* %9, align 4
  %329 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %330 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %329, i32 0, i32 2
  store i32 %328, i32* %330, align 4
  br label %332

331:                                              ; preds = %309
  store %struct.md_rdev* null, %struct.md_rdev** %15, align 8
  br label %332

332:                                              ; preds = %331, %327
  %333 = call i32 (...) @rcu_read_unlock()
  %334 = load i32, i32* %11, align 4
  %335 = load i32*, i32** %6, align 8
  store i32 %334, i32* %335, align 4
  %336 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  ret %struct.md_rdev* %336
}

declare dso_local i32 @raid10_find_phys(%struct.r10conf*, %struct.r10bio*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @is_badblock(%struct.md_rdev*, i64, i32, i64*, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.TYPE_6__*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
