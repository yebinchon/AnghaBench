; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_alloc_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_alloc_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i32 }
%struct.drm_device = type { i32 }
%struct.address_space = type { i32 }
%struct.TYPE_3__ = type { %struct.address_space* }

@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_RECLAIMABLE = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@__GFP_DMA32 = common dso_local global i32 0, align 4
@i915_gem_object_ops = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_CPU = common dso_local global i8* null, align 8
@I915_CACHE_LLC = common dso_local global i32 0, align 4
@I915_CACHE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_i915_gem_object* @i915_gem_alloc_object(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = call %struct.drm_i915_gem_object* @i915_gem_object_alloc(%struct.drm_device* %9)
  store %struct.drm_i915_gem_object* %10, %struct.drm_i915_gem_object** %6, align 8
  %11 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %12 = icmp eq %struct.drm_i915_gem_object* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %3, align 8
  br label %77

14:                                               ; preds = %2
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %17 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %16, i32 0, i32 1
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @drm_gem_object_init(%struct.drm_device* %15, %struct.TYPE_4__* %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %23 = call i32 @i915_gem_object_free(%struct.drm_i915_gem_object* %22)
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %3, align 8
  br label %77

24:                                               ; preds = %14
  %25 = load i32, i32* @GFP_HIGHUSER, align 4
  %26 = load i32, i32* @__GFP_RECLAIMABLE, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = call i64 @IS_CRESTLINE(%struct.drm_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = call i64 @IS_BROADWATER(%struct.drm_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31, %24
  %36 = load i32, i32* @__GFP_HIGHMEM, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @__GFP_DMA32, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %35, %31
  %44 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %45 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.TYPE_3__* @file_inode(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.address_space*, %struct.address_space** %49, align 8
  store %struct.address_space* %50, %struct.address_space** %7, align 8
  %51 = load %struct.address_space*, %struct.address_space** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @mapping_set_gfp_mask(%struct.address_space* %51, i32 %52)
  %54 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %55 = call i32 @i915_gem_object_init(%struct.drm_i915_gem_object* %54, i32* @i915_gem_object_ops)
  %56 = load i8*, i8** @I915_GEM_DOMAIN_CPU, align 8
  %57 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %58 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i8* %56, i8** %59, align 8
  %60 = load i8*, i8** @I915_GEM_DOMAIN_CPU, align 8
  %61 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %62 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  %64 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %65 = call i64 @HAS_LLC(%struct.drm_device* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %43
  %68 = load i32, i32* @I915_CACHE_LLC, align 4
  %69 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %70 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %75

71:                                               ; preds = %43
  %72 = load i32, i32* @I915_CACHE_NONE, align 4
  %73 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %74 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %71, %67
  %76 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  store %struct.drm_i915_gem_object* %76, %struct.drm_i915_gem_object** %3, align 8
  br label %77

77:                                               ; preds = %75, %21, %13
  %78 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  ret %struct.drm_i915_gem_object* %78
}

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_alloc(%struct.drm_device*) #1

declare dso_local i64 @drm_gem_object_init(%struct.drm_device*, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @i915_gem_object_free(%struct.drm_i915_gem_object*) #1

declare dso_local i64 @IS_CRESTLINE(%struct.drm_device*) #1

declare dso_local i64 @IS_BROADWATER(%struct.drm_device*) #1

declare dso_local %struct.TYPE_3__* @file_inode(i32) #1

declare dso_local i32 @mapping_set_gfp_mask(%struct.address_space*, i32) #1

declare dso_local i32 @i915_gem_object_init(%struct.drm_i915_gem_object*, i32*) #1

declare dso_local i64 @HAS_LLC(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
