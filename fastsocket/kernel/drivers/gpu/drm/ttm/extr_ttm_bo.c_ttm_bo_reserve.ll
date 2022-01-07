; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_reserve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_bo_global* }
%struct.ttm_bo_global = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_reserve(%struct.ttm_buffer_object* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ttm_bo_global*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %15 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %14, i32 0, i32 0
  %16 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %15, align 8
  store %struct.ttm_bo_global* %16, %struct.ttm_bo_global** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @ttm_bo_reserve_nolru(%struct.ttm_buffer_object* %17, i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %5
  %29 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %11, align 8
  %30 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %33 = call i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object* %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %11, align 8
  %35 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @ttm_bo_list_ref_sub(%struct.ttm_buffer_object* %37, i32 %38, i32 1)
  br label %40

40:                                               ; preds = %28, %5
  %41 = load i32, i32* %13, align 4
  ret i32 %41
}

declare dso_local i32 @ttm_bo_reserve_nolru(%struct.ttm_buffer_object*, i32, i32, i32, i32) #1

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
