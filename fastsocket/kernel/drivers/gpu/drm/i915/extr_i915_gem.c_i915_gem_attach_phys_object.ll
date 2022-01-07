; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_attach_phys_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_attach_phys_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, %struct.drm_i915_gem_object* }
%struct.TYPE_9__ = type { i8* }
%struct.drm_i915_gem_object = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_12__ = type { %struct.address_space* }

@I915_MAX_PHYS_OBJECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to init phys object %d size: %zu\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_attach_phys_object(%struct.drm_device* %0, %struct.drm_i915_gem_object* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_i915_gem_object* %1, %struct.drm_i915_gem_object** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %19 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_12__* @file_inode(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.address_space*, %struct.address_space** %23, align 8
  store %struct.address_space* %24, %struct.address_space** %10, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %11, align 8
  store i32 0, i32* %12, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @I915_MAX_PHYS_OBJECT, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %151

34:                                               ; preds = %4
  %35 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %36 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %41 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %151

48:                                               ; preds = %39
  %49 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %50 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %51 = call i32 @i915_gem_detach_phys_object(%struct.drm_device* %49, %struct.drm_i915_gem_object* %50)
  br label %52

52:                                               ; preds = %48, %34
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %56, i64 %59
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = icmp ne %struct.TYPE_10__* %61, null
  br i1 %62, label %83, label %63

63:                                               ; preds = %52
  %64 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %67 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @i915_gem_init_phys_object(%struct.drm_device* %64, i32 %65, i32 %69, i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %63
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %77 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %79)
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %5, align 4
  br label %151

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %52
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %87, i64 %90
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %94 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %93, i32 0, i32 0
  store %struct.TYPE_10__* %92, %struct.TYPE_10__** %94, align 8
  %95 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %96 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %97 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  store %struct.drm_i915_gem_object* %95, %struct.drm_i915_gem_object** %99, align 8
  %100 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %101 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = sdiv i32 %103, %104
  store i32 %105, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %147, %83
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %150

110:                                              ; preds = %106
  %111 = load %struct.address_space*, %struct.address_space** %10, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call %struct.page* @shmem_read_mapping_page(%struct.address_space* %111, i32 %112)
  store %struct.page* %113, %struct.page** %15, align 8
  %114 = load %struct.page*, %struct.page** %15, align 8
  %115 = call i64 @IS_ERR(%struct.page* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load %struct.page*, %struct.page** %15, align 8
  %119 = call i32 @PTR_ERR(%struct.page* %118)
  store i32 %119, i32* %5, align 4
  br label %151

120:                                              ; preds = %110
  %121 = load %struct.page*, %struct.page** %15, align 8
  %122 = load i32, i32* @KM_USER0, align 4
  %123 = call i8* @kmap_atomic(%struct.page* %121, i32 %122)
  store i8* %123, i8** %17, align 8
  %124 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %125 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %124, i32 0, i32 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @PAGE_SIZE, align 4
  %133 = mul nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %130, i64 %134
  store i8* %135, i8** %16, align 8
  %136 = load i8*, i8** %16, align 8
  %137 = load i8*, i8** %17, align 8
  %138 = load i32, i32* @PAGE_SIZE, align 4
  %139 = call i32 @memcpy(i8* %136, i8* %137, i32 %138)
  %140 = load i8*, i8** %17, align 8
  %141 = load i32, i32* @KM_USER0, align 4
  %142 = call i32 @kunmap_atomic(i8* %140, i32 %141)
  %143 = load %struct.page*, %struct.page** %15, align 8
  %144 = call i32 @mark_page_accessed(%struct.page* %143)
  %145 = load %struct.page*, %struct.page** %15, align 8
  %146 = call i32 @page_cache_release(%struct.page* %145)
  br label %147

147:                                              ; preds = %120
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %14, align 4
  br label %106

150:                                              ; preds = %106
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %150, %117, %74, %47, %31
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local %struct.TYPE_12__* @file_inode(i32) #1

declare dso_local i32 @i915_gem_detach_phys_object(%struct.drm_device*, %struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_init_phys_object(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local %struct.page* @shmem_read_mapping_page(%struct.address_space*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
