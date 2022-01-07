; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_init_panel_power_sequencer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_init_panel_power_sequencer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.edp_power_seq }
%struct.edp_power_seq = type { i32, i32, i32, i32, i32 }
%struct.intel_dp = type { i8*, i8*, i8*, i8*, i8* }

@PCH_PP_CONTROL = common dso_local global i32 0, align 4
@PCH_PP_ON_DELAYS = common dso_local global i32 0, align 4
@PCH_PP_OFF_DELAYS = common dso_local global i32 0, align 4
@PCH_PP_DIVISOR = common dso_local global i32 0, align 4
@PANEL_POWER_UP_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_POWER_UP_DELAY_SHIFT = common dso_local global i32 0, align 4
@PANEL_LIGHT_ON_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_LIGHT_ON_DELAY_SHIFT = common dso_local global i32 0, align 4
@PANEL_LIGHT_OFF_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_LIGHT_OFF_DELAY_SHIFT = common dso_local global i32 0, align 4
@PANEL_POWER_DOWN_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_POWER_DOWN_DELAY_SHIFT = common dso_local global i32 0, align 4
@PANEL_POWER_CYCLE_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_POWER_CYCLE_DELAY_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cur t1_t3 %d t8 %d t9 %d t10 %d t11_t12 %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"vbt t1_t3 %d t8 %d t9 %d t10 %d t11_t12 %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"panel power up delay %d, power down delay %d, power cycle delay %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"backlight on delay %d, off delay %d\0A\00", align 1
@t10 = common dso_local global i32 0, align 4
@t11_t12 = common dso_local global i32 0, align 4
@t1_t3 = common dso_local global i32 0, align 4
@t8 = common dso_local global i32 0, align 4
@t9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.intel_dp*, %struct.edp_power_seq*)* @intel_dp_init_panel_power_sequencer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_init_panel_power_sequencer(%struct.drm_device* %0, %struct.intel_dp* %1, %struct.edp_power_seq* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.intel_dp*, align 8
  %6 = alloca %struct.edp_power_seq*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.edp_power_seq, align 4
  %9 = alloca %struct.edp_power_seq, align 4
  %10 = alloca %struct.edp_power_seq, align 4
  %11 = alloca %struct.edp_power_seq, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.intel_dp* %1, %struct.intel_dp** %5, align 8
  store %struct.edp_power_seq* %2, %struct.edp_power_seq** %6, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %17, align 8
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %7, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %20 = call i32 @ironlake_get_pp_control(%struct.drm_i915_private* %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* @PCH_PP_CONTROL, align 4
  %22 = load i32, i32* %15, align 4
  %23 = call i32 @I915_WRITE(i32 %21, i32 %22)
  %24 = load i32, i32* @PCH_PP_ON_DELAYS, align 4
  %25 = call i32 @I915_READ(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @PCH_PP_OFF_DELAYS, align 4
  %27 = call i32 @I915_READ(i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* @PCH_PP_DIVISOR, align 4
  %29 = call i32 @I915_READ(i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @PANEL_POWER_UP_DELAY_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @PANEL_POWER_UP_DELAY_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @PANEL_LIGHT_ON_DELAY_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @PANEL_LIGHT_ON_DELAY_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @PANEL_LIGHT_OFF_DELAY_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @PANEL_LIGHT_OFF_DELAY_SHIFT, align 4
  %46 = ashr i32 %44, %45
  %47 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @PANEL_POWER_DOWN_DELAY_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @PANEL_POWER_DOWN_DELAY_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @PANEL_POWER_CYCLE_DELAY_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @PANEL_POWER_CYCLE_DELAY_SHIFT, align 4
  %58 = ashr i32 %56, %57
  %59 = mul nsw i32 %58, 1000
  %60 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 4
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %64, i32 %66, i32 %68, i32 %70)
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %73 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = bitcast %struct.edp_power_seq* %9 to i8*
  %76 = bitcast %struct.edp_power_seq* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 20, i1 false)
  %77 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %10, i32 0, i32 0
  store i32 2100, i32* %77, align 4
  %78 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %10, i32 0, i32 1
  store i32 500, i32* %78, align 4
  %79 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %10, i32 0, i32 2
  store i32 500, i32* %79, align 4
  %80 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %10, i32 0, i32 3
  store i32 5000, i32* %80, align 4
  %81 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %10, i32 0, i32 4
  store i32 6100, i32* %81, align 4
  %82 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %9, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %9, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %9, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %9, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %9, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %85, i32 %87, i32 %89, i32 %91)
  %93 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %9, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 %94, i32 %96)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %3
  %100 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %10, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  br label %108

102:                                              ; preds = %3
  %103 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %9, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 %104, i32 %106)
  br label %108

