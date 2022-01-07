; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_enable_rc6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_enable_rc6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.intel_ring_buffer* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.intel_ring_buffer = type { i32 }

@RCS = common dso_local global i64 0, align 8
@MI_SUSPEND_FLUSH = common dso_local global i32 0, align 4
@MI_SUSPEND_FLUSH_EN = common dso_local global i32 0, align 4
@MI_SET_CONTEXT = common dso_local global i32 0, align 4
@MI_MM_SPACE_GTT = common dso_local global i32 0, align 4
@MI_SAVE_EXT_STATE_EN = common dso_local global i32 0, align 4
@MI_RESTORE_EXT_STATE_EN = common dso_local global i32 0, align 4
@MI_RESTORE_INHIBIT = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4
@MI_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"failed to enable ironlake power power savings\0A\00", align 1
@PWRCTXA = common dso_local global i32 0, align 4
@PWRCTX_EN = common dso_local global i32 0, align 4
@RSTDBYCTL = common dso_local global i32 0, align 4
@RCX_SW_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @ironlake_enable_rc6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_enable_rc6(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_ring_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 1
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %3, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 2
  %12 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %11, align 8
  %13 = load i64, i64* @RCS, align 8
  %14 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %12, i64 %13
  store %struct.intel_ring_buffer* %14, %struct.intel_ring_buffer** %4, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %16 = call i32 @intel_enable_rc6(%struct.drm_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %117

19:                                               ; preds = %1
  %20 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = call i32 @mutex_is_locked(i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = call i32 @ironlake_setup_rc6(%struct.drm_device* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %117

32:                                               ; preds = %19
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %5, align 4
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %41 = call i32 @intel_ring_begin(%struct.intel_ring_buffer* %40, i32 6)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %32
  %45 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %46 = call i32 @ironlake_teardown_rc6(%struct.drm_device* %45)
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %49 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  br label %117

51:                                               ; preds = %32
  %52 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %53 = load i32, i32* @MI_SUSPEND_FLUSH, align 4
  %54 = load i32, i32* @MI_SUSPEND_FLUSH_EN, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %52, i32 %55)
  %57 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %58 = load i32, i32* @MI_SET_CONTEXT, align 4
  %59 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %57, i32 %58)
  %60 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %62 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MI_MM_SPACE_GTT, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @MI_SAVE_EXT_STATE_EN, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @MI_RESTORE_EXT_STATE_EN, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @MI_RESTORE_INHIBIT, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %60, i32 %74)
  %76 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %77 = load i32, i32* @MI_SUSPEND_FLUSH, align 4
  %78 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %76, i32 %77)
  %79 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %80 = load i32, i32* @MI_NOOP, align 4
  %81 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %79, i32 %80)
  %82 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %83 = load i32, i32* @MI_FLUSH, align 4
  %84 = call i32 @intel_ring_emit(%struct.intel_ring_buffer* %82, i32 %83)
  %85 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %86 = call i32 @intel_ring_advance(%struct.intel_ring_buffer* %85)
  %87 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %88 = call i32 @intel_ring_idle(%struct.intel_ring_buffer* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %91 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %51
  %96 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %97 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %98 = call i32 @ironlake_teardown_rc6(%struct.drm_device* %97)
  br label %117

99:                                               ; preds = %51
  %100 = load i32, i32* @PWRCTXA, align 4
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %102 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @PWRCTX_EN, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @I915_WRITE(i32 %100, i32 %108)
  %110 = load i32, i32* @RSTDBYCTL, align 4
  %111 = load i32, i32* @RSTDBYCTL, align 4
  %112 = call i32 @I915_READ(i32 %111)
  %113 = load i32, i32* @RCX_SW_EXIT, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  %116 = call i32 @I915_WRITE(i32 %110, i32 %115)
  br label %117

117:                                              ; preds = %99, %95, %44, %31, %18
  ret void
}

declare dso_local i32 @intel_enable_rc6(%struct.drm_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @ironlake_setup_rc6(%struct.drm_device*) #1

declare dso_local i32 @intel_ring_begin(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @ironlake_teardown_rc6(%struct.drm_device*) #1

declare dso_local i32 @intel_ring_emit(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @intel_ring_advance(%struct.intel_ring_buffer*) #1

declare dso_local i32 @intel_ring_idle(%struct.intel_ring_buffer*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
