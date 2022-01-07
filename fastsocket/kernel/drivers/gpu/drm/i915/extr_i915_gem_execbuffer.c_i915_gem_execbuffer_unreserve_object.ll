; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_execbuffer.c_i915_gem_execbuffer_unreserve_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_execbuffer.c_i915_gem_execbuffer_unreserve_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.drm_i915_gem_exec_object2*, i32 }
%struct.drm_i915_gem_exec_object2 = type { i32 }

@__EXEC_OBJECT_HAS_FENCE = common dso_local global i32 0, align 4
@__EXEC_OBJECT_HAS_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_gem_object*)* @i915_gem_execbuffer_unreserve_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_gem_execbuffer_unreserve_object(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca %struct.drm_i915_gem_object*, align 8
  %3 = alloca %struct.drm_i915_gem_exec_object2*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %2, align 8
  %4 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %41

9:                                                ; preds = %1
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %11 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %10, i32 0, i32 0
  %12 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %11, align 8
  store %struct.drm_i915_gem_exec_object2* %12, %struct.drm_i915_gem_exec_object2** %3, align 8
  %13 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %3, align 8
  %14 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @__EXEC_OBJECT_HAS_FENCE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %21 = call i32 @i915_gem_object_unpin_fence(%struct.drm_i915_gem_object* %20)
  br label %22

22:                                               ; preds = %19, %9
  %23 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %3, align 8
  %24 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @__EXEC_OBJECT_HAS_PIN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %31 = call i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object* %30)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, i32* @__EXEC_OBJECT_HAS_FENCE, align 4
  %34 = load i32, i32* @__EXEC_OBJECT_HAS_PIN, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %3, align 8
  %38 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %32, %8
  ret void
}

declare dso_local i32 @i915_gem_object_unpin_fence(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
