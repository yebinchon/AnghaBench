; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_panel.c_intel_panel_enable_backlight.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_panel.c_intel_panel_enable_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@BLC_PWM_CPU_CTL2 = common dso_local global i32 0, align 4
@BLC_PWM_CTL2 = common dso_local global i32 0, align 4
@BLM_PWM_ENABLE = common dso_local global i32 0, align 4
@BLM_PIPE_SELECT_IVB = common dso_local global i32 0, align 4
@BLM_PIPE_SELECT = common dso_local global i32 0, align 4
@BLC_PWM_PCH_CTL1 = common dso_local global i32 0, align 4
@BLM_PCH_PWM_ENABLE = common dso_local global i32 0, align 4
@BLM_PCH_OVERRIDE_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_panel_enable_backlight(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %5, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = call i64 @intel_panel_get_max_backlight(%struct.drm_device* %16)
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 4
  br i1 %25, label %26, label %94

26:                                               ; preds = %20
  %27 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %28 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @BLC_PWM_CPU_CTL2, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @BLC_PWM_CTL2, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @I915_READ(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @BLM_PWM_ENABLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %95

43:                                               ; preds = %34
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %45 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* @BLM_PIPE_SELECT_IVB, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %58

53:                                               ; preds = %43
  %54 = load i32, i32* @BLM_PIPE_SELECT, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @BLM_PIPE(i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @BLM_PWM_ENABLE, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @I915_WRITE(i32 %67, i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @POSTING_READ(i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @BLM_PWM_ENABLE, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @I915_WRITE(i32 %72, i32 %75)
  %77 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %78 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %58
  %81 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %82 = call i32 @I915_READ(i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* @BLM_PCH_PWM_ENABLE, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* @BLM_PCH_OVERRIDE_ENABLE, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @I915_WRITE(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %80, %58
  br label %94

94:                                               ; preds = %93, %20
  br label %95

95:                                               ; preds = %94, %42
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %97 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %96, i32 0, i32 2
  store i32 1, i32* %97, align 4
  %98 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %100 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @intel_panel_actually_set_backlight(%struct.drm_device* %98, i64 %101)
  ret void
}

declare dso_local i64 @intel_panel_get_max_backlight(%struct.drm_device*) #1

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @BLM_PIPE(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_panel_actually_set_backlight(%struct.drm_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
