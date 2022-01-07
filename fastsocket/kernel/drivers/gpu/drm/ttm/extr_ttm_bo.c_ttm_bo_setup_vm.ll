; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_setup_vm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_setup_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.ttm_bo_device* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.ttm_bo_device = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*)* @ttm_bo_setup_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_setup_vm(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.ttm_bo_device*, align 8
  %5 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  %6 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %7 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %6, i32 0, i32 3
  %8 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  store %struct.ttm_bo_device* %8, %struct.ttm_bo_device** %4, align 8
  br label %9

9:                                                ; preds = %61, %1
  %10 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %11 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %10, i32 0, i32 1
  %12 = call i32 @drm_mm_pre_get(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %86

20:                                               ; preds = %9
  %21 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %22 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %21, i32 0, i32 0
  %23 = call i32 @write_lock(i32* %22)
  %24 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %25 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %24, i32 0, i32 1
  %26 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %27 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.TYPE_6__* @drm_mm_search_free(i32* %25, i32 %29, i32 0, i32 0)
  %31 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %32 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %31, i32 0, i32 1
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %32, align 8
  %33 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %34 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = icmp eq %struct.TYPE_6__* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %20
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %81

43:                                               ; preds = %20
  %44 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %45 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %48 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.TYPE_6__* @drm_mm_get_block_atomic(%struct.TYPE_6__* %46, i32 %50, i32 0)
  %52 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %53 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %52, i32 0, i32 1
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %53, align 8
  %54 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %55 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = icmp eq %struct.TYPE_6__* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %43
  %62 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %63 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %62, i32 0, i32 0
  %64 = call i32 @write_unlock(i32* %63)
  br label %9

65:                                               ; preds = %43
  %66 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %67 = call i32 @ttm_bo_vm_insert_rb(%struct.ttm_buffer_object* %66)
  %68 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %69 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %68, i32 0, i32 0
  %70 = call i32 @write_unlock(i32* %69)
  %71 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %72 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @PAGE_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %80 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  store i32 0, i32* %2, align 4
  br label %86

81:                                               ; preds = %40
  %82 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %83 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %82, i32 0, i32 0
  %84 = call i32 @write_unlock(i32* %83)
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %81, %65, %18
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @drm_mm_pre_get(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local %struct.TYPE_6__* @drm_mm_search_free(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @drm_mm_get_block_atomic(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @ttm_bo_vm_insert_rb(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
