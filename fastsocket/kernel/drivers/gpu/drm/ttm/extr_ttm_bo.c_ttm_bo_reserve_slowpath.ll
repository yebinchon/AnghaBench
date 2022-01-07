; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_reserve_slowpath.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_reserve_slowpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_bo_global* }
%struct.ttm_bo_global = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_reserve_slowpath(%struct.ttm_buffer_object* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_bo_global*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %11 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %10, i32 0, i32 0
  %12 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %11, align 8
  store %struct.ttm_bo_global* %12, %struct.ttm_bo_global** %7, align 8
  %13 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ttm_bo_reserve_slowpath_nolru(%struct.ttm_buffer_object* %13, i32 %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %3
  %24 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %7, align 8
  %25 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %28 = call i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %7, align 8
  %30 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @ttm_bo_list_ref_sub(%struct.ttm_buffer_object* %32, i32 %33, i32 1)
  br label %35

35:                                               ; preds = %23, %3
  %36 = load i32, i32* %9, align 4
  ret i32 %36
}

declare dso_local i32 @ttm_bo_reserve_slowpath_nolru(%struct.ttm_buffer_object*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ttm_bo_list_ref_sub(%struct.ttm_buffer_object*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
