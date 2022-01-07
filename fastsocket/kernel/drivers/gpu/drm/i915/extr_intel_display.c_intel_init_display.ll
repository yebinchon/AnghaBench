; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_init_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@haswell_crtc_mode_set = common dso_local global i32 0, align 4
@haswell_crtc_enable = common dso_local global i32 0, align 4
@haswell_crtc_disable = common dso_local global i32 0, align 4
@haswell_crtc_off = common dso_local global i32 0, align 4
@ironlake_update_plane = common dso_local global i8* null, align 8
@ironlake_crtc_mode_set = common dso_local global i32 0, align 4
@ironlake_crtc_enable = common dso_local global i32 0, align 4
@ironlake_crtc_disable = common dso_local global i32 0, align 4
@ironlake_crtc_off = common dso_local global i32 0, align 4
@i9xx_crtc_mode_set = common dso_local global i32 0, align 4
@i9xx_crtc_enable = common dso_local global i32 0, align 4
@i9xx_crtc_disable = common dso_local global i32 0, align 4
@i9xx_crtc_off = common dso_local global i32 0, align 4
@i9xx_update_plane = common dso_local global i8* null, align 8
@valleyview_get_display_clock_speed = common dso_local global i32 0, align 4
@i945_get_display_clock_speed = common dso_local global i32 0, align 4
@i915_get_display_clock_speed = common dso_local global i32 0, align 4
@i9xx_misc_get_display_clock_speed = common dso_local global i32 0, align 4
@i915gm_get_display_clock_speed = common dso_local global i32 0, align 4
@i865_get_display_clock_speed = common dso_local global i32 0, align 4
@i855_get_display_clock_speed = common dso_local global i32 0, align 4
@i830_get_display_clock_speed = common dso_local global i32 0, align 4
@ironlake_fdi_link_train = common dso_local global i32 0, align 4
@ironlake_write_eld = common dso_local global i8* null, align 8
@gen6_fdi_link_train = common dso_local global i32 0, align 4
@ivb_manual_fdi_link_train = common dso_local global i32 0, align 4
@ivb_modeset_global_resources = common dso_local global i32 0, align 4
@hsw_fdi_link_train = common dso_local global i32 0, align 4
@haswell_write_eld = common dso_local global i8* null, align 8
@haswell_modeset_global_resources = common dso_local global i32 0, align 4
@g4x_write_eld = common dso_local global i8* null, align 8
@intel_default_queue_flip = common dso_local global i32 0, align 4
@intel_gen2_queue_flip = common dso_local global i32 0, align 4
@intel_gen3_queue_flip = common dso_local global i32 0, align 4
@intel_gen4_queue_flip = common dso_local global i32 0, align 4
@intel_gen6_queue_flip = common dso_local global i32 0, align 4
@intel_gen7_queue_flip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @intel_init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_init_display(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = call i64 @HAS_DDI(%struct.drm_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load i32, i32* @haswell_crtc_mode_set, align 4
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 9
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @haswell_crtc_enable, align 4
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 8
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @haswell_crtc_disable, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 7
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @haswell_crtc_off, align 4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 6
  store i32 %23, i32* %26, align 8
  %27 = load i8*, i8** @ironlake_update_plane, align 8
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  store i8* %27, i8** %30, align 8
  br label %78

31:                                               ; preds = %1
  %32 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %33 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load i32, i32* @ironlake_crtc_mode_set, align 4
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 9
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @ironlake_crtc_enable, align 4
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 8
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @ironlake_crtc_disable, align 4
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %46 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 7
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @ironlake_crtc_off, align 4
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %50 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 6
  store i32 %48, i32* %51, align 8
  %52 = load i8*, i8** @ironlake_update_plane, align 8
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %54 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  store i8* %52, i8** %55, align 8
  br label %77

56:                                               ; preds = %31
  %57 = load i32, i32* @i9xx_crtc_mode_set, align 4
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 9
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @i9xx_crtc_enable, align 4
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %63 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 8
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @i9xx_crtc_disable, align 4
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %67 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 7
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @i9xx_crtc_off, align 4
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %71 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 6
  store i32 %69, i32* %72, align 8
  %73 = load i8*, i8** @i9xx_update_plane, align 8
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %75 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 5
  store i8* %73, i8** %76, align 8
  br label %77

77:                                               ; preds = %56, %35
  br label %78

78:                                               ; preds = %77, %10
  %79 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %80 = call i64 @IS_VALLEYVIEW(%struct.drm_device* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32, i32* @valleyview_get_display_clock_speed, align 4
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %85 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  store i32 %83, i32* %86, align 8
  br label %168

87:                                               ; preds = %78
  %88 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %89 = call i64 @IS_I945G(%struct.drm_device* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %87
  %92 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %93 = call i64 @IS_G33(%struct.drm_device* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %97 = call i64 @IS_PINEVIEW_M(%struct.drm_device* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %95, %87
  %100 = load i32, i32* @i945_get_display_clock_speed, align 4
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %102 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 4
  store i32 %100, i32* %103, align 8
  br label %167

104:                                              ; preds = %95, %91
  %105 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %106 = call i64 @IS_I915G(%struct.drm_device* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32, i32* @i915_get_display_clock_speed, align 4
  %110 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %111 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  store i32 %109, i32* %112, align 8
  br label %166

113:                                              ; preds = %104
  %114 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %115 = call i64 @IS_I945GM(%struct.drm_device* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %113
  %118 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %119 = call i64 @IS_845G(%struct.drm_device* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %123 = call i64 @IS_PINEVIEW_M(%struct.drm_device* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121, %117, %113
  %126 = load i32, i32* @i9xx_misc_get_display_clock_speed, align 4
  %127 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %128 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 4
  store i32 %126, i32* %129, align 8
  br label %165

130:                                              ; preds = %121
  %131 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %132 = call i64 @IS_I915GM(%struct.drm_device* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load i32, i32* @i915gm_get_display_clock_speed, align 4
  %136 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %137 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 4
  store i32 %135, i32* %138, align 8
  br label %164

139:                                              ; preds = %130
  %140 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %141 = call i64 @IS_I865G(%struct.drm_device* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load i32, i32* @i865_get_display_clock_speed, align 4
  %145 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %146 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 4
  store i32 %144, i32* %147, align 8
  br label %163

148:                                              ; preds = %139
  %149 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %150 = call i64 @IS_I85X(%struct.drm_device* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load i32, i32* @i855_get_display_clock_speed, align 4
  %154 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %155 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 4
  store i32 %153, i32* %156, align 8
  br label %162

157:                                              ; preds = %148
  %158 = load i32, i32* @i830_get_display_clock_speed, align 4
  %159 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %160 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 4
  store i32 %158, i32* %161, align 8
  br label %162

162:                                              ; preds = %157, %152
  br label %163

163:                                              ; preds = %162, %143
  br label %164

164:                                              ; preds = %163, %134
  br label %165

165:                                              ; preds = %164, %125
  br label %166

166:                                              ; preds = %165, %108
  br label %167

167:                                              ; preds = %166, %99
  br label %168

168:                                              ; preds = %167, %82
  %169 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %170 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %236

172:                                              ; preds = %168
  %173 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %174 = call i64 @IS_GEN5(%struct.drm_device* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %172
  %177 = load i32, i32* @ironlake_fdi_link_train, align 4
  %178 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %179 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 3
  store i32 %177, i32* %180, align 4
  %181 = load i8*, i8** @ironlake_write_eld, align 8
  %182 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %183 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  store i8* %181, i8** %184, align 8
  br label %235

185:                                              ; preds = %172
  %186 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %187 = call i64 @IS_GEN6(%struct.drm_device* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %185
  %190 = load i32, i32* @gen6_fdi_link_train, align 4
  %191 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %192 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 3
  store i32 %190, i32* %193, align 4
  %194 = load i8*, i8** @ironlake_write_eld, align 8
  %195 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %196 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 1
  store i8* %194, i8** %197, align 8
  br label %234

198:                                              ; preds = %185
  %199 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %200 = call i64 @IS_IVYBRIDGE(%struct.drm_device* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %198
  %203 = load i32, i32* @ivb_manual_fdi_link_train, align 4
  %204 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %205 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 3
  store i32 %203, i32* %206, align 4
  %207 = load i8*, i8** @ironlake_write_eld, align 8
  %208 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %209 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 1
  store i8* %207, i8** %210, align 8
  %211 = load i32, i32* @ivb_modeset_global_resources, align 4
  %212 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %213 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 2
  store i32 %211, i32* %214, align 8
  br label %233

215:                                              ; preds = %198
  %216 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %217 = call i64 @IS_HASWELL(%struct.drm_device* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %232

219:                                              ; preds = %215
  %220 = load i32, i32* @hsw_fdi_link_train, align 4
  %221 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %222 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 3
  store i32 %220, i32* %223, align 4
  %224 = load i8*, i8** @haswell_write_eld, align 8
  %225 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %226 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 1
  store i8* %224, i8** %227, align 8
  %228 = load i32, i32* @haswell_modeset_global_resources, align 4
  %229 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %230 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 2
  store i32 %228, i32* %231, align 8
  br label %232

232:                                              ; preds = %219, %215
  br label %233

233:                                              ; preds = %232, %202
  br label %234

234:                                              ; preds = %233, %189
  br label %235

235:                                              ; preds = %234, %176
  br label %246

236:                                              ; preds = %168
  %237 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %238 = call i64 @IS_G4X(%struct.drm_device* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %236
  %241 = load i8*, i8** @g4x_write_eld, align 8
  %242 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %243 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 1
  store i8* %241, i8** %244, align 8
  br label %245

245:                                              ; preds = %240, %236
  br label %246

246:                                              ; preds = %245, %235
  %247 = load i32, i32* @intel_default_queue_flip, align 4
  %248 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %249 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 0
  store i32 %247, i32* %250, align 8
  %251 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %252 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %251)
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  switch i32 %254, label %280 [
    i32 2, label %255
    i32 3, label %260
    i32 4, label %265
    i32 5, label %265
    i32 6, label %270
    i32 7, label %275
  ]

255:                                              ; preds = %246
  %256 = load i32, i32* @intel_gen2_queue_flip, align 4
  %257 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %258 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 0
  store i32 %256, i32* %259, align 8
  br label %280

260:                                              ; preds = %246
  %261 = load i32, i32* @intel_gen3_queue_flip, align 4
  %262 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %263 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 0
  store i32 %261, i32* %264, align 8
  br label %280

265:                                              ; preds = %246, %246
  %266 = load i32, i32* @intel_gen4_queue_flip, align 4
  %267 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %268 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 0
  store i32 %266, i32* %269, align 8
  br label %280

270:                                              ; preds = %246
  %271 = load i32, i32* @intel_gen6_queue_flip, align 4
  %272 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %273 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 0
  store i32 %271, i32* %274, align 8
  br label %280

275:                                              ; preds = %246
  %276 = load i32, i32* @intel_gen7_queue_flip, align 4
  %277 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %278 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 0
  store i32 %276, i32* %279, align 8
  br label %280

280:                                              ; preds = %246, %275, %270, %265, %260, %255
  ret void
}

declare dso_local i64 @HAS_DDI(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_device*) #1

declare dso_local i64 @IS_I945G(%struct.drm_device*) #1

declare dso_local i64 @IS_G33(%struct.drm_device*) #1

declare dso_local i64 @IS_PINEVIEW_M(%struct.drm_device*) #1

declare dso_local i64 @IS_I915G(%struct.drm_device*) #1

declare dso_local i64 @IS_I945GM(%struct.drm_device*) #1

declare dso_local i64 @IS_845G(%struct.drm_device*) #1

declare dso_local i64 @IS_I915GM(%struct.drm_device*) #1

declare dso_local i64 @IS_I865G(%struct.drm_device*) #1

declare dso_local i64 @IS_I85X(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN5(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN6(%struct.drm_device*) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_device*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i64 @IS_G4X(%struct.drm_device*) #1

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
