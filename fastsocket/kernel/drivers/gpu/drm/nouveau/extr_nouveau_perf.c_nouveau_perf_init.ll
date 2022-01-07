; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_perf.c_nouveau_perf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_perf.c_nouveau_perf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { i32, %struct.nvbios }
%struct.nvbios = type { i64, i32*, i32 }
%struct.nouveau_pm = type { i64, i32, %struct.TYPE_4__, %struct.nouveau_pm_level* }
%struct.TYPE_4__ = type { i64 }
%struct.nouveau_pm_level = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@NVBIOS_BMP = common dso_local global i64 0, align 8
@NV_50 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"perflvl %d, bad vid\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"perflvl %d, bad timing: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"performance_level_%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@nouveau_pm_static_profile_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_perf_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.nouveau_pm*, align 8
  %5 = alloca %struct.nvbios*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nouveau_pm_level*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %16 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %15)
  store %struct.nouveau_drm* %16, %struct.nouveau_drm** %3, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %18 = call %struct.nouveau_pm* @nouveau_pm(%struct.drm_device* %17)
  store %struct.nouveau_pm* %18, %struct.nouveau_pm** %4, align 8
  %19 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %20 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %19, i32 0, i32 1
  store %struct.nvbios* %20, %struct.nvbios** %5, align 8
  store i32 -1, i32* %13, align 4
  %21 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %22 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NVBIOS_BMP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %1
  %27 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %28 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %31 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 6
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 37
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %40 = call i32 @legacy_perf_init(%struct.drm_device* %39)
  br label %537

41:                                               ; preds = %26, %1
  %42 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %43 = call i32* @nouveau_perf_table(%struct.drm_device* %42, i32* %7)
  store i32* %43, i32** %6, align 8
  br label %44

44:                                               ; preds = %507, %502, %487, %62, %41
  %45 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  %48 = call i32* @nouveau_perf_entry(%struct.drm_device* %45, i32 %47, i32* %7, i32* %8, i32* %9, i32* %10)
  store i32* %48, i32** %6, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %537

50:                                               ; preds = %44
  %51 = load %struct.nouveau_pm*, %struct.nouveau_pm** %4, align 8
  %52 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %51, i32 0, i32 3
  %53 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %52, align 8
  %54 = load %struct.nouveau_pm*, %struct.nouveau_pm** %4, align 8
  %55 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %53, i64 %56
  store %struct.nouveau_pm_level* %57, %struct.nouveau_pm_level** %14, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 255
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %44

63:                                               ; preds = %50
  %64 = load i32, i32* %7, align 4
  switch i32 %64, label %465 [
    i32 18, label %65
    i32 19, label %65
    i32 21, label %65
    i32 33, label %94
    i32 35, label %94
    i32 36, label %94
    i32 37, label %159
    i32 48, label %191
    i32 53, label %198
    i32 64, label %244
  ]

65:                                               ; preds = %63, %63, %63
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 55
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %70 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = icmp sgt i32 %71, 56
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 56
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %78 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %73, %65
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ROM32(i32 %82)
  %84 = mul nsw i32 %83, 10
  %85 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %86 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ROM32(i32 %89)
  %91 = mul nsw i32 %90, 20
  %92 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %93 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  br label %465

