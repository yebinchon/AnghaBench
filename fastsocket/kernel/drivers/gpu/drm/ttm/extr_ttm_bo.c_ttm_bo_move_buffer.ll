; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_move_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_move_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, %struct.TYPE_3__, %struct.ttm_bo_device* }
%struct.TYPE_3__ = type { i32 }
%struct.ttm_bo_device = type { i32 }
%struct.ttm_placement = type { i32 }
%struct.ttm_mem_reg = type { i32, i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_move_buffer(%struct.ttm_buffer_object* %0, %struct.ttm_placement* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca %struct.ttm_placement*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ttm_mem_reg, align 8
  %12 = alloca %struct.ttm_bo_device*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store %struct.ttm_placement* %1, %struct.ttm_placement** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %14 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %13, i32 0, i32 2
  %15 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %14, align 8
  store %struct.ttm_bo_device* %15, %struct.ttm_bo_device** %12, align 8
  %16 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %17 = call i32 @ttm_bo_is_reserved(%struct.ttm_buffer_object* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %12, align 8
  %23 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %25, i32 0, i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %12, align 8
  %30 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %80

36:                                               ; preds = %4
  %37 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %38 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PAGE_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %47 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 4
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %56 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @ttm_bo_mem_space(%struct.ttm_buffer_object* %55, %struct.ttm_placement* %56, %struct.ttm_mem_reg* %11, i32 %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %36
  br label %68

63:                                               ; preds = %36
  %64 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @ttm_bo_handle_move_mem(%struct.ttm_buffer_object* %64, %struct.ttm_mem_reg* %11, i32 0, i32 %65, i32 %66)
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %63, %62
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %77 = call i32 @ttm_bo_mem_put(%struct.ttm_buffer_object* %76, %struct.ttm_mem_reg* %11)
  br label %78

78:                                               ; preds = %75, %71, %68
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %34
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ttm_bo_is_reserved(%struct.ttm_buffer_object*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ttm_bo_wait(%struct.ttm_buffer_object*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ttm_bo_mem_space(%struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*, i32, i32) #1

declare dso_local i32 @ttm_bo_handle_move_mem(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*, i32, i32, i32) #1

declare dso_local i32 @ttm_bo_mem_put(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
