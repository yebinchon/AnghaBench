; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_tv_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_tv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.drm_device = type { %struct.TYPE_6__, %struct.drm_i915_private* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.drm_connector = type { i32, i32, i32, i32 }
%struct.intel_tv = type { i32*, i64, i32, %struct.intel_encoder }
%struct.intel_encoder = type { i32, i32, i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.intel_connector = type { i32, %struct.drm_connector }

@tv_modes = common dso_local global %struct.TYPE_7__* null, align 8
@TV_CTL = common dso_local global i32 0, align 4
@TV_FUSE_STATE_MASK = common dso_local global i32 0, align 4
@TV_FUSE_STATE_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Integrated TV is not present.\0A\00", align 1
@TV_DAC = common dso_local global i32 0, align 4
@TVDAC_STATE_CHG_EN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@intel_tv_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_SVIDEO = common dso_local global i32 0, align 4
@intel_tv_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TVDAC = common dso_local global i32 0, align 4
@intel_enable_tv = common dso_local global i32 0, align 4
@intel_disable_tv = common dso_local global i32 0, align 4
@intel_tv_get_hw_state = common dso_local global i32 0, align 4
@intel_connector_get_hw_state = common dso_local global i32 0, align 4
@INTEL_OUTPUT_TVOUT = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_Unknown = common dso_local global i32 0, align 4
@TV_MARGIN_LEFT = common dso_local global i64 0, align 8
@TV_MARGIN_TOP = common dso_local global i64 0, align 8
@TV_MARGIN_RIGHT = common dso_local global i64 0, align 8
@TV_MARGIN_BOTTOM = common dso_local global i64 0, align 8
@intel_tv_helper_funcs = common dso_local global i32 0, align 4
@intel_tv_connector_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_tv_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.intel_tv*, align 8
  %6 = alloca %struct.intel_encoder*, align 8
  %7 = alloca %struct.intel_connector*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %17, align 8
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %3, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @tv_modes, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %19)
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i8*, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  store i32 0, i32* %14, align 4
  %24 = load i32, i32* @TV_CTL, align 4
  %25 = call i32 @I915_READ(i32 %24)
  %26 = load i32, i32* @TV_FUSE_STATE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @TV_FUSE_STATE_DISABLED, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 1, i32* %15, align 4
  br label %263

31:                                               ; preds = %1
  %32 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %33 = call i32 @tv_is_present_in_vbt(%struct.drm_device* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %263

37:                                               ; preds = %31
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 1, i32* %15, align 4
  br label %263

43:                                               ; preds = %37
  %44 = load i32, i32* @TV_DAC, align 4
  %45 = call i32 @I915_READ(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @TV_DAC, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @TVDAC_STATE_CHG_EN, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @I915_WRITE(i32 %46, i32 %49)
  %51 = load i32, i32* @TV_DAC, align 4
  %52 = call i32 @I915_READ(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @TV_DAC, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @TVDAC_STATE_CHG_EN, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = call i32 @I915_WRITE(i32 %53, i32 %57)
  %59 = load i32, i32* @TV_DAC, align 4
  %60 = call i32 @I915_READ(i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* @TV_DAC, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @I915_WRITE(i32 %61, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @TVDAC_STATE_CHG_EN, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %43
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @TVDAC_STATE_CHG_EN, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %43
  store i32 1, i32* %15, align 4
  br label %263

74:                                               ; preds = %68
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @kzalloc(i32 56, i32 %75)
  %77 = bitcast i8* %76 to %struct.intel_tv*
  store %struct.intel_tv* %77, %struct.intel_tv** %5, align 8
  %78 = load %struct.intel_tv*, %struct.intel_tv** %5, align 8
  %79 = icmp ne %struct.intel_tv* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  store i32 1, i32* %15, align 4
  br label %263

81:                                               ; preds = %74
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i8* @kzalloc(i32 20, i32 %82)
  %84 = bitcast i8* %83 to %struct.intel_connector*
  store %struct.intel_connector* %84, %struct.intel_connector** %7, align 8
  %85 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %86 = icmp ne %struct.intel_connector* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %81
  %88 = load %struct.intel_tv*, %struct.intel_tv** %5, align 8
  %89 = call i32 @kfree(%struct.intel_tv* %88)
  store i32 1, i32* %15, align 4
  br label %263

90:                                               ; preds = %81
  %91 = load %struct.intel_tv*, %struct.intel_tv** %5, align 8
  %92 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %91, i32 0, i32 3
  store %struct.intel_encoder* %92, %struct.intel_encoder** %6, align 8
  %93 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %94 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %93, i32 0, i32 1
  store %struct.drm_connector* %94, %struct.drm_connector** %4, align 8
  %95 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %96 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %97 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %99 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %100 = load i32, i32* @DRM_MODE_CONNECTOR_SVIDEO, align 4
  %101 = call i32 @drm_connector_init(%struct.drm_device* %98, %struct.drm_connector* %99, i32* @intel_tv_connector_funcs, i32 %100)
  %102 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %103 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %104 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %103, i32 0, i32 3
  %105 = load i32, i32* @DRM_MODE_ENCODER_TVDAC, align 4
  %106 = call i32 @drm_encoder_init(%struct.drm_device* %102, %struct.TYPE_8__* %104, i32* @intel_tv_enc_funcs, i32 %105)
  %107 = load i32, i32* @intel_enable_tv, align 4
  %108 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %109 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @intel_disable_tv, align 4
  %111 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %112 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @intel_tv_get_hw_state, align 4
  %114 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %115 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @intel_connector_get_hw_state, align 4
  %117 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %118 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %120 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %121 = call i32 @intel_connector_attach_encoder(%struct.intel_connector* %119, %struct.intel_encoder* %120)
  %122 = load i32, i32* @INTEL_OUTPUT_TVOUT, align 4
  %123 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %124 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %126 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %125, i32 0, i32 1
  store i32 3, i32* %126, align 4
  %127 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %128 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %127, i32 0, i32 2
  store i32 0, i32* %128, align 4
  %129 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %130 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store i32 3, i32* %131, align 4
  %132 = load i32, i32* @INTEL_OUTPUT_TVOUT, align 4
  %133 = shl i32 1, %132
  %134 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %135 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* @DRM_MODE_CONNECTOR_Unknown, align 4
  %138 = load %struct.intel_tv*, %struct.intel_tv** %5, align 8
  %139 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.intel_tv*, %struct.intel_tv** %5, align 8
  %141 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @TV_MARGIN_LEFT, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32 54, i32* %144, align 4
  %145 = load %struct.intel_tv*, %struct.intel_tv** %5, align 8
  %146 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* @TV_MARGIN_TOP, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32 36, i32* %149, align 4
  %150 = load %struct.intel_tv*, %struct.intel_tv** %5, align 8
  %151 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* @TV_MARGIN_RIGHT, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32 46, i32* %154, align 4
  %155 = load %struct.intel_tv*, %struct.intel_tv** %5, align 8
  %156 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* @TV_MARGIN_BOTTOM, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32 37, i32* %159, align 4
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** @tv_modes, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.intel_tv*, %struct.intel_tv** %5, align 8
  %167 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  %168 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %169 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %168, i32 0, i32 3
  %170 = call i32 @drm_encoder_helper_add(%struct.TYPE_8__* %169, i32* @intel_tv_helper_funcs)
  %171 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %172 = call i32 @drm_connector_helper_add(%struct.drm_connector* %171, i32* @intel_tv_connector_helper_funcs)
  %173 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %174 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %173, i32 0, i32 0
  store i32 0, i32* %174, align 4
  %175 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %176 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %175, i32 0, i32 1
  store i32 0, i32* %176, align 4
  store i32 0, i32* %13, align 4
  br label %177

177:                                              ; preds = %193, %90
  %178 = load i32, i32* %13, align 4
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** @tv_modes, align 8
  %180 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %179)
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %177
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** @tv_modes, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = inttoptr i64 %188 to i8*
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %23, i64 %191
  store i8* %189, i8** %192, align 8
  br label %193

193:                                              ; preds = %182
  %194 = load i32, i32* %13, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %13, align 4
  br label %177

196:                                              ; preds = %177
  %197 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** @tv_modes, align 8
  %199 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %198)
  %200 = call i32 @drm_mode_create_tv_properties(%struct.drm_device* %197, i32 %199, i8** %23)
  %201 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %202 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %201, i32 0, i32 2
  %203 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %204 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %14, align 4
  %208 = call i32 @drm_object_attach_property(i32* %202, i32 %206, i32 %207)
  %209 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %210 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %209, i32 0, i32 2
  %211 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %212 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.intel_tv*, %struct.intel_tv** %5, align 8
  %216 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i64, i64* @TV_MARGIN_LEFT, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @drm_object_attach_property(i32* %210, i32 %214, i32 %220)
  %222 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %223 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %222, i32 0, i32 2
  %224 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %225 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.intel_tv*, %struct.intel_tv** %5, align 8
  %229 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = load i64, i64* @TV_MARGIN_TOP, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @drm_object_attach_property(i32* %223, i32 %227, i32 %233)
  %235 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %236 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %235, i32 0, i32 2
  %237 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %238 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.intel_tv*, %struct.intel_tv** %5, align 8
  %242 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = load i64, i64* @TV_MARGIN_RIGHT, align 8
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @drm_object_attach_property(i32* %236, i32 %240, i32 %246)
  %248 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %249 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %248, i32 0, i32 2
  %250 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %251 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.intel_tv*, %struct.intel_tv** %5, align 8
  %255 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = load i64, i64* @TV_MARGIN_BOTTOM, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @drm_object_attach_property(i32* %249, i32 %253, i32 %259)
  %261 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %262 = call i32 @drm_sysfs_connector_add(%struct.drm_connector* %261)
  store i32 0, i32* %15, align 4
  br label %263

263:                                              ; preds = %196, %87, %80, %73, %42, %35, %30
  %264 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %264)
  %265 = load i32, i32* %15, align 4
  switch i32 %265, label %267 [
    i32 0, label %266
    i32 1, label %266
  ]

266:                                              ; preds = %263, %263
  ret void

267:                                              ; preds = %263
  unreachable
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @tv_is_present_in_vbt(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.intel_tv*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @intel_connector_attach_encoder(%struct.intel_connector*, %struct.intel_encoder*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_mode_create_tv_properties(%struct.drm_device*, i32, i8**) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

declare dso_local i32 @drm_sysfs_connector_add(%struct.drm_connector*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
