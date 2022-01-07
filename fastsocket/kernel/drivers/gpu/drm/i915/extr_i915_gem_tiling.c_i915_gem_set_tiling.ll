; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_tiling.c_i915_gem_set_tiling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_tiling.c_i915_gem_set_tiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_set_tiling = type { i64, i64, i64, i32 }
%struct.drm_i915_gem_object = type { i64, i64, i32, i64, i32, i64, %struct.TYPE_9__, i32*, i64, i32*, i64 }
%struct.TYPE_9__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@I915_TILING_NONE = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_NONE = common dso_local global i8* null, align 8
@I915_TILING_X = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_9_17 = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_9 = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_9_10_17 = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_9_10 = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_UNKNOWN = common dso_local global i64 0, align 8
@I915_FENCE_REG_NONE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_set_tiling(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_gem_set_tiling*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.drm_i915_gem_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.drm_i915_gem_set_tiling*
  store %struct.drm_i915_gem_set_tiling* %14, %struct.drm_i915_gem_set_tiling** %8, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %20 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %21 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @drm_gem_object_lookup(%struct.drm_device* %18, %struct.drm_file* %19, i32 %22)
  %24 = call %struct.drm_i915_gem_object* @to_intel_bo(i32 %23)
  store %struct.drm_i915_gem_object* %24, %struct.drm_i915_gem_object** %10, align 8
  %25 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %26 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %25, i32 0, i32 6
  %27 = icmp eq %struct.TYPE_9__* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %294

31:                                               ; preds = %3
  %32 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %33 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %34 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %37 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %41 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @i915_tiling_ok(%struct.drm_device* %32, i64 %35, i64 %39, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %31
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %47 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %46, i32 0, i32 6
  %48 = call i32 @drm_gem_object_unreference_unlocked(%struct.TYPE_9__* %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %294

51:                                               ; preds = %31
  %52 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %53 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %52, i32 0, i32 10
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %58 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %57, i32 0, i32 6
  %59 = call i32 @drm_gem_object_unreference_unlocked(%struct.TYPE_9__* %58)
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %294

62:                                               ; preds = %51
  %63 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %64 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @I915_TILING_NONE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load i8*, i8** @I915_BIT_6_SWIZZLE_NONE, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %72 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %74 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  br label %132

75:                                               ; preds = %62
  %76 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %77 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @I915_TILING_X, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %87 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  br label %95

88:                                               ; preds = %75
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %94 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %88, %81
  %96 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %97 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @I915_BIT_6_SWIZZLE_9_17, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i64, i64* @I915_BIT_6_SWIZZLE_9, align 8
  %103 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %104 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %101, %95
  %106 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %107 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @I915_BIT_6_SWIZZLE_9_10_17, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i64, i64* @I915_BIT_6_SWIZZLE_9_10, align 8
  %113 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %114 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %113, i32 0, i32 2
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %111, %105
  %116 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %117 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @I915_BIT_6_SWIZZLE_UNKNOWN, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %115
  %122 = load i64, i64* @I915_TILING_NONE, align 8
  %123 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %124 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  %125 = load i8*, i8** @I915_BIT_6_SWIZZLE_NONE, align 8
  %126 = ptrtoint i8* %125 to i64
  %127 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %128 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  %129 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %130 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %129, i32 0, i32 0
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %121, %115
  br label %132

132:                                              ; preds = %131, %68
  %133 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %134 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %133, i32 0, i32 0
  %135 = call i32 @mutex_lock(i32* %134)
  %136 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %137 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %140 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %138, %141
  br i1 %142, label %151, label %143

143:                                              ; preds = %132
  %144 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %145 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %148 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %146, %149
  br i1 %150, label %151, label %242

151:                                              ; preds = %143, %132
  %152 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %153 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %152, i32 0, i32 9
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %179, label %156

156:                                              ; preds = %151
  %157 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %158 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %161 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %159, %163
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp sle i64 %164, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %156
  %171 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %172 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %173 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i64 @i915_gem_object_fence_ok(%struct.drm_i915_gem_object* %171, i64 %174)
  %176 = icmp ne i64 %175, 0
  br label %177

177:                                              ; preds = %170, %156
  %178 = phi i1 [ false, %156 ], [ %176, %170 ]
  br label %179

179:                                              ; preds = %177, %151
  %180 = phi i1 [ true, %151 ], [ %178, %177 ]
  %181 = zext i1 %180 to i32
  %182 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %183 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  %184 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %185 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %210, label %188

188:                                              ; preds = %179
  %189 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %190 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %191 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %190, i32 0, i32 6
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %195 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @i915_gem_get_gtt_alignment(%struct.drm_device* %189, i64 %193, i64 %196, i32 0)
  store i32 %197, i32* %12, align 4
  %198 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %199 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = and i64 %200, %203
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %188
  %207 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %208 = call i32 @i915_gem_object_unbind(%struct.drm_i915_gem_object* %207)
  store i32 %208, i32* %11, align 4
  br label %209

209:                                              ; preds = %206, %188
  br label %210

210:                                              ; preds = %209, %179
  %211 = load i32, i32* %11, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %241

213:                                              ; preds = %210
  %214 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %215 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %214, i32 0, i32 8
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %213
  %219 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %220 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %219, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @I915_FENCE_REG_NONE, align 8
  %223 = icmp ne i64 %221, %222
  br label %224

224:                                              ; preds = %218, %213
  %225 = phi i1 [ true, %213 ], [ %223, %218 ]
  %226 = zext i1 %225 to i32
  %227 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %228 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %227, i32 0, i32 4
  store i32 %226, i32* %228, align 8
  %229 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %230 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %233 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %232, i32 0, i32 0
  store i64 %231, i64* %233, align 8
  %234 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %235 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %238 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %237, i32 0, i32 1
  store i64 %236, i64* %238, align 8
  %239 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %240 = call i32 @i915_gem_release_mmap(%struct.drm_i915_gem_object* %239)
  br label %241

241:                                              ; preds = %224, %210
  br label %242

242:                                              ; preds = %241, %143
  %243 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %244 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %247 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %246, i32 0, i32 0
  store i64 %245, i64* %247, align 8
  %248 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %249 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %252 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %251, i32 0, i32 1
  store i64 %250, i64* %252, align 8
  %253 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %254 = call i64 @i915_gem_object_needs_bit17_swizzle(%struct.drm_i915_gem_object* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %279

256:                                              ; preds = %242
  %257 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %258 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %257, i32 0, i32 7
  %259 = load i32*, i32** %258, align 8
  %260 = icmp eq i32* %259, null
  br i1 %260, label %261, label %278

261:                                              ; preds = %256
  %262 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %263 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %262, i32 0, i32 6
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i32, i32* @PAGE_SHIFT, align 4
  %267 = zext i32 %266 to i64
  %268 = ashr i64 %265, %267
  %269 = trunc i64 %268 to i32
  %270 = call i32 @BITS_TO_LONGS(i32 %269)
  %271 = sext i32 %270 to i64
  %272 = mul i64 %271, 8
  %273 = trunc i64 %272 to i32
  %274 = load i32, i32* @GFP_KERNEL, align 4
  %275 = call i32* @kmalloc(i32 %273, i32 %274)
  %276 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %277 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %276, i32 0, i32 7
  store i32* %275, i32** %277, align 8
  br label %278

278:                                              ; preds = %261, %256
  br label %286

279:                                              ; preds = %242
  %280 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %281 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %280, i32 0, i32 7
  %282 = load i32*, i32** %281, align 8
  %283 = call i32 @kfree(i32* %282)
  %284 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %285 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %284, i32 0, i32 7
  store i32* null, i32** %285, align 8
  br label %286

286:                                              ; preds = %279, %278
  %287 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %288 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %287, i32 0, i32 6
  %289 = call i32 @drm_gem_object_unreference(%struct.TYPE_9__* %288)
  %290 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %291 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %290, i32 0, i32 0
  %292 = call i32 @mutex_unlock(i32* %291)
  %293 = load i32, i32* %11, align 4
  store i32 %293, i32* %4, align 4
  br label %294

294:                                              ; preds = %286, %56, %45, %28
  %295 = load i32, i32* %4, align 4
  ret i32 %295
}

declare dso_local %struct.drm_i915_gem_object* @to_intel_bo(i32) #1

declare dso_local i32 @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @i915_tiling_ok(%struct.drm_device*, i64, i64, i64) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @i915_gem_object_fence_ok(%struct.drm_i915_gem_object*, i64) #1

declare dso_local i32 @i915_gem_get_gtt_alignment(%struct.drm_device*, i64, i64, i32) #1

declare dso_local i32 @i915_gem_object_unbind(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_release_mmap(%struct.drm_i915_gem_object*) #1

declare dso_local i64 @i915_gem_object_needs_bit17_swizzle(%struct.drm_i915_gem_object*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @drm_gem_object_unreference(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