108:                                              ; preds = %102, %99
  %109 = phi i32 [ %101, %99 ], [ %107, %102 ]
  %110 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %11, i32 0, i32 0
  store i32 %109, i32* %110, align 4
  %111 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %9, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 %112, i32 %114)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %10, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  br label %126

120:                                              ; preds = %108
  %121 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %9, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 %122, i32 %124)
  br label %126

126:                                              ; preds = %120, %117
  %127 = phi i32 [ %119, %117 ], [ %125, %120 ]
  %128 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %11, i32 0, i32 1
  store i32 %127, i32* %128, align 4
  %129 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %9, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 %130, i32 %132)
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %10, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  br label %144

138:                                              ; preds = %126
  %139 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %9, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 %140, i32 %142)
  br label %144

144:                                              ; preds = %138, %135
  %145 = phi i32 [ %137, %135 ], [ %143, %138 ]
  %146 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %11, i32 0, i32 2
  store i32 %145, i32* %146, align 4
  %147 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %9, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 %148, i32 %150)
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %144
  %154 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %10, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  br label %162

156:                                              ; preds = %144
  %157 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %9, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 %158, i32 %160)
  br label %162

162:                                              ; preds = %156, %153
  %163 = phi i32 [ %155, %153 ], [ %161, %156 ]
  %164 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %11, i32 0, i32 3
  store i32 %163, i32* %164, align 4
  %165 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %9, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 %166, i32 %168)
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %162
  %172 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %10, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  br label %180

174:                                              ; preds = %162
  %175 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %8, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %9, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 %176, i32 %178)
  br label %180

180:                                              ; preds = %174, %171
  %181 = phi i32 [ %173, %171 ], [ %179, %174 ]
  %182 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %11, i32 0, i32 4
  store i32 %181, i32* %182, align 4
  %183 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %11, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i32, ...) bitcast (i32 (...)* @DIV_ROUND_UP to i32 (i32, i32, ...)*)(i32 %184, i32 10)
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8*
  %188 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %189 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %188, i32 0, i32 4
  store i8* %187, i8** %189, align 8
  %190 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %11, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (i32, i32, ...) bitcast (i32 (...)* @DIV_ROUND_UP to i32 (i32, i32, ...)*)(i32 %191, i32 10)
  %193 = sext i32 %192 to i64
  %194 = inttoptr i64 %193 to i8*
  %195 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %196 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  %197 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %11, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i32, i32, ...) bitcast (i32 (...)* @DIV_ROUND_UP to i32 (i32, i32, ...)*)(i32 %198, i32 10)
  %200 = sext i32 %199 to i64
  %201 = inttoptr i64 %200 to i8*
  %202 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %203 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %202, i32 0, i32 0
  store i8* %201, i8** %203, align 8
  %204 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %11, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i32, i32, ...) bitcast (i32 (...)* @DIV_ROUND_UP to i32 (i32, i32, ...)*)(i32 %205, i32 10)
  %207 = sext i32 %206 to i64
  %208 = inttoptr i64 %207 to i8*
  %209 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %210 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %209, i32 0, i32 3
  store i8* %208, i8** %210, align 8
  %211 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %11, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (i32, i32, ...) bitcast (i32 (...)* @DIV_ROUND_UP to i32 (i32, i32, ...)*)(i32 %212, i32 10)
  %214 = sext i32 %213 to i64
  %215 = inttoptr i64 %214 to i8*
  %216 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %217 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %216, i32 0, i32 2
  store i8* %215, i8** %217, align 8
  %218 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %219 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %218, i32 0, i32 4
  %220 = load i8*, i8** %219, align 8
  %221 = ptrtoint i8* %220 to i32
  %222 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %223 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %222, i32 0, i32 3
  %224 = load i8*, i8** %223, align 8
  %225 = ptrtoint i8* %224 to i32
  %226 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %227 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %226, i32 0, i32 2
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %221, i32 %225, i8* %228)
  %230 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %231 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %230, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = ptrtoint i8* %232 to i32
  %234 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %235 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = ptrtoint i8* %236 to i32
  %238 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %233, i32 %237)
  %239 = load %struct.edp_power_seq*, %struct.edp_power_seq** %6, align 8
  %240 = icmp ne %struct.edp_power_seq* %239, null
  br i1 %240, label %241, label %245

241:                                              ; preds = %180
  %242 = load %struct.edp_power_seq*, %struct.edp_power_seq** %6, align 8
  %243 = bitcast %struct.edp_power_seq* %242 to i8*
  %244 = bitcast %struct.edp_power_seq* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %243, i8* align 4 %244, i64 20, i1 false)
  br label %245

245:                                              ; preds = %241, %180
  ret void
}

declare dso_local i32 @ironlake_get_pp_control(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @max(...) #1

declare dso_local i32 @DIV_ROUND_UP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
