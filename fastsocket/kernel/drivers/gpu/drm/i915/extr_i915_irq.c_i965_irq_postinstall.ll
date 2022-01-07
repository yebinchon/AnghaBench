; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_i965_irq_postinstall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_i965_irq_postinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.TYPE_3__ = type { i32, i64* }

@I915_ASLE_INTERRUPT = common dso_local global i32 0, align 4
@I915_DISPLAY_PORT_INTERRUPT = common dso_local global i32 0, align 4
@I915_DISPLAY_PIPE_A_EVENT_INTERRUPT = common dso_local global i32 0, align 4
@I915_DISPLAY_PIPE_B_EVENT_INTERRUPT = common dso_local global i32 0, align 4
@I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT = common dso_local global i32 0, align 4
@I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT = common dso_local global i32 0, align 4
@I915_RENDER_COMMAND_PARSER_ERROR_INTERRUPT = common dso_local global i32 0, align 4
@I915_USER_INTERRUPT = common dso_local global i32 0, align 4
@I915_BSD_USER_INTERRUPT = common dso_local global i32 0, align 4
@PIPE_GMBUS_EVENT_ENABLE = common dso_local global i32 0, align 4
@GM45_ERROR_PAGE_TABLE = common dso_local global i32 0, align 4
@GM45_ERROR_MEM_PRIV = common dso_local global i32 0, align 4
@GM45_ERROR_CP_PRIV = common dso_local global i32 0, align 4
@I915_ERROR_MEMORY_REFRESH = common dso_local global i32 0, align 4
@I915_ERROR_PAGE_TABLE = common dso_local global i32 0, align 4
@EMR = common dso_local global i32 0, align 4
@IMR = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@PORT_HOTPLUG_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @i965_irq_postinstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i965_irq_postinstall(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %3, align 8
  %10 = load i32, i32* @I915_ASLE_INTERRUPT, align 4
  %11 = load i32, i32* @I915_DISPLAY_PORT_INTERRUPT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @I915_DISPLAY_PIPE_A_EVENT_INTERRUPT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @I915_DISPLAY_PIPE_B_EVENT_INTERRUPT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @I915_RENDER_COMMAND_PARSER_ERROR_INTERRUPT, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = xor i32 %28, -1
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @I915_USER_INTERRUPT, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %34 = call i64 @IS_G4X(%struct.drm_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i32, i32* @I915_BSD_USER_INTERRUPT, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = load i32, i32* @PIPE_GMBUS_EVENT_ENABLE, align 4
  %51 = call i32 @i915_enable_pipestat(%struct.TYPE_3__* %49, i32 0, i32 %50)
  %52 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %53 = call i64 @IS_G4X(%struct.drm_device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %40
  %56 = load i32, i32* @GM45_ERROR_PAGE_TABLE, align 4
  %57 = load i32, i32* @GM45_ERROR_MEM_PRIV, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @GM45_ERROR_CP_PRIV, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @I915_ERROR_MEMORY_REFRESH, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  store i32 %63, i32* %5, align 4
  br label %69

64:                                               ; preds = %40
  %65 = load i32, i32* @I915_ERROR_PAGE_TABLE, align 4
  %66 = load i32, i32* @I915_ERROR_MEMORY_REFRESH, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %55
  %70 = load i32, i32* @EMR, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @I915_WRITE(i32 %70, i32 %71)
  %73 = load i32, i32* @IMR, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @I915_WRITE(i32 %73, i32 %76)
  %78 = load i32, i32* @IER, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @I915_WRITE(i32 %78, i32 %79)
  %81 = load i32, i32* @IER, align 4
  %82 = call i32 @POSTING_READ(i32 %81)
  %83 = load i32, i32* @PORT_HOTPLUG_EN, align 4
  %84 = call i32 @I915_WRITE(i32 %83, i32 0)
  %85 = load i32, i32* @PORT_HOTPLUG_EN, align 4
  %86 = call i32 @POSTING_READ(i32 %85)
  %87 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %88 = call i32 @intel_opregion_enable_asle(%struct.drm_device* %87)
  ret i32 0
}

declare dso_local i64 @IS_G4X(%struct.drm_device*) #1

declare dso_local i32 @i915_enable_pipestat(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_opregion_enable_asle(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
