; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_suspend.c_i915_restore_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_suspend.c_i915_restore_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32 }

@LBB = common dso_local global i32 0, align 4
@DRIVER_MODESET = common dso_local global i32 0, align 4
@DEIER = common dso_local global i64 0, align 8
@DEIMR = common dso_local global i64 0, align 8
@GTIER = common dso_local global i64 0, align 8
@GTIMR = common dso_local global i64 0, align 8
@_FDI_RXA_IMR = common dso_local global i64 0, align 8
@_FDI_RXB_IMR = common dso_local global i64 0, align 8
@PCH_PORT_HOTPLUG = common dso_local global i64 0, align 8
@IER = common dso_local global i64 0, align 8
@IMR = common dso_local global i64 0, align 8
@CACHE_MODE_0 = common dso_local global i64 0, align 8
@MI_ARB_STATE = common dso_local global i64 0, align 8
@SWF00 = common dso_local global i64 0, align 8
@SWF10 = common dso_local global i64 0, align 8
@SWF30 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_restore_state(%struct.drm_device* %0) #0 {
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
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 14
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pci_write_config_byte(i32 %10, i32 %11, i32 %15)
  %17 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %21 = call i32 @i915_restore_display(%struct.drm_device* %20)
  %22 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %23 = load i32, i32* @DRIVER_MODESET, align 4
  %24 = call i32 @drm_core_check_feature(%struct.drm_device* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %87, label %26

26:                                               ; preds = %1
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %26
  %31 = load i64, i64* @DEIER, align 8
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @I915_WRITE(i64 %31, i32 %35)
  %37 = load i64, i64* @DEIMR, align 8
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @I915_WRITE(i64 %37, i32 %41)
  %43 = load i64, i64* @GTIER, align 8
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %45 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @I915_WRITE(i64 %43, i32 %47)
  %49 = load i64, i64* @GTIMR, align 8
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %51 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @I915_WRITE(i64 %49, i32 %53)
  %55 = load i64, i64* @_FDI_RXA_IMR, align 8
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %57 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @I915_WRITE(i64 %55, i32 %59)
  %61 = load i64, i64* @_FDI_RXB_IMR, align 8
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %63 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @I915_WRITE(i64 %61, i32 %65)
  %67 = load i64, i64* @PCH_PORT_HOTPLUG, align 8
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %69 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @I915_WRITE(i64 %67, i32 %71)
  br label %86

73:                                               ; preds = %26
  %74 = load i64, i64* @IER, align 8
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %76 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @I915_WRITE(i64 %74, i32 %78)
  %80 = load i64, i64* @IMR, align 8
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %82 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @I915_WRITE(i64 %80, i32 %84)
  br label %86

86:                                               ; preds = %73, %30
  br label %87

87:                                               ; preds = %86, %1
  %88 = load i64, i64* @CACHE_MODE_0, align 8
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %90 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, -65536
  %94 = call i32 @I915_WRITE(i64 %88, i32 %93)
  %95 = load i64, i64* @MI_ARB_STATE, align 8
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %97 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, -65536
  %101 = call i32 @I915_WRITE(i64 %95, i32 %100)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %134, %87
  %103 = load i32, i32* %4, align 4
  %104 = icmp slt i32 %103, 16
  br i1 %104, label %105, label %137

105:                                              ; preds = %102
  %106 = load i64, i64* @SWF00, align 8
  %107 = load i32, i32* %4, align 4
  %108 = shl i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %106, %109
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %112 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 11
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @I915_WRITE(i64 %110, i32 %118)
  %120 = load i64, i64* @SWF10, align 8
  %121 = load i32, i32* %4, align 4
  %122 = shl i32 %121, 2
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %120, %123
  %125 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %126 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 12
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @I915_WRITE(i64 %124, i32 %132)
  br label %134

134:                                              ; preds = %105
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %102

137:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %156, %137
  %139 = load i32, i32* %4, align 4
  %140 = icmp slt i32 %139, 3
  br i1 %140, label %141, label %159

141:                                              ; preds = %138
  %142 = load i64, i64* @SWF30, align 8
  %143 = load i32, i32* %4, align 4
  %144 = shl i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %142, %145
  %147 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %148 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 13
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @I915_WRITE(i64 %146, i32 %154)
  br label %156

156:                                              ; preds = %141
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %4, align 4
  br label %138

159:                                              ; preds = %138
  %160 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %161 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %160, i32 0, i32 0
  %162 = call i32 @mutex_unlock(i32* %161)
  %163 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %164 = call i32 @intel_i2c_reset(%struct.drm_device* %163)
  ret i32 0
}

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_restore_display(%struct.drm_device*) #1

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_i2c_reset(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
