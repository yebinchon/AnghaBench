; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.inode = type { i32 }

@__I915_MADV_PURGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_gem_object*)* @i915_gem_object_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_gem_object_truncate(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca %struct.drm_i915_gem_object*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %2, align 8
  %4 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %5 = call i32 @i915_gem_object_free_mmap_offset(%struct.drm_i915_gem_object* %4)
  %6 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %7 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %14 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call %struct.inode* @file_inode(i32* %16)
  store %struct.inode* %17, %struct.inode** %3, align 8
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = call i32 @shmem_truncate_range(%struct.inode* %18, i32 0, i32 -1)
  %20 = load i32, i32* @__I915_MADV_PURGED, align 4
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %22 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @i915_gem_object_free_mmap_offset(%struct.drm_i915_gem_object*) #1

declare dso_local %struct.inode* @file_inode(i32*) #1

declare dso_local i32 @shmem_truncate_range(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
