; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_tiling.c_i915_gem_detect_bit_6_swizzle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_tiling.c_i915_gem_detect_bit_6_swizzle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@I915_BIT_6_SWIZZLE_UNKNOWN = common dso_local global i32 0, align 4
@I915_BIT_6_SWIZZLE_NONE = common dso_local global i32 0, align 4
@MAD_DIMM_C0 = common dso_local global i32 0, align 4
@MAD_DIMM_C1 = common dso_local global i32 0, align 4
@MAD_DIMM_A_SIZE_MASK = common dso_local global i32 0, align 4
@MAD_DIMM_B_SIZE_MASK = common dso_local global i32 0, align 4
@I915_BIT_6_SWIZZLE_9_10 = common dso_local global i32 0, align 4
@I915_BIT_6_SWIZZLE_9 = common dso_local global i32 0, align 4
@DCC = common dso_local global i32 0, align 4
@DCC_ADDRESSING_MODE_MASK = common dso_local global i32 0, align 4
@DCC_CHANNEL_XOR_DISABLE = common dso_local global i32 0, align 4
@DCC_CHANNEL_XOR_BIT_17 = common dso_local global i32 0, align 4
@I915_BIT_6_SWIZZLE_9_10_11 = common dso_local global i32 0, align 4
@I915_BIT_6_SWIZZLE_9_11 = common dso_local global i32 0, align 4
@I915_BIT_6_SWIZZLE_9_10_17 = common dso_local global i32 0, align 4
@I915_BIT_6_SWIZZLE_9_17 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Couldn't read from MCHBAR.  Disabling tiling.\0A\00", align 1
@C0DRB3 = common dso_local global i32 0, align 4
@C1DRB3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_detect_bit_6_swizzle(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %3, align 8
  %12 = load i32, i32* @I915_BIT_6_SWIZZLE_UNKNOWN, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @I915_BIT_6_SWIZZLE_UNKNOWN, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %15 = call i64 @IS_VALLEYVIEW(%struct.drm_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @I915_BIT_6_SWIZZLE_NONE, align 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @I915_BIT_6_SWIZZLE_NONE, align 4
  store i32 %19, i32* %5, align 4
  br label %132

20:                                               ; preds = %1
  %21 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %22 = call %struct.TYPE_6__* @INTEL_INFO(%struct.drm_device* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 6
  br i1 %25, label %26, label %51

26:                                               ; preds = %20
  %27 = load i32, i32* @MAD_DIMM_C0, align 4
  %28 = call i32 @I915_READ(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @MAD_DIMM_C1, align 4
  %30 = call i32 @I915_READ(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @MAD_DIMM_A_SIZE_MASK, align 4
  %32 = load i32, i32* @MAD_DIMM_B_SIZE_MASK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @MAD_DIMM_A_SIZE_MASK, align 4
  %37 = load i32, i32* @MAD_DIMM_B_SIZE_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %26
  %45 = load i32, i32* @I915_BIT_6_SWIZZLE_9_10, align 4
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @I915_BIT_6_SWIZZLE_9, align 4
  store i32 %46, i32* %5, align 4
  br label %50

47:                                               ; preds = %26
  %48 = load i32, i32* @I915_BIT_6_SWIZZLE_NONE, align 4
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @I915_BIT_6_SWIZZLE_NONE, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %131

51:                                               ; preds = %20
  %52 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %53 = call i64 @IS_GEN5(%struct.drm_device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @I915_BIT_6_SWIZZLE_9_10, align 4
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @I915_BIT_6_SWIZZLE_9, align 4
  store i32 %57, i32* %5, align 4
  br label %130

58:                                               ; preds = %51
  %59 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %60 = call i64 @IS_GEN2(%struct.drm_device* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @I915_BIT_6_SWIZZLE_NONE, align 4
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @I915_BIT_6_SWIZZLE_NONE, align 4
  store i32 %64, i32* %5, align 4
  br label %129

65:                                               ; preds = %58
  %66 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %67 = call i64 @IS_MOBILE(%struct.drm_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %71 = call i64 @IS_GEN3(%struct.drm_device* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %115

73:                                               ; preds = %69
  %74 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %75 = call i32 @IS_G33(%struct.drm_device* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %115, label %77

77:                                               ; preds = %73, %65
  %78 = load i32, i32* @DCC, align 4
  %79 = call i32 @I915_READ(i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @DCC_ADDRESSING_MODE_MASK, align 4
  %82 = and i32 %80, %81
  switch i32 %82, label %107 [
    i32 128, label %83
    i32 130, label %83
    i32 129, label %86
  ]

83:                                               ; preds = %77, %77
  %84 = load i32, i32* @I915_BIT_6_SWIZZLE_NONE, align 4
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* @I915_BIT_6_SWIZZLE_NONE, align 4
  store i32 %85, i32* %5, align 4
  br label %107

86:                                               ; preds = %77
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @DCC_CHANNEL_XOR_DISABLE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* @I915_BIT_6_SWIZZLE_9_10, align 4
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* @I915_BIT_6_SWIZZLE_9, align 4
  store i32 %93, i32* %5, align 4
  br label %106

94:                                               ; preds = %86
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @DCC_CHANNEL_XOR_BIT_17, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @I915_BIT_6_SWIZZLE_9_10_11, align 4
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* @I915_BIT_6_SWIZZLE_9_11, align 4
  store i32 %101, i32* %5, align 4
  br label %105

102:                                              ; preds = %94
  %103 = load i32, i32* @I915_BIT_6_SWIZZLE_9_10_17, align 4
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* @I915_BIT_6_SWIZZLE_9_17, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105, %91
  br label %107

107:                                              ; preds = %77, %106, %83
  %108 = load i32, i32* %8, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %112 = load i32, i32* @I915_BIT_6_SWIZZLE_UNKNOWN, align 4
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* @I915_BIT_6_SWIZZLE_UNKNOWN, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %107
  br label %128

115:                                              ; preds = %73, %69
  %116 = load i32, i32* @C0DRB3, align 4
  %117 = call i64 @I915_READ16(i32 %116)
  %118 = load i32, i32* @C1DRB3, align 4
  %119 = call i64 @I915_READ16(i32 %118)
  %120 = icmp ne i64 %117, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i32, i32* @I915_BIT_6_SWIZZLE_NONE, align 4
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* @I915_BIT_6_SWIZZLE_NONE, align 4
  store i32 %123, i32* %5, align 4
  br label %127

124:                                              ; preds = %115
  %125 = load i32, i32* @I915_BIT_6_SWIZZLE_9_10, align 4
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* @I915_BIT_6_SWIZZLE_9, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %124, %121
  br label %128

128:                                              ; preds = %127, %114
  br label %129

129:                                              ; preds = %128, %62
  br label %130

130:                                              ; preds = %129, %55
  br label %131

131:                                              ; preds = %130, %50
  br label %132

132:                                              ; preds = %131, %17
  %133 = load i32, i32* %4, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  ret void
}

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_device*) #1

declare dso_local %struct.TYPE_6__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_GEN5(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN2(%struct.drm_device*) #1

declare dso_local i64 @IS_MOBILE(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN3(%struct.drm_device*) #1

declare dso_local i32 @IS_G33(%struct.drm_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @I915_READ16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
