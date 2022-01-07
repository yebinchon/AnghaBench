; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_alloc_surface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_alloc_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.radeon_virt_surface* }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }
%struct.radeon_virt_surface = type { i32, i32, i32, i64, %struct.drm_file* }
%struct.drm_file = type { i32 }

@RADEON_SURF_ADDRESS_FIXED_MASK = common dso_local global i32 0, align 4
@RADEON_MAX_SURFACES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.drm_file*)* @alloc_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_surface(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.radeon_virt_surface*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %46, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @RADEON_SURF_ADDRESS_FIXED_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @RADEON_SURF_ADDRESS_FIXED_MASK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @RADEON_SURF_ADDRESS_FIXED_MASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %35, %30, %25, %3
  store i32 -1, i32* %4, align 4
  br label %403

47:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %108, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @RADEON_MAX_SURFACES, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %111

52:                                               ; preds = %48
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %107

62:                                               ; preds = %52
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %63, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %62
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %74, %82
  br i1 %83, label %106, label %84

84:                                               ; preds = %73, %62
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %85, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %84
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %96, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %95, %73
  store i32 -1, i32* %4, align 4
  br label %403

107:                                              ; preds = %95, %84, %52
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %48

111:                                              ; preds = %48
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %129, %111
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @RADEON_MAX_SURFACES, align 4
  %115 = mul nsw i32 2, %114
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %112
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %120, i64 %122
  %124 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %123, i32 0, i32 4
  %125 = load %struct.drm_file*, %struct.drm_file** %124, align 8
  %126 = icmp eq %struct.drm_file* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  br label %132

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %112

132:                                              ; preds = %127, %112
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @RADEON_MAX_SURFACES, align 4
  %135 = mul nsw i32 2, %134
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  store i32 -1, i32* %4, align 4
  br label %403

138:                                              ; preds = %132
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %140

140:                                              ; preds = %313, %138
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @RADEON_MAX_SURFACES, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %316

144:                                              ; preds = %140
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %228

154:                                              ; preds = %144
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %157, %165
  br i1 %166, label %167, label %228

167:                                              ; preds = %154
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %169, %177
  br i1 %178, label %179, label %228

179:                                              ; preds = %167
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  %182 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %181, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %182, i64 %184
  store %struct.radeon_virt_surface* %185, %struct.radeon_virt_surface** %8, align 8
  %186 = load i32, i32* %9, align 4
  %187 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %188 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* %12, align 4
  %190 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %191 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %194 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %199 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %198, i32 0, i32 3
  store i64 %197, i64* %199, align 8
  %200 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %201 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %202 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %201, i32 0, i32 4
  store %struct.drm_file* %200, %struct.drm_file** %202, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %204, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 8
  %212 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %213 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 1
  store i32 %214, i32* %221, align 4
  %222 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %223 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %226 = call i32 @radeon_apply_surface_regs(i32 %224, %struct.TYPE_9__* %225)
  %227 = load i32, i32* %10, align 4
  store i32 %227, i32* %4, align 4
  br label %403

228:                                              ; preds = %167, %154, %144
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %230, align 8
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %238, label %312

238:                                              ; preds = %228
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %243, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = icmp eq i64 %241, %249
  br i1 %250, label %251, label %312

251:                                              ; preds = %238
  %252 = load i32, i32* %12, align 4
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %254, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = add nsw i32 %260, 1
  %262 = icmp eq i32 %252, %261
  br i1 %262, label %263, label %312

263:                                              ; preds = %251
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 1
  %266 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %265, align 8
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %266, i64 %268
  store %struct.radeon_virt_surface* %269, %struct.radeon_virt_surface** %8, align 8
  %270 = load i32, i32* %9, align 4
  %271 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %272 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %271, i32 0, i32 0
  store i32 %270, i32* %272, align 8
  %273 = load i32, i32* %12, align 4
  %274 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %275 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %274, i32 0, i32 1
  store i32 %273, i32* %275, align 4
  %276 = load i32, i32* %11, align 4
  %277 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %278 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 8
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %283 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %282, i32 0, i32 3
  store i64 %281, i64* %283, align 8
  %284 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %285 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %286 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %285, i32 0, i32 4
  store %struct.drm_file* %284, %struct.drm_file** %286, align 8
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %288, align 8
  %290 = load i32, i32* %9, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %293, align 8
  %296 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %297 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %300, align 8
  %302 = load i32, i32* %9, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 2
  store i32 %298, i32* %305, align 8
  %306 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %307 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %310 = call i32 @radeon_apply_surface_regs(i32 %308, %struct.TYPE_9__* %309)
  %311 = load i32, i32* %10, align 4
  store i32 %311, i32* %4, align 4
  br label %403

312:                                              ; preds = %251, %238, %228
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %9, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %9, align 4
  br label %140

316:                                              ; preds = %140
  store i32 0, i32* %9, align 4
  br label %317

317:                                              ; preds = %399, %316
  %318 = load i32, i32* %9, align 4
  %319 = load i32, i32* @RADEON_MAX_SURFACES, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %402

321:                                              ; preds = %317
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %323, align 8
  %325 = load i32, i32* %9, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %398

331:                                              ; preds = %321
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 1
  %334 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %333, align 8
  %335 = load i32, i32* %10, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %334, i64 %336
  store %struct.radeon_virt_surface* %337, %struct.radeon_virt_surface** %8, align 8
  %338 = load i32, i32* %9, align 4
  %339 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %340 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %339, i32 0, i32 0
  store i32 %338, i32* %340, align 8
  %341 = load i32, i32* %12, align 4
  %342 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %343 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %342, i32 0, i32 1
  store i32 %341, i32* %343, align 4
  %344 = load i32, i32* %11, align 4
  %345 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %346 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %345, i32 0, i32 2
  store i32 %344, i32* %346, align 8
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 2
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %351 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %350, i32 0, i32 3
  store i64 %349, i64* %351, align 8
  %352 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %353 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %354 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %353, i32 0, i32 4
  store %struct.drm_file* %352, %struct.drm_file** %354, align 8
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_7__*, %struct.TYPE_7__** %356, align 8
  %358 = load i32, i32* %9, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i32 0, i32 0
  store i32 1, i32* %361, align 8
  %362 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %363 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 0
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** %366, align 8
  %368 = load i32, i32* %9, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 1
  store i32 %364, i32* %371, align 4
  %372 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %373 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i32 0, i32 0
  %377 = load %struct.TYPE_7__*, %struct.TYPE_7__** %376, align 8
  %378 = load i32, i32* %9, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %380, i32 0, i32 2
  store i32 %374, i32* %381, align 8
  %382 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %383 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %382, i32 0, i32 3
  %384 = load i64, i64* %383, align 8
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %386, align 8
  %388 = load i32, i32* %9, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 3
  store i64 %384, i64* %391, align 8
  %392 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %8, align 8
  %393 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %396 = call i32 @radeon_apply_surface_regs(i32 %394, %struct.TYPE_9__* %395)
  %397 = load i32, i32* %10, align 4
  store i32 %397, i32* %4, align 4
  br label %403

398:                                              ; preds = %321
  br label %399

399:                                              ; preds = %398
  %400 = load i32, i32* %9, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %9, align 4
  br label %317

402:                                              ; preds = %317
  store i32 -1, i32* %4, align 4
  br label %403

403:                                              ; preds = %402, %331, %263, %179, %137, %106, %46
  %404 = load i32, i32* %4, align 4
  ret i32 %404
}

declare dso_local i32 @radeon_apply_surface_regs(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
