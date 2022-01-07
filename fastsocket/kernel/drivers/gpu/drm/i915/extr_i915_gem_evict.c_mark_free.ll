; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_evict.c_mark_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_evict.c_mark_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, i32, i64 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_object*, %struct.list_head*)* @mark_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_free(%struct.drm_i915_gem_object* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca %struct.list_head*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %6 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %7 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

11:                                               ; preds = %2
  %12 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %13 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %12, i32 0, i32 1
  %14 = load %struct.list_head*, %struct.list_head** %5, align 8
  %15 = call i32 @list_add(i32* %13, %struct.list_head* %14)
  %16 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %17 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @drm_mm_scan_add_block(i32 %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %11, %10
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @drm_mm_scan_add_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
