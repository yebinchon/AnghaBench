; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_mem_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_mem_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_4__, %struct.ttm_bo_device* }
%struct.TYPE_4__ = type { i32 }
%struct.ttm_bo_device = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*)* }
%struct.ttm_placement = type { i32, i32, i32*, i32* }
%struct.ttm_mem_reg = type { i64, i64, i32* }

@TTM_PL_SYSTEM = common dso_local global i64 0, align 8
@TTM_PL_MASK_MEMTYPE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_mem_space(%struct.ttm_buffer_object* %0, %struct.ttm_placement* %1, %struct.ttm_mem_reg* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca %struct.ttm_placement*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ttm_bo_device*, align 8
  %13 = alloca %struct.ttm_mem_type_manager*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %7, align 8
  store %struct.ttm_placement* %1, %struct.ttm_placement** %8, align 8
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %22 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %21, i32 0, i32 1
  %23 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %22, align 8
  store %struct.ttm_bo_device* %23, %struct.ttm_bo_device** %12, align 8
  %24 = load i64, i64* @TTM_PL_SYSTEM, align 8
  store i64 %24, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %25 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %26 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  store i32 0, i32* %19, align 4
  br label %27

27:                                               ; preds = %121, %5
  %28 = load i32, i32* %19, align 4
  %29 = load %struct.ttm_placement*, %struct.ttm_placement** %8, align 8
  %30 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %124

33:                                               ; preds = %27
  %34 = load %struct.ttm_placement*, %struct.ttm_placement** %8, align 8
  %35 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %19, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ttm_mem_type_from_flags(i32 %40, i64* %14)
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %20, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %20, align 4
  store i32 %45, i32* %6, align 4
  br label %264

46:                                               ; preds = %33
  %47 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %12, align 8
  %48 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %47, i32 0, i32 0
  %49 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %48, align 8
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %49, i64 %50
  store %struct.ttm_mem_type_manager* %51, %struct.ttm_mem_type_manager** %13, align 8
  %52 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %13, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load %struct.ttm_placement*, %struct.ttm_placement** %8, align 8
  %55 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ttm_bo_mt_compatible(%struct.ttm_mem_type_manager* %52, i64 %53, i32 %60, i64* %15)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %46
  br label %121

65:                                               ; preds = %46
  %66 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %13, align 8
  %67 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %68 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %15, align 8
  %72 = call i64 @ttm_bo_select_caching(%struct.ttm_mem_type_manager* %66, i32 %70, i64 %71)
  store i64 %72, i64* %15, align 8
  %73 = load %struct.ttm_placement*, %struct.ttm_placement** %8, align 8
  %74 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %19, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @TTM_PL_MASK_MEMTYPE, align 4
  %81 = xor i32 %80, -1
  %82 = call i32 @ttm_flag_masked(i64* %15, i32 %79, i32 %81)
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %65
  br label %124

87:                                               ; preds = %65
  %88 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %13, align 8
  %89 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %114

92:                                               ; preds = %87
  %93 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %13, align 8
  %94 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %92
  store i32 1, i32* %16, align 4
  %98 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %13, align 8
  %99 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*)*, i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*)** %101, align 8
  %103 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %13, align 8
  %104 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %105 = load %struct.ttm_placement*, %struct.ttm_placement** %8, align 8
  %106 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %107 = call i32 %102(%struct.ttm_mem_type_manager* %103, %struct.ttm_buffer_object* %104, %struct.ttm_placement* %105, %struct.ttm_mem_reg* %106)
  store i32 %107, i32* %20, align 4
  %108 = load i32, i32* %20, align 4
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %97
  %112 = load i32, i32* %20, align 4
  store i32 %112, i32* %6, align 4
  br label %264

113:                                              ; preds = %97
  br label %114

114:                                              ; preds = %113, %92, %87
  %115 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %116 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %124

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %64
  %122 = load i32, i32* %19, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %19, align 4
  br label %27

124:                                              ; preds = %119, %86, %27
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i64, i64* %14, align 8
  %129 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %136, label %131

131:                                              ; preds = %127, %124
  %132 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %133 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %143

136:                                              ; preds = %131, %127
  %137 = load i64, i64* %14, align 8
  %138 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %139 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load i64, i64* %15, align 8
  %141 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %142 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  store i32 0, i32* %6, align 4
  br label %264

143:                                              ; preds = %131
  %144 = load i32, i32* %16, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %6, align 4
  br label %264

149:                                              ; preds = %143
  store i32 0, i32* %19, align 4
  br label %150

150:                                              ; preds = %249, %149
  %151 = load i32, i32* %19, align 4
  %152 = load %struct.ttm_placement*, %struct.ttm_placement** %8, align 8
  %153 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %252

