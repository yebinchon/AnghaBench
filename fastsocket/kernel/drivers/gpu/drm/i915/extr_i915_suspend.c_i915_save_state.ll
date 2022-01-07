; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_suspend.c_i915_save_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_suspend.c_i915_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8**, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@LBB = common dso_local global i32 0, align 4
@DRIVER_MODESET = common dso_local global i32 0, align 4
@DEIER = common dso_local global i64 0, align 8
@DEIMR = common dso_local global i64 0, align 8
@GTIER = common dso_local global i64 0, align 8
@GTIMR = common dso_local global i64 0, align 8
@_FDI_RXA_IMR = common dso_local global i64 0, align 8
@_FDI_RXB_IMR = common dso_local global i64 0, align 8
@RSTDBYCTL = common dso_local global i64 0, align 8
@PCH_PORT_HOTPLUG = common dso_local global i64 0, align 8
@IER = common dso_local global i64 0, align 8
@IMR = common dso_local global i64 0, align 8
@CACHE_MODE_0 = common dso_local global i64 0, align 8
@MI_ARB_STATE = common dso_local global i64 0, align 8
@SWF00 = common dso_local global i64 0, align 8
@SWF10 = common dso_local global i64 0, align 8
@SWF30 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_save_state(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 2
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @LBB, align 4
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 15
  %15 = call i32 @pci_read_config_byte(i32 %10, i32 %11, i32* %14)
  %16 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %20 = call i32 @i915_save_display(%struct.drm_device* %19)
  %21 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %22 = load i32, i32* @DRIVER_MODESET, align 4
  %23 = call i32 @drm_core_check_feature(%struct.drm_device* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %82, label %25

25:                                               ; preds = %1
  %26 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %27 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %70

29:                                               ; preds = %25
  %30 = load i64, i64* @DEIER, align 8
  %31 = call i8* @I915_READ(i64 %30)
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 14
  store i8* %31, i8** %34, align 8
  %35 = load i64, i64* @DEIMR, align 8
  %36 = call i8* @I915_READ(i64 %35)
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 13
  store i8* %36, i8** %39, align 8
  %40 = load i64, i64* @GTIER, align 8
  %41 = call i8* @I915_READ(i64 %40)
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 12
  store i8* %41, i8** %44, align 8
  %45 = load i64, i64* @GTIMR, align 8
  %46 = call i8* @I915_READ(i64 %45)
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 11
  store i8* %46, i8** %49, align 8
  %50 = load i64, i64* @_FDI_RXA_IMR, align 8
  %51 = call i8* @I915_READ(i64 %50)
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %53 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 10
  store i8* %51, i8** %54, align 8
  %55 = load i64, i64* @_FDI_RXB_IMR, align 8
  %56 = call i8* @I915_READ(i64 %55)
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %58 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 9
  store i8* %56, i8** %59, align 8
  %60 = load i64, i64* @RSTDBYCTL, align 8
  %61 = call i8* @I915_READ(i64 %60)
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %63 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 8
  store i8* %61, i8** %64, align 8
  %65 = load i64, i64* @PCH_PORT_HOTPLUG, align 8
  %66 = call i8* @I915_READ(i64 %65)
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %68 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 7
  store i8* %66, i8** %69, align 8
  br label %81

70:                                               ; preds = %25
  %71 = load i64, i64* @IER, align 8
  %72 = call i8* @I915_READ(i64 %71)
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %74 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 6
  store i8* %72, i8** %75, align 8
  %76 = load i64, i64* @IMR, align 8
  %77 = call i8* @I915_READ(i64 %76)
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %79 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 5
  store i8* %77, i8** %80, align 8
  br label %81

81:                                               ; preds = %70, %29
  br label %82

82:                                               ; preds = %81, %1
  %83 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %84 = call i32 @intel_disable_gt_powersave(%struct.drm_device* %83)
  %85 = load i64, i64* @CACHE_MODE_0, align 8
  %86 = call i8* @I915_READ(i64 %85)
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %88 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  store i8* %86, i8** %89, align 8
  %90 = load i64, i64* @MI_ARB_STATE, align 8
  %91 = call i8* @I915_READ(i64 %90)
  %92 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %93 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  store i8* %91, i8** %94, align 8
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %125, %82
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %96, 16
  br i1 %97, label %98, label %128

98:                                               ; preds = %95
  %99 = load i64, i64* @SWF00, align 8
  %100 = load i32, i32* %4, align 4
  %101 = shl i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %99, %102
  %104 = call i8* @I915_READ(i64 %103)
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %106 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  store i8* %104, i8** %111, align 8
  %112 = load i64, i64* @SWF10, align 8
  %113 = load i32, i32* %4, align 4
  %114 = shl i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %112, %115
  %117 = call i8* @I915_READ(i64 %116)
  %118 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %119 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i8**, i8*** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  store i8* %117, i8** %124, align 8
  br label %125

125:                                              ; preds = %98
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %4, align 4
  br label %95

128:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %146, %128
  %130 = load i32, i32* %4, align 4
  %131 = icmp slt i32 %130, 3
  br i1 %131, label %132, label %149

132:                                              ; preds = %129
  %133 = load i64, i64* @SWF30, align 8
  %134 = load i32, i32* %4, align 4
  %135 = shl i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %133, %136
  %138 = call i8* @I915_READ(i64 %137)
  %139 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %140 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i8**, i8*** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  store i8* %138, i8** %145, align 8
  br label %146

146:                                              ; preds = %132
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %4, align 4
  br label %129

149:                                              ; preds = %129
  %150 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %151 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %150, i32 0, i32 0
  %152 = call i32 @mutex_unlock(i32* %151)
  ret i32 0
}

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_save_display(%struct.drm_device*) #1

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i8* @I915_READ(i64) #1

declare dso_local i32 @intel_disable_gt_powersave(%struct.drm_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
