; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_user_framebuffer_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_user_framebuffer_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.intel_framebuffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_framebuffer*)* @intel_user_framebuffer_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_user_framebuffer_destroy(%struct.drm_framebuffer* %0) #0 {
  %2 = alloca %struct.drm_framebuffer*, align 8
  %3 = alloca %struct.intel_framebuffer*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %2, align 8
  %4 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %5 = call %struct.intel_framebuffer* @to_intel_framebuffer(%struct.drm_framebuffer* %4)
  store %struct.intel_framebuffer* %5, %struct.intel_framebuffer** %3, align 8
  %6 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %7 = call i32 @drm_framebuffer_cleanup(%struct.drm_framebuffer* %6)
  %8 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %3, align 8
  %9 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @drm_gem_object_unreference_unlocked(i32* %11)
  %13 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %3, align 8
  %14 = call i32 @kfree(%struct.intel_framebuffer* %13)
  ret void
}

declare dso_local %struct.intel_framebuffer* @to_intel_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_framebuffer_cleanup(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(i32*) #1

declare dso_local i32 @kfree(%struct.intel_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
