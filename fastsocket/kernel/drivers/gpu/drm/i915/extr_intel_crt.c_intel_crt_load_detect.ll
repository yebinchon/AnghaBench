; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_load_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_load_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crt = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"starting load-detect on CRT\0A\00", align 1
@PIPECONF_FORCE_BORDER = common dso_local global i32 0, align 4
@VGA_MSR_WRITE = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crt*)* @intel_crt_load_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_crt_load_detect(%struct.intel_crt* %0) #0 {
  %2 = alloca %struct.intel_crt*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.intel_crt* %0, %struct.intel_crt** %2, align 8
  %29 = load %struct.intel_crt*, %struct.intel_crt** %2, align 8
  %30 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.drm_device*, %struct.drm_device** %32, align 8
  store %struct.drm_device* %33, %struct.drm_device** %3, align 8
  %34 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %35, align 8
  store %struct.drm_i915_private* %36, %struct.drm_i915_private** %4, align 8
  %37 = load %struct.intel_crt*, %struct.intel_crt** %2, align 8
  %38 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_6__* @to_intel_crtc(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %5, align 4
  %45 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @BCLRPAT(i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @VTOTAL(i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @VBLANK(i32 %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @VSYNC(i32 %52)
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @PIPECONF(i32 %54)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @PIPEDSL(i32 %56)
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @I915_READ(i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @I915_READ(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @I915_READ(i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %7, align 4
  %65 = ashr i32 %64, 16
  %66 = and i32 %65, 4095
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, 2047
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, 4095
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = ashr i32 %74, 16
  %76 = and i32 %75, 4095
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @I915_WRITE(i32 %78, i32 5242960)
  %80 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %81 = call i32 @IS_GEN2(%struct.drm_device* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %110, label %83

83:                                               ; preds = %1
  %84 = load i32, i32* %19, align 4
  %85 = call i32 @I915_READ(i32 %84)
  store i32 %85, i32* %23, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* @PIPECONF_FORCE_BORDER, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @I915_WRITE(i32 %86, i32 %89)
  %91 = load i32, i32* %19, align 4
  %92 = call i32 @POSTING_READ(i32 %91)
  %93 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @intel_wait_for_vblank(%struct.drm_device* %93, i32 %94)
  %96 = load i32, i32* @VGA_MSR_WRITE, align 4
  %97 = call i32 @I915_READ8(i32 %96)
  store i32 %97, i32* %21, align 4
  %98 = load i32, i32* %21, align 4
  %99 = and i32 %98, 16
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %83
  %102 = load i32, i32* @connector_status_connected, align 4
  br label %105

103:                                              ; preds = %83
  %104 = load i32, i32* @connector_status_disconnected, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  store i32 %106, i32* %22, align 4
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %23, align 4
  %109 = call i32 @I915_WRITE(i32 %107, i32 %108)
  br label %202

110:                                              ; preds = %1
  store i32 0, i32* %24, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %110
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %114
  %119 = load i32, i32* %18, align 4
  %120 = call i32 @I915_READ(i32 %119)
  store i32 %120, i32* %27, align 4
  %121 = load i32, i32* %27, align 4
  %122 = and i32 %121, 65535
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %28, align 4
  %124 = load i32, i32* %28, align 4
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %12, align 4
  %127 = sub nsw i32 %126, 1
  %128 = load i32, i32* %13, align 4
  %129 = sub nsw i32 %128, 1
  %130 = shl i32 %129, 16
  %131 = or i32 %127, %130
  %132 = call i32 @I915_WRITE(i32 %125, i32 %131)
  store i32 1, i32* %24, align 4
  br label %133

133:                                              ; preds = %118, %114, %110
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %9, align 4
  %136 = sub nsw i32 %134, %135
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %13, align 4
  %139 = sub nsw i32 %137, %138
  %140 = icmp sge i32 %136, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %133
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %142, %143
  %145 = ashr i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %151

146:                                              ; preds = %133
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %147, %148
  %150 = ashr i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %146, %141
  br label %152

152:                                              ; preds = %157, %151
  %153 = load i32, i32* %20, align 4
  %154 = call i32 @I915_READ(i32 %153)
  %155 = load i32, i32* %9, align 4
  %156 = icmp sge i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %152

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %164, %158
  %160 = load i32, i32* %20, align 4
  %161 = call i32 @I915_READ(i32 %160)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp sle i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %159

165:                                              ; preds = %159
  store i32 0, i32* %26, align 4
  store i32 0, i32* %25, align 4
  br label %166

166:                                              ; preds = %178, %165
  %167 = load i32, i32* %25, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %25, align 4
  %169 = load i32, i32* @VGA_MSR_WRITE, align 4
  %170 = call i32 @I915_READ8(i32 %169)
  store i32 %170, i32* %21, align 4
  %171 = load i32, i32* %21, align 4
  %172 = and i32 %171, 16
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %166
  %175 = load i32, i32* %26, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %26, align 4
  br label %177

177:                                              ; preds = %174, %166
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %20, align 4
  %180 = call i32 @I915_READ(i32 %179)
  %181 = load i32, i32* %14, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %166, label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %24, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load i32, i32* %17, align 4
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @I915_WRITE(i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %186, %183
  %191 = load i32, i32* %26, align 4
  %192 = mul nsw i32 %191, 4
  %193 = load i32, i32* %25, align 4
  %194 = mul nsw i32 %193, 3
  %195 = icmp sgt i32 %192, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = load i32, i32* @connector_status_connected, align 4
  br label %200

198:                                              ; preds = %190
  %199 = load i32, i32* @connector_status_disconnected, align 4
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i32 [ %197, %196 ], [ %199, %198 ]
  store i32 %201, i32* %22, align 4
  br label %202

202:                                              ; preds = %200, %105
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %6, align 4
  %205 = call i32 @I915_WRITE(i32 %203, i32 %204)
  %206 = load i32, i32* %22, align 4
  ret i32 %206
}

declare dso_local %struct.TYPE_6__* @to_intel_crtc(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @BCLRPAT(i32) #1

declare dso_local i32 @VTOTAL(i32) #1

declare dso_local i32 @VBLANK(i32) #1

declare dso_local i32 @VSYNC(i32) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @PIPEDSL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @IS_GEN2(%struct.drm_device*) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_device*, i32) #1

declare dso_local i32 @I915_READ8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
