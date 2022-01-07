; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_unmap_virtual_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_unmap_virtual_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_2__, i64, %struct.ttm_bo_device* }
%struct.TYPE_2__ = type { i64 }
%struct.ttm_bo_device = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_bo_unmap_virtual_locked(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca %struct.ttm_buffer_object*, align 8
  %3 = alloca %struct.ttm_bo_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %2, align 8
  %6 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %7 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %6, i32 0, i32 2
  %8 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  store %struct.ttm_bo_device* %8, %struct.ttm_bo_device** %3, align 8
  %9 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %10 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %14 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @PAGE_SHIFT, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %21 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %34

25:                                               ; preds = %1
  %26 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %27 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @unmap_mapping_range(i32 %28, i32 %29, i32 %30, i32 1)
  %32 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %33 = call i32 @ttm_mem_io_free_vm(%struct.ttm_buffer_object* %32)
  br label %34

34:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @unmap_mapping_range(i32, i32, i32, i32) #1

declare dso_local i32 @ttm_mem_io_free_vm(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