156:                                              ; preds = %150
  %157 = load %struct.ttm_placement*, %struct.ttm_placement** %8, align 8
  %158 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %19, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ttm_mem_type_from_flags(i32 %163, i64* %14)
  store i32 %164, i32* %20, align 4
  %165 = load i32, i32* %20, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %156
  %168 = load i32, i32* %20, align 4
  store i32 %168, i32* %6, align 4
  br label %264

169:                                              ; preds = %156
  %170 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %12, align 8
  %171 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %170, i32 0, i32 0
  %172 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %171, align 8
  %173 = load i64, i64* %14, align 8
  %174 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %172, i64 %173
  store %struct.ttm_mem_type_manager* %174, %struct.ttm_mem_type_manager** %13, align 8
  %175 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %13, align 8
  %176 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %169
  br label %249

180:                                              ; preds = %169
  %181 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %13, align 8
  %182 = load i64, i64* %14, align 8
  %183 = load %struct.ttm_placement*, %struct.ttm_placement** %8, align 8
  %184 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @ttm_bo_mt_compatible(%struct.ttm_mem_type_manager* %181, i64 %182, i32 %189, i64* %15)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %180
  br label %249

193:                                              ; preds = %180
  %194 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %13, align 8
  %195 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %196 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i64, i64* %15, align 8
  %200 = call i64 @ttm_bo_select_caching(%struct.ttm_mem_type_manager* %194, i32 %198, i64 %199)
  store i64 %200, i64* %15, align 8
  %201 = load %struct.ttm_placement*, %struct.ttm_placement** %8, align 8
  %202 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %19, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @TTM_PL_MASK_MEMTYPE, align 4
  %209 = xor i32 %208, -1
  %210 = call i32 @ttm_flag_masked(i64* %15, i32 %207, i32 %209)
  %211 = load i64, i64* %14, align 8
  %212 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %223

214:                                              ; preds = %193
  %215 = load i64, i64* %14, align 8
  %216 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %217 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %216, i32 0, i32 0
  store i64 %215, i64* %217, align 8
  %218 = load i64, i64* %15, align 8
  %219 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %220 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %219, i32 0, i32 1
  store i64 %218, i64* %220, align 8
  %221 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %222 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %221, i32 0, i32 2
  store i32* null, i32** %222, align 8
  store i32 0, i32* %6, align 4
  br label %264

223:                                              ; preds = %193
  %224 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %225 = load i64, i64* %14, align 8
  %226 = load %struct.ttm_placement*, %struct.ttm_placement** %8, align 8
  %227 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %228 = load i32, i32* %10, align 4
  %229 = load i32, i32* %11, align 4
  %230 = call i32 @ttm_bo_mem_force_space(%struct.ttm_buffer_object* %224, i64 %225, %struct.ttm_placement* %226, %struct.ttm_mem_reg* %227, i32 %228, i32 %229)
  store i32 %230, i32* %20, align 4
  %231 = load i32, i32* %20, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %223
  %234 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %235 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %238, label %242

238:                                              ; preds = %233
  %239 = load i64, i64* %15, align 8
  %240 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %241 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %240, i32 0, i32 1
  store i64 %239, i64* %241, align 8
  store i32 0, i32* %6, align 4
  br label %264

242:                                              ; preds = %233, %223
  %243 = load i32, i32* %20, align 4
  %244 = load i32, i32* @ERESTARTSYS, align 4
  %245 = sub nsw i32 0, %244
  %246 = icmp eq i32 %243, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %242
  store i32 1, i32* %18, align 4
  br label %248

248:                                              ; preds = %247, %242
  br label %249

249:                                              ; preds = %248, %192, %179
  %250 = load i32, i32* %19, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %19, align 4
  br label %150

252:                                              ; preds = %150
  %253 = load i32, i32* %18, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load i32, i32* @ERESTARTSYS, align 4
  %257 = sub nsw i32 0, %256
  br label %261

258:                                              ; preds = %252
  %259 = load i32, i32* @ENOMEM, align 4
  %260 = sub nsw i32 0, %259
  br label %261

261:                                              ; preds = %258, %255
  %262 = phi i32 [ %257, %255 ], [ %260, %258 ]
  store i32 %262, i32* %20, align 4
  %263 = load i32, i32* %20, align 4
  store i32 %263, i32* %6, align 4
  br label %264

264:                                              ; preds = %261, %238, %214, %167, %146, %136, %111, %44
  %265 = load i32, i32* %6, align 4
  ret i32 %265
}

declare dso_local i32 @ttm_mem_type_from_flags(i32, i64*) #1

declare dso_local i32 @ttm_bo_mt_compatible(%struct.ttm_mem_type_manager*, i64, i32, i64*) #1

declare dso_local i64 @ttm_bo_select_caching(%struct.ttm_mem_type_manager*, i32, i64) #1

declare dso_local i32 @ttm_flag_masked(i64*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_bo_mem_force_space(%struct.ttm_buffer_object*, i64, %struct.ttm_placement*, %struct.ttm_mem_reg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
