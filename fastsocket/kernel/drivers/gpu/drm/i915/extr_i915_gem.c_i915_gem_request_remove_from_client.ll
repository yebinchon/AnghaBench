; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_request_remove_from_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_request_remove_from_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_request = type { %struct.drm_i915_file_private*, i32 }
%struct.drm_i915_file_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_gem_request*)* @i915_gem_request_remove_from_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_gem_request_remove_from_client(%struct.drm_i915_gem_request* %0) #0 {
  %2 = alloca %struct.drm_i915_gem_request*, align 8
  %3 = alloca %struct.drm_i915_file_private*, align 8
  store %struct.drm_i915_gem_request* %0, %struct.drm_i915_gem_request** %2, align 8
  %4 = load %struct.drm_i915_gem_request*, %struct.drm_i915_gem_request** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_gem_request, %struct.drm_i915_gem_request* %4, i32 0, i32 0
  %6 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %5, align 8
  store %struct.drm_i915_file_private* %6, %struct.drm_i915_file_private** %3, align 8
  %7 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %3, align 8
  %8 = icmp ne %struct.drm_i915_file_private* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %30

10:                                               ; preds = %1
  %11 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %3, align 8
  %12 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.drm_i915_gem_request*, %struct.drm_i915_gem_request** %2, align 8
  %16 = getelementptr inbounds %struct.drm_i915_gem_request, %struct.drm_i915_gem_request* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %16, align 8
  %18 = icmp ne %struct.drm_i915_file_private* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %10
  %20 = load %struct.drm_i915_gem_request*, %struct.drm_i915_gem_request** %2, align 8
  %21 = getelementptr inbounds %struct.drm_i915_gem_request, %struct.drm_i915_gem_request* %20, i32 0, i32 1
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.drm_i915_gem_request*, %struct.drm_i915_gem_request** %2, align 8
  %24 = getelementptr inbounds %struct.drm_i915_gem_request, %struct.drm_i915_gem_request* %23, i32 0, i32 0
  store %struct.drm_i915_file_private* null, %struct.drm_i915_file_private** %24, align 8
  br label %25

25:                                               ; preds = %19, %10
  %26 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %3, align 8
  %27 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  br label %30

30:                                               ; preds = %25, %9
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
