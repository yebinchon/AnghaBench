; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_detach_phys_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_detach_phys_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_8__ = type { %struct.address_space* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_detach_phys_object(%struct.drm_device* %0, %struct.drm_i915_gem_object* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i8*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_i915_gem_object* %1, %struct.drm_i915_gem_object** %4, align 8
  %11 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %12 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_8__* @file_inode(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.address_space*, %struct.address_space** %16, align 8
  store %struct.address_space* %17, %struct.address_space** %5, align 8
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %19 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %84

23:                                               ; preds = %2
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %25 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %6, align 8
  %31 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %32 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %72, %23
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %37
  %42 = load %struct.address_space*, %struct.address_space** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.page* @shmem_read_mapping_page(%struct.address_space* %42, i32 %43)
  store %struct.page* %44, %struct.page** %9, align 8
  %45 = load %struct.page*, %struct.page** %9, align 8
  %46 = call i32 @IS_ERR(%struct.page* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %71, label %48

48:                                               ; preds = %41
  %49 = load %struct.page*, %struct.page** %9, align 8
  %50 = load i32, i32* @KM_USER0, align 4
  %51 = call i8* @kmap_atomic(%struct.page* %49, i32 %50)
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = call i32 @memcpy(i8* %52, i8* %58, i32 %59)
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* @KM_USER0, align 4
  %63 = call i32 @kunmap_atomic(i8* %61, i32 %62)
  %64 = call i32 @drm_clflush_pages(%struct.page** %9, i32 1)
  %65 = load %struct.page*, %struct.page** %9, align 8
  %66 = call i32 @set_page_dirty(%struct.page* %65)
  %67 = load %struct.page*, %struct.page** %9, align 8
  %68 = call i32 @mark_page_accessed(%struct.page* %67)
  %69 = load %struct.page*, %struct.page** %9, align 8
  %70 = call i32 @page_cache_release(%struct.page* %69)
  br label %71

71:                                               ; preds = %48, %41
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %37

75:                                               ; preds = %37
  %76 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %77 = call i32 @i915_gem_chipset_flush(%struct.drm_device* %76)
  %78 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %79 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32* null, i32** %81, align 8
  %82 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %83 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %82, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %83, align 8
  br label %84

84:                                               ; preds = %75, %22
  ret void
}

declare dso_local %struct.TYPE_8__* @file_inode(i32) #1

declare dso_local %struct.page* @shmem_read_mapping_page(%struct.address_space*, i32) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @drm_clflush_pages(%struct.page**, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @i915_gem_chipset_flush(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
