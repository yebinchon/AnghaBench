; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_create_mmap_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_gem.c_drm_gem_create_mmap_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, i32, %struct.drm_map_list, %struct.drm_device* }
%struct.drm_map_list = type { %struct.drm_local_map*, %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.drm_local_map = type { i32, %struct.drm_gem_object*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.drm_device = type { %struct.drm_gem_mm* }
%struct.drm_gem_mm = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_DRM_GEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to allocate offset for bo %d\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to add to map hash\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_create_mmap_offset(%struct.drm_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_gem_mm*, align 8
  %6 = alloca %struct.drm_map_list*, align 8
  %7 = alloca %struct.drm_local_map*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %10 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %9, i32 0, i32 3
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.drm_gem_mm*, %struct.drm_gem_mm** %13, align 8
  store %struct.drm_gem_mm* %14, %struct.drm_gem_mm** %5, align 8
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %16 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %15, i32 0, i32 2
  store %struct.drm_map_list* %16, %struct.drm_map_list** %6, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.drm_local_map* @kzalloc(i32 24, i32 %17)
  %19 = load %struct.drm_map_list*, %struct.drm_map_list** %6, align 8
  %20 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %19, i32 0, i32 0
  store %struct.drm_local_map* %18, %struct.drm_local_map** %20, align 8
  %21 = load %struct.drm_map_list*, %struct.drm_map_list** %6, align 8
  %22 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %21, i32 0, i32 0
  %23 = load %struct.drm_local_map*, %struct.drm_local_map** %22, align 8
  %24 = icmp ne %struct.drm_local_map* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %115

28:                                               ; preds = %1
  %29 = load %struct.drm_map_list*, %struct.drm_map_list** %6, align 8
  %30 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %29, i32 0, i32 0
  %31 = load %struct.drm_local_map*, %struct.drm_local_map** %30, align 8
  store %struct.drm_local_map* %31, %struct.drm_local_map** %7, align 8
  %32 = load i32, i32* @_DRM_GEM, align 4
  %33 = load %struct.drm_local_map*, %struct.drm_local_map** %7, align 8
  %34 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %36 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.drm_local_map*, %struct.drm_local_map** %7, align 8
  %39 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %41 = load %struct.drm_local_map*, %struct.drm_local_map** %7, align 8
  %42 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %41, i32 0, i32 1
  store %struct.drm_gem_object* %40, %struct.drm_gem_object** %42, align 8
  %43 = load %struct.drm_gem_mm*, %struct.drm_gem_mm** %5, align 8
  %44 = getelementptr inbounds %struct.drm_gem_mm, %struct.drm_gem_mm* %43, i32 0, i32 1
  %45 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %46 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = sdiv i32 %47, %48
  %50 = call %struct.TYPE_6__* @drm_mm_search_free(i32* %44, i32 %49, i32 0, i32 0)
  %51 = load %struct.drm_map_list*, %struct.drm_map_list** %6, align 8
  %52 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %51, i32 0, i32 1
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %52, align 8
  %53 = load %struct.drm_map_list*, %struct.drm_map_list** %6, align 8
  %54 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp ne %struct.TYPE_6__* %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %28
  %58 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %59 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @ENOSPC, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %107

64:                                               ; preds = %28
  %65 = load %struct.drm_map_list*, %struct.drm_map_list** %6, align 8
  %66 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %69 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = sdiv i32 %70, %71
  %73 = call %struct.TYPE_6__* @drm_mm_get_block(%struct.TYPE_6__* %67, i32 %72, i32 0)
  %74 = load %struct.drm_map_list*, %struct.drm_map_list** %6, align 8
  %75 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %74, i32 0, i32 1
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** %75, align 8
  %76 = load %struct.drm_map_list*, %struct.drm_map_list** %6, align 8
  %77 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = icmp ne %struct.TYPE_6__* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %64
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %107

83:                                               ; preds = %64
  %84 = load %struct.drm_map_list*, %struct.drm_map_list** %6, align 8
  %85 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.drm_map_list*, %struct.drm_map_list** %6, align 8
  %90 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load %struct.drm_gem_mm*, %struct.drm_gem_mm** %5, align 8
  %93 = getelementptr inbounds %struct.drm_gem_mm, %struct.drm_gem_mm* %92, i32 0, i32 0
  %94 = load %struct.drm_map_list*, %struct.drm_map_list** %6, align 8
  %95 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %94, i32 0, i32 2
  %96 = call i32 @drm_ht_insert_item(i32* %93, %struct.TYPE_7__* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %83
  %100 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %102

101:                                              ; preds = %83
  store i32 0, i32* %2, align 4
  br label %115

102:                                              ; preds = %99
  %103 = load %struct.drm_map_list*, %struct.drm_map_list** %6, align 8
  %104 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = call i32 @drm_mm_put_block(%struct.TYPE_6__* %105)
  br label %107

107:                                              ; preds = %102, %80, %57
  %108 = load %struct.drm_map_list*, %struct.drm_map_list** %6, align 8
  %109 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %108, i32 0, i32 0
  %110 = load %struct.drm_local_map*, %struct.drm_local_map** %109, align 8
  %111 = call i32 @kfree(%struct.drm_local_map* %110)
  %112 = load %struct.drm_map_list*, %struct.drm_map_list** %6, align 8
  %113 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %112, i32 0, i32 0
  store %struct.drm_local_map* null, %struct.drm_local_map** %113, align 8
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %107, %101, %25
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.drm_local_map* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_6__* @drm_mm_search_free(i32*, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local %struct.TYPE_6__* @drm_mm_get_block(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @drm_ht_insert_item(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @drm_mm_put_block(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.drm_local_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
