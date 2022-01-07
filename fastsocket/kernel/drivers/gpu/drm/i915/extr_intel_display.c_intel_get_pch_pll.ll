; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_get_pch_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_get_pch_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pch_pll = type { i64, i32, i32, i32, i32 }
%struct.intel_crtc = type { i32, %struct.intel_pch_pll*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32, %struct.intel_pch_pll*, i32 }

@.str = private unnamed_addr constant [37 x i8] c"CRTC:%d reusing existing PCH PLL %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"CRTC:%d using pre-allocated PCH PLL %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"CRTC:%d sharing existing PCH PLL %x (refcount %d, ative %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"CRTC:%d allocated PCH PLL %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"using pll %d for pipe %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"switching PLL %x off\0A\00", align 1
@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_pch_pll* (%struct.intel_crtc*, i32, i32)* @intel_get_pch_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_pch_pll* @intel_get_pch_pll(%struct.intel_crtc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_pch_pll*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.intel_pch_pll*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %8, align 8
  %17 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %18 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %17, i32 0, i32 1
  %19 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %18, align 8
  store %struct.intel_pch_pll* %19, %struct.intel_pch_pll** %9, align 8
  %20 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %21 = icmp ne %struct.intel_pch_pll* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %24 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %29 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  br label %157

32:                                               ; preds = %3
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @HAS_PCH_IBX(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %40 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %10, align 4
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 1
  %44 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %44, i64 %46
  store %struct.intel_pch_pll* %47, %struct.intel_pch_pll** %9, align 8
  %48 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %49 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %54 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55)
  br label %144

57:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %108, %57
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %111

64:                                               ; preds = %58
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %66 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %65, i32 0, i32 1
  %67 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %67, i64 %69
  store %struct.intel_pch_pll* %70, %struct.intel_pch_pll** %9, align 8
  %71 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %72 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %108

76:                                               ; preds = %64
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %79 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @I915_READ(i32 %80)
  %82 = and i32 %81, 2147483647
  %83 = icmp eq i32 %77, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %76
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %87 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @I915_READ(i32 %88)
  %90 = icmp eq i32 %85, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %84
  %92 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %93 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %98 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %101 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %104 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %99, i64 %102, i32 %105)
  br label %144

107:                                              ; preds = %84, %76
  br label %108

108:                                              ; preds = %107, %75
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %58

111:                                              ; preds = %58
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %140, %111
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %115 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %143

118:                                              ; preds = %112
  %119 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %120 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %119, i32 0, i32 1
  %121 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %121, i64 %123
  store %struct.intel_pch_pll* %124, %struct.intel_pch_pll** %9, align 8
  %125 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %126 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %118
  %130 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %131 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %136 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %134, i32 %137)
  br label %144

139:                                              ; preds = %118
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %112

143:                                              ; preds = %112
  store %struct.intel_pch_pll* null, %struct.intel_pch_pll** %4, align 8
  br label %191

144:                                              ; preds = %129, %91, %38
  %145 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %146 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %147 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %146, i32 0, i32 1
  store %struct.intel_pch_pll* %145, %struct.intel_pch_pll** %147, align 8
  %148 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %149 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %149, align 8
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %154 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %152, i32 %155)
  br label %157

157:                                              ; preds = %144, %22
  %158 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %159 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %160)
  %162 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %163 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %167 = xor i32 %166, -1
  %168 = and i32 %165, %167
  %169 = call i32 @I915_WRITE(i32 %164, i32 %168)
  %170 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %171 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @POSTING_READ(i32 %172)
  %174 = call i32 @udelay(i32 150)
  %175 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %176 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @I915_WRITE(i32 %177, i32 %178)
  %180 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %181 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %185 = xor i32 %184, -1
  %186 = and i32 %183, %185
  %187 = call i32 @I915_WRITE(i32 %182, i32 %186)
  %188 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  %189 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %188, i32 0, i32 1
  store i32 0, i32* %189, align 8
  %190 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %9, align 8
  store %struct.intel_pch_pll* %190, %struct.intel_pch_pll** %4, align 8
  br label %191

191:                                              ; preds = %157, %143
  %192 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %4, align 8
  ret %struct.intel_pch_pll* %192
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, ...) #1

declare dso_local i64 @HAS_PCH_IBX(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, ...) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
