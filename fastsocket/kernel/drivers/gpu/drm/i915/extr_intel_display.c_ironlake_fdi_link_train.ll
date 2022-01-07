; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ironlake_fdi_link_train.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ironlake_fdi_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32, i32, i32 }

@FDI_RX_SYMBOL_LOCK = common dso_local global i32 0, align 4
@FDI_RX_BIT_LOCK = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_NONE = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_1 = common dso_local global i32 0, align 4
@FDI_TX_ENABLE = common dso_local global i32 0, align 4
@FDI_RX_ENABLE = common dso_local global i32 0, align 4
@FDI_RX_PHASE_SYNC_POINTER_OVR = common dso_local global i32 0, align 4
@FDI_RX_PHASE_SYNC_POINTER_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"FDI_RX_IIR 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"FDI train 1 done.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"FDI train 1 fail!\0A\00", align 1
@FDI_LINK_TRAIN_PATTERN_2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"FDI train 2 done.\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"FDI train 2 fail!\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"FDI train done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @ironlake_fdi_link_train to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_fdi_link_train(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %3, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %4, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %18 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %17)
  store %struct.intel_crtc* %18, %struct.intel_crtc** %5, align 8
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %20 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %23 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @assert_pipe_enabled(%struct.drm_i915_private* %25, i32 %26)
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @assert_plane_enabled(%struct.drm_i915_private* %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @FDI_RX_IMR(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @I915_READ(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @FDI_RX_SYMBOL_LOCK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @FDI_RX_BIT_LOCK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @I915_WRITE(i32 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @I915_READ(i32 %46)
  %48 = call i32 @udelay(i32 150)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @FDI_TX_CTL(i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @I915_READ(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, -3670017
  store i32 %54, i32* %9, align 4
  %55 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %56 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  %59 = shl i32 %58, 19
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @FDI_TX_ENABLE, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @I915_WRITE(i32 %69, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @FDI_RX_CTL(i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @I915_READ(i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1, align 4
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @FDI_RX_ENABLE, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @I915_WRITE(i32 %85, i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @POSTING_READ(i32 %90)
  %92 = call i32 @udelay(i32 150)
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @FDI_RX_CHICKEN(i32 %93)
  %95 = load i32, i32* @FDI_RX_PHASE_SYNC_POINTER_OVR, align 4
  %96 = call i32 @I915_WRITE(i32 %94, i32 %95)
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @FDI_RX_CHICKEN(i32 %97)
  %99 = load i32, i32* @FDI_RX_PHASE_SYNC_POINTER_OVR, align 4
  %100 = load i32, i32* @FDI_RX_PHASE_SYNC_POINTER_EN, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @I915_WRITE(i32 %98, i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @FDI_RX_IIR(i32 %103)
  store i32 %104, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %125, %1
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 5
  br i1 %107, label %108, label %128

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @I915_READ(i32 %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @FDI_RX_BIT_LOCK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %108
  %118 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @FDI_RX_BIT_LOCK, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @I915_WRITE(i32 %119, i32 %122)
  br label %128

124:                                              ; preds = %108
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %105

128:                                              ; preds = %117, %105
  %129 = load i32, i32* %10, align 4
  %130 = icmp eq i32 %129, 5
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %128
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @FDI_TX_CTL(i32 %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @I915_READ(i32 %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %9, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_2, align 4
  %143 = load i32, i32* %9, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @I915_WRITE(i32 %145, i32 %146)
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @FDI_RX_CTL(i32 %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @I915_READ(i32 %150)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %9, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_2, align 4
  %157 = load i32, i32* %9, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @I915_WRITE(i32 %159, i32 %160)
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @POSTING_READ(i32 %162)
  %164 = call i32 @udelay(i32 150)
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @FDI_RX_IIR(i32 %165)
  store i32 %166, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %167

167:                                              ; preds = %187, %133
  %168 = load i32, i32* %10, align 4
  %169 = icmp slt i32 %168, 5
  br i1 %169, label %170, label %190

170:                                              ; preds = %167
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @I915_READ(i32 %171)
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %9, align 4
  %174 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @FDI_RX_SYMBOL_LOCK, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %170
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* @FDI_RX_SYMBOL_LOCK, align 4
  %183 = or i32 %181, %182
  %184 = call i32 @I915_WRITE(i32 %180, i32 %183)
  %185 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %190

186:                                              ; preds = %170
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %10, align 4
  br label %167

190:                                              ; preds = %179, %167
  %191 = load i32, i32* %10, align 4
  %192 = icmp eq i32 %191, 5
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %190
  %196 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @assert_pipe_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @assert_plane_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @FDI_RX_IMR(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @FDI_TX_CTL(i32) #1

declare dso_local i32 @FDI_RX_CTL(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @FDI_RX_CHICKEN(i32) #1

declare dso_local i32 @FDI_RX_IIR(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