94:                                               ; preds = %63, %63, %63
  %95 = load i32*, i32** %6, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %99 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %104 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 6
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ROM16(i32 %107)
  %109 = mul nsw i32 %108, 1000
  %110 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %111 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %113 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %116 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 8
  %119 = load i32, i32* %118, align 4
  %120 = trunc i32 %119 to i8
  %121 = sext i8 %120 to i32
  %122 = mul nsw i32 %121, 1000
  %123 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %124 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %128 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.TYPE_6__* @nv_device(i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 73
  br i1 %133, label %142, label %134

134:                                              ; preds = %94
  %135 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %136 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call %struct.TYPE_6__* @nv_device(i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 75
  br i1 %141, label %142, label %150

142:                                              ; preds = %134, %94
  %143 = load i32*, i32** %6, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 11
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ROM16(i32 %145)
  %147 = mul nsw i32 %146, 1000
  %148 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %149 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  br label %158

150:                                              ; preds = %134
  %151 = load i32*, i32** %6, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 11
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ROM16(i32 %153)
  %155 = mul nsw i32 %154, 2000
  %156 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %157 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %150, %142
  br label %465

159:                                              ; preds = %63
  %160 = load i32*, i32** %6, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 4
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %164 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load i32*, i32** %6, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 5
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %169 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load i32*, i32** %6, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 6
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ROM16(i32 %172)
  %174 = mul nsw i32 %173, 1000
  %175 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %176 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  %177 = load i32*, i32** %6, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 10
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @ROM16(i32 %179)
  %181 = mul nsw i32 %180, 1000
  %182 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %183 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 8
  %184 = load i32*, i32** %6, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 12
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @ROM16(i32 %186)
  %188 = mul nsw i32 %187, 1000
  %189 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %190 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 4
  br label %465

191:                                              ; preds = %63
  %192 = load i32*, i32** %6, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @ROM16(i32 %194)
  %196 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %197 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %196, i32 0, i32 5
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %63, %191
  %199 = load i32*, i32** %6, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 6
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %203 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 8
  %204 = load i32*, i32** %6, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 7
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %208 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = load i32*, i32** %6, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 8
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @ROM16(i32 %211)
  %213 = mul nsw i32 %212, 1000
  %214 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %215 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %214, i32 0, i32 2
  store i32 %213, i32* %215, align 8
  %216 = load i32*, i32** %6, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 10
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @ROM16(i32 %218)
  %220 = mul nsw i32 %219, 1000
  %221 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %222 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %221, i32 0, i32 4
  store i32 %220, i32* %222, align 8
  %223 = load i32*, i32** %6, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 12
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @ROM16(i32 %225)
  %227 = mul nsw i32 %226, 1000
  %228 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %229 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %228, i32 0, i32 3
  store i32 %227, i32* %229, align 4
  %230 = load i32*, i32** %6, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 16
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @ROM16(i32 %232)
  %234 = mul nsw i32 %233, 1000
  %235 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %236 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %235, i32 0, i32 6
  store i32 %234, i32* %236, align 8
  %237 = load i32*, i32** %6, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 20
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @ROM16(i32 %239)
  %241 = mul nsw i32 %240, 1000
  %242 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %243 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %242, i32 0, i32 7
  store i32 %241, i32* %243, align 4
  br label %465

244:                                              ; preds = %63
  %245 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %246 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %245, i32 0, i32 0
  store i32 0, i32* %246, align 8
  %247 = load i32*, i32** %6, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 2
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %251 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  %252 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %253 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call %struct.TYPE_6__* @nv_device(i32 %254)
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @NV_50, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %328

260:                                              ; preds = %244
  %261 = load i32*, i32** %6, align 8
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* %10, align 4
  %264 = mul nsw i32 0, %263
  %265 = add nsw i32 %262, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %261, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @ROM16(i32 %268)
  %270 = and i32 %269, 4095
  %271 = mul nsw i32 %270, 1000
  %272 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %273 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %272, i32 0, i32 2
  store i32 %271, i32* %273, align 8
  %274 = load i32*, i32** %6, align 8
  %275 = load i32, i32* %8, align 4
  %276 = load i32, i32* %10, align 4
  %277 = mul nsw i32 1, %276
  %278 = add nsw i32 %275, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %274, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @ROM16(i32 %281)
  %283 = and i32 %282, 4095
  %284 = mul nsw i32 %283, 1000
  %285 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %286 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %285, i32 0, i32 4
  store i32 %284, i32* %286, align 8
  %287 = load i32*, i32** %6, align 8
  %288 = load i32, i32* %8, align 4
  %289 = load i32, i32* %10, align 4
  %290 = mul nsw i32 2, %289
  %291 = add nsw i32 %288, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %287, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @ROM16(i32 %294)
  %296 = and i32 %295, 4095
  %297 = mul nsw i32 %296, 1000
  %298 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %299 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %298, i32 0, i32 3
  store i32 %297, i32* %299, align 4
  %300 = load i32*, i32** %6, align 8
  %301 = load i32, i32* %8, align 4
  %302 = load i32, i32* %10, align 4
  %303 = mul nsw i32 3, %302
  %304 = add nsw i32 %301, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %300, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @ROM16(i32 %307)
  %309 = and i32 %308, 4095
  %310 = mul nsw i32 %309, 1000
  %311 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %312 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %311, i32 0, i32 6
  store i32 %310, i32* %312, align 8
  %313 = load i32*, i32** %6, align 8
  %314 = load i32, i32* %8, align 4
  %315 = load i32, i32* %10, align 4
  %316 = mul nsw i32 4, %315
  %317 = add nsw i32 %314, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %313, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @ROM16(i32 %320)
  %322 = and i32 %321, 4095
  %323 = mul nsw i32 %322, 1000
  %324 = sext i32 %323 to i64
  %325 = inttoptr i64 %324 to i8*
  %326 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %327 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %326, i32 0, i32 18
  store i8* %325, i8** %327, align 8
  br label %464

328:                                              ; preds = %244
  %329 = load i32*, i32** %6, align 8
  %330 = load i32, i32* %8, align 4
  %331 = load i32, i32* %10, align 4
  %332 = mul nsw i32 0, %331
  %333 = add nsw i32 %330, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %329, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @ROM16(i32 %336)
  %338 = and i32 %337, 4095
  %339 = mul nsw i32 %338, 1000
  %340 = sext i32 %339 to i64
  %341 = inttoptr i64 %340 to i8*
  %342 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %343 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %342, i32 0, i32 17
  store i8* %341, i8** %343, align 8
  %344 = load i32*, i32** %6, align 8
  %345 = load i32, i32* %8, align 4
  %346 = load i32, i32* %10, align 4
  %347 = mul nsw i32 1, %346
  %348 = add nsw i32 %345, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %344, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @ROM16(i32 %351)
  %353 = and i32 %352, 4095
  %354 = mul nsw i32 %353, 1000
  %355 = sext i32 %354 to i64
  %356 = inttoptr i64 %355 to i8*
  %357 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %358 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %357, i32 0, i32 16
  store i8* %356, i8** %358, align 8
  %359 = load i32*, i32** %6, align 8
  %360 = load i32, i32* %8, align 4
  %361 = load i32, i32* %10, align 4
  %362 = mul nsw i32 2, %361
  %363 = add nsw i32 %360, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %359, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @ROM16(i32 %366)
  %368 = and i32 %367, 4095
  %369 = mul nsw i32 %368, 1000
  %370 = sext i32 %369 to i64
  %371 = inttoptr i64 %370 to i8*
  %372 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %373 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %372, i32 0, i32 15
  store i8* %371, i8** %373, align 8
  %374 = load i32*, i32** %6, align 8
  %375 = load i32, i32* %8, align 4
  %376 = load i32, i32* %10, align 4
  %377 = mul nsw i32 3, %376
  %378 = add nsw i32 %375, %377
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %374, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @ROM16(i32 %381)
  %383 = and i32 %382, 4095
  %384 = mul nsw i32 %383, 1000
  %385 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %386 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %385, i32 0, i32 4
  store i32 %384, i32* %386, align 8
  %387 = load i32*, i32** %6, align 8
  %388 = load i32, i32* %8, align 4
  %389 = load i32, i32* %10, align 4
  %390 = mul nsw i32 4, %389
  %391 = add nsw i32 %388, %390
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %387, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @ROM16(i32 %394)
  %396 = and i32 %395, 4095
  %397 = mul nsw i32 %396, 1000
  %398 = sext i32 %397 to i64
  %399 = inttoptr i64 %398 to i8*
  %400 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %401 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %400, i32 0, i32 14
  store i8* %399, i8** %401, align 8
  %402 = load i32*, i32** %6, align 8
  %403 = load i32, i32* %8, align 4
  %404 = load i32, i32* %10, align 4
  %405 = mul nsw i32 5, %404
  %406 = add nsw i32 %403, %405
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %402, i64 %407
  %409 = load i32, i32* %408, align 4
  %410 = call i32 @ROM16(i32 %409)
  %411 = and i32 %410, 4095
  %412 = mul nsw i32 %411, 1000
  %413 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %414 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %413, i32 0, i32 3
  store i32 %412, i32* %414, align 4
  %415 = load i32*, i32** %6, align 8
  %416 = load i32, i32* %8, align 4
  %417 = load i32, i32* %10, align 4
  %418 = mul nsw i32 6, %417
  %419 = add nsw i32 %416, %418
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %415, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @ROM16(i32 %422)
  %424 = and i32 %423, 4095
  %425 = mul nsw i32 %424, 1000
  %426 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %427 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %426, i32 0, i32 6
  store i32 %425, i32* %427, align 8
  %428 = load i32*, i32** %6, align 8
  %429 = load i32, i32* %8, align 4
  %430 = load i32, i32* %10, align 4
  %431 = mul nsw i32 10, %430
  %432 = add nsw i32 %429, %431
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %428, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = call i32 @ROM16(i32 %435)
  %437 = and i32 %436, 4095
  %438 = mul nsw i32 %437, 1000
  %439 = sext i32 %438 to i64
  %440 = inttoptr i64 %439 to i8*
  %441 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %442 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %441, i32 0, i32 13
  store i8* %440, i8** %442, align 8
  %443 = load i32*, i32** %6, align 8
  %444 = load i32, i32* %8, align 4
  %445 = load i32, i32* %10, align 4
  %446 = mul nsw i32 11, %445
  %447 = add nsw i32 %444, %446
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32, i32* %443, i64 %448
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @ROM16(i32 %450)
  %452 = and i32 %451, 4095
  %453 = mul nsw i32 %452, 1000
  %454 = sext i32 %453 to i64
  %455 = inttoptr i64 %454 to i8*
  %456 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %457 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %456, i32 0, i32 12
  store i8* %455, i8** %457, align 8
  %458 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %459 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %458, i32 0, i32 4
  %460 = load i32, i32* %459, align 8
  %461 = sdiv i32 %460, 2
  %462 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %463 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %462, i32 0, i32 2
  store i32 %461, i32* %463, align 8
  br label %464

464:                                              ; preds = %328, %260
  br label %465

465:                                              ; preds = %63, %464, %198, %159, %158, %79
  %466 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %467 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %468 = call i32 @nouveau_perf_voltage(%struct.drm_device* %466, %struct.nouveau_pm_level* %467)
  %469 = load %struct.nouveau_pm*, %struct.nouveau_pm** %4, align 8
  %470 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %469, i32 0, i32 2
  %471 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %470, i32 0, i32 0
  %472 = load i64, i64* %471, align 8
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %492

474:                                              ; preds = %465
  %475 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %476 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %492

479:                                              ; preds = %474
  %480 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %481 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %482 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 4
  %484 = call i32 @nouveau_volt_vid_lookup(%struct.drm_device* %480, i32 %483)
  store i32 %484, i32* %12, align 4
  %485 = load i32, i32* %12, align 4
  %486 = icmp slt i32 %485, 0
  br i1 %486, label %487, label %491

487:                                              ; preds = %479
  %488 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %489 = load i32, i32* %13, align 4
  %490 = call i32 (%struct.nouveau_drm*, i8*, i32, ...) @NV_DEBUG(%struct.nouveau_drm* %488, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %489)
  br label %44

491:                                              ; preds = %479
  br label %492

492:                                              ; preds = %491, %474, %465
  %493 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %494 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %495 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %494, i32 0, i32 3
  %496 = load i32, i32* %495, align 4
  %497 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %498 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %497, i32 0, i32 11
  %499 = call i32 @nouveau_mem_timing_calc(%struct.drm_device* %493, i32 %496, i32* %498)
  store i32 %499, i32* %11, align 4
  %500 = load i32, i32* %11, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %507

502:                                              ; preds = %492
  %503 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %504 = load i32, i32* %13, align 4
  %505 = load i32, i32* %11, align 4
  %506 = call i32 (%struct.nouveau_drm*, i8*, i32, ...) @NV_DEBUG(%struct.nouveau_drm* %503, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %504, i32 %505)
  br label %44

507:                                              ; preds = %492
  %508 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %509 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %508, i32 0, i32 10
  %510 = load i32, i32* %509, align 8
  %511 = load i32, i32* %13, align 4
  %512 = call i32 @snprintf(i32 %510, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %511)
  %513 = load i32, i32* %13, align 4
  %514 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %515 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %514, i32 0, i32 8
  store i32 %513, i32* %515, align 8
  %516 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %517 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %516, i32 0, i32 9
  %518 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %517, i32 0, i32 2
  %519 = load i32, i32* %518, align 8
  %520 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %521 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %520, i32 0, i32 8
  %522 = load i32, i32* %521, align 8
  %523 = call i32 @snprintf(i32 %519, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %522)
  %524 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %525 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %524, i32 0, i32 9
  %526 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %525, i32 0, i32 1
  store i32* @nouveau_pm_static_profile_func, i32** %526, align 8
  %527 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %14, align 8
  %528 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %527, i32 0, i32 9
  %529 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %528, i32 0, i32 0
  %530 = load %struct.nouveau_pm*, %struct.nouveau_pm** %4, align 8
  %531 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %530, i32 0, i32 1
  %532 = call i32 @list_add_tail(i32* %529, i32* %531)
  %533 = load %struct.nouveau_pm*, %struct.nouveau_pm** %4, align 8
  %534 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %533, i32 0, i32 0
  %535 = load i64, i64* %534, align 8
  %536 = add i64 %535, 1
  store i64 %536, i64* %534, align 8
  br label %44

537:                                              ; preds = %38, %44
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_pm* @nouveau_pm(%struct.drm_device*) #1

declare dso_local i32 @legacy_perf_init(%struct.drm_device*) #1

declare dso_local i32* @nouveau_perf_table(%struct.drm_device*, i32*) #1

declare dso_local i32* @nouveau_perf_entry(%struct.drm_device*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ROM32(i32) #1

declare dso_local i32 @ROM16(i32) #1

declare dso_local %struct.TYPE_6__* @nv_device(i32) #1

declare dso_local i32 @nouveau_perf_voltage(%struct.drm_device*, %struct.nouveau_pm_level*) #1

declare dso_local i32 @nouveau_volt_vid_lookup(%struct.drm_device*, i32) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32, ...) #1

declare dso_local i32 @nouveau_mem_timing_calc(%struct.drm_device*, i32, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
