; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_flush_cpu_write_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_flush_cpu_write_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@I915_GEM_DOMAIN_CPU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_gem_object*)* @i915_gem_object_flush_cpu_write_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_gem_object_flush_cpu_write_domain(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca %struct.drm_i915_gem_object*, align 8
  %3 = alloca i64, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %2, align 8
  %4 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @I915_GEM_DOMAIN_CPU, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %13 = call i32 @i915_gem_clflush_object(%struct.drm_i915_gem_object* %12)
  %14 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %15 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @i915_gem_chipset_flush(i32 %17)
  %19 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %20 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %3, align 8
  %23 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %24 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %28 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @trace_i915_gem_object_change_domain(%struct.drm_i915_gem_object* %26, i32 %30, i64 %31)
  br label %33

33:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @i915_gem_clflush_object(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_chipset_flush(i32) #1

declare dso_local i32 @trace_i915_gem_object_change_domain(%struct.drm_i915_gem_object*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
