; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_kmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i64, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_bo_kmap_obj = type { %struct.ttm_buffer_object*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@DRM_CURPROC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_kmap(%struct.ttm_buffer_object* %0, i64 %1, i64 %2, %struct.ttm_bo_kmap_obj* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ttm_bo_kmap_obj*, align 8
  %10 = alloca %struct.ttm_mem_type_manager*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ttm_bo_kmap_obj* %3, %struct.ttm_bo_kmap_obj** %9, align 8
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %15 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %17, align 8
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %20 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %18, i64 %22
  store %struct.ttm_mem_type_manager* %23, %struct.ttm_mem_type_manager** %10, align 8
  %24 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %25 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %24, i32 0, i32 3
  %26 = call i32 @list_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %32 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %34 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %35 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %34, i32 0, i32 0
  store %struct.ttm_buffer_object* %33, %struct.ttm_buffer_object** %35, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %38 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ugt i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %93

44:                                               ; preds = %4
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %47 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ugt i64 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %93

53:                                               ; preds = %44
  %54 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %10, align 8
  %55 = call i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager* %54, i32 0)
  %56 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %57 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %60 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %59, i32 0, i32 1
  %61 = call i32 @ttm_mem_io_reserve(%struct.TYPE_5__* %58, %struct.TYPE_6__* %60)
  store i32 %61, i32* %13, align 4
  %62 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %10, align 8
  %63 = call i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager* %62)
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %5, align 4
  br label %93

68:                                               ; preds = %53
  %69 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %70 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  %76 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %80 = call i32 @ttm_bo_kmap_ttm(%struct.ttm_buffer_object* %76, i64 %77, i64 %78, %struct.ttm_bo_kmap_obj* %79)
  store i32 %80, i32* %5, align 4
  br label %93

81:                                               ; preds = %68
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @PAGE_SHIFT, align 8
  %84 = shl i64 %82, %83
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @PAGE_SHIFT, align 8
  %87 = shl i64 %85, %86
  store i64 %87, i64* %12, align 8
  %88 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %92 = call i32 @ttm_bo_ioremap(%struct.ttm_buffer_object* %88, i64 %89, i64 %90, %struct.ttm_bo_kmap_obj* %91)
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %81, %75, %66, %50, %41
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager*, i32) #1

declare dso_local i32 @ttm_mem_io_reserve(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager*) #1

declare dso_local i32 @ttm_bo_kmap_ttm(%struct.ttm_buffer_object*, i64, i64, %struct.ttm_bo_kmap_obj*) #1

declare dso_local i32 @ttm_bo_ioremap(%struct.ttm_buffer_object*, i64, i64, %struct.ttm_bo_kmap_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
