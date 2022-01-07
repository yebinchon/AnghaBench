; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_bind_to_gtt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_bind_to_gtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, i32, %struct.TYPE_6__, %struct.drm_mm_node*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.drm_mm_node = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Invalid object alignment requested %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Attempting to bind an object larger than the aperture\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_object*, i32, i32, i32)* @i915_gem_object_bind_to_gtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_gem_object_bind_to_gtt(%struct.drm_i915_gem_object* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.drm_mm_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %21 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %10, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %11, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %28 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %29 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %33 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @i915_gem_get_gtt_size(%struct.drm_device* %27, i32 %31, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %37 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %38 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %42 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @i915_gem_get_gtt_alignment(%struct.drm_device* %36, i32 %40, i32 %43, i32 1)
  store i32 %44, i32* %15, align 4
  %45 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %47 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %51 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @i915_gem_get_gtt_alignment(%struct.drm_device* %45, i32 %49, i32 %52, i32 0)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* %15, align 4
  br label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %16, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %63, %4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %15, align 4
  %71 = sub nsw i32 %70, 1
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load i32, i32* %7, align 4
  %76 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %285

79:                                               ; preds = %68, %65
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* %14, align 4
  br label %89

84:                                               ; preds = %79
  %85 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %86 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  br label %89

89:                                               ; preds = %84, %82
  %90 = phi i32 [ %83, %82 ], [ %88, %84 ]
  store i32 %90, i32* %13, align 4
  %91 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %92 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  br label %108

103:                                              ; preds = %89
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  br label %108

108:                                              ; preds = %103, %98
  %109 = phi i64 [ %102, %98 ], [ %107, %103 ]
  %110 = icmp sgt i64 %95, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* @E2BIG, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %285

115:                                              ; preds = %108
  %116 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %117 = call i32 @i915_gem_object_get_pages(%struct.drm_i915_gem_object* %116)
  store i32 %117, i32* %19, align 4
  %118 = load i32, i32* %19, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* %19, align 4
  store i32 %121, i32* %5, align 4
  br label %285

122:                                              ; preds = %115
  %123 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %124 = call i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %123)
  %125 = load i32, i32* @GFP_KERNEL, align 4
  %126 = call %struct.drm_mm_node* @kzalloc(i32 8, i32 %125)
  store %struct.drm_mm_node* %126, %struct.drm_mm_node** %12, align 8
  %127 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %128 = icmp eq %struct.drm_mm_node* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %131 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %130)
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %285

134:                                              ; preds = %122
  br label %135

135:                                              ; preds = %179, %134
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %135
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %146 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @drm_mm_insert_node_in_range_generic(i32* %141, %struct.drm_mm_node* %142, i32 %143, i32 %144, i32 %147, i32 0, i64 %151)
  store i32 %152, i32* %19, align 4
  br label %164

153:                                              ; preds = %135
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %161 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @drm_mm_insert_node_generic(i32* %156, %struct.drm_mm_node* %157, i32 %158, i32 %159, i32 %162)
  store i32 %163, i32* %19, align 4
  br label %164

164:                                              ; preds = %153, %138
  %165 = load i32, i32* %19, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %186

167:                                              ; preds = %164
  %168 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %172 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @i915_gem_evict_something(%struct.drm_device* %168, i32 %169, i32 %170, i32 %173, i32 %174, i32 %175)
  store i32 %176, i32* %19, align 4
  %177 = load i32, i32* %19, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %167
  br label %135

180:                                              ; preds = %167
  %181 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %182 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %181)
  %183 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %184 = call i32 @kfree(%struct.drm_mm_node* %183)
  %185 = load i32, i32* %19, align 4
  store i32 %185, i32* %5, align 4
  br label %285

186:                                              ; preds = %164
  %187 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %188 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %189 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %190 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @i915_gem_valid_gtt_space(%struct.drm_device* %187, %struct.drm_mm_node* %188, i32 %191)
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = call i64 @WARN_ON(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %186
  %199 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %200 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %199)
  %201 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %202 = call i32 @drm_mm_put_block(%struct.drm_mm_node* %201)
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %5, align 4
  br label %285

205:                                              ; preds = %186
  %206 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %207 = call i32 @i915_gem_gtt_prepare_object(%struct.drm_i915_gem_object* %206)
  store i32 %207, i32* %19, align 4
  %208 = load i32, i32* %19, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %212 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %211)
  %213 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %214 = call i32 @drm_mm_put_block(%struct.drm_mm_node* %213)
  %215 = load i32, i32* %19, align 4
  store i32 %215, i32* %5, align 4
  br label %285

216:                                              ; preds = %205
  %217 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %218 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %217, i32 0, i32 5
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  %222 = call i32 @list_move_tail(i32* %218, i32* %221)
  %223 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %224 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %223, i32 0, i32 4
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = call i32 @list_add_tail(i32* %224, i32* %227)
  %229 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %230 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %231 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %230, i32 0, i32 3
  store %struct.drm_mm_node* %229, %struct.drm_mm_node** %231, align 8
  %232 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %233 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %236 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 8
  %237 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %238 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %14, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %250

242:                                              ; preds = %216
  %243 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %244 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %15, align 4
  %247 = sub nsw i32 %246, 1
  %248 = and i32 %245, %247
  %249 = icmp eq i32 %248, 0
  br label %250

250:                                              ; preds = %242, %216
  %251 = phi i1 [ false, %216 ], [ %249, %242 ]
  %252 = zext i1 %251 to i32
  store i32 %252, i32* %18, align 4
  %253 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %254 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %257 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %255, %259
  %261 = sext i32 %260 to i64
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp sle i64 %261, %265
  %267 = zext i1 %266 to i32
  store i32 %267, i32* %17, align 4
  %268 = load i32, i32* %17, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %250
  %271 = load i32, i32* %18, align 4
  %272 = icmp ne i32 %271, 0
  br label %273

273:                                              ; preds = %270, %250
  %274 = phi i1 [ false, %250 ], [ %272, %270 ]
  %275 = zext i1 %274 to i32
  %276 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %277 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %276, i32 0, i32 1
  store i32 %275, i32* %277, align 4
  %278 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %279 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %278)
  %280 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %281 = load i32, i32* %8, align 4
  %282 = call i32 @trace_i915_gem_object_bind(%struct.drm_i915_gem_object* %280, i32 %281)
  %283 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %284 = call i32 @i915_gem_verify_gtt(%struct.drm_device* %283)
  store i32 0, i32* %5, align 4
  br label %285

285:                                              ; preds = %273, %210, %198, %180, %129, %120, %111, %74
  %286 = load i32, i32* %5, align 4
  ret i32 %286
}

declare dso_local i32 @i915_gem_get_gtt_size(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @i915_gem_get_gtt_alignment(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @i915_gem_object_get_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local %struct.drm_mm_node* @kzalloc(i32, i32) #1

declare dso_local i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @drm_mm_insert_node_in_range_generic(i32*, %struct.drm_mm_node*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @drm_mm_insert_node_generic(i32*, %struct.drm_mm_node*, i32, i32, i32) #1

declare dso_local i32 @i915_gem_evict_something(%struct.drm_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.drm_mm_node*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @i915_gem_valid_gtt_space(%struct.drm_device*, %struct.drm_mm_node*, i32) #1

declare dso_local i32 @drm_mm_put_block(%struct.drm_mm_node*) #1

declare dso_local i32 @i915_gem_gtt_prepare_object(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @trace_i915_gem_object_bind(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_verify_gtt(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
