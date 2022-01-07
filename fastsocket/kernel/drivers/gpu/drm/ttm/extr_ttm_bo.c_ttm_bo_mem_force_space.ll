; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_mem_force_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_mem_force_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_bo_device* }
%struct.ttm_bo_device = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*)* }
%struct.ttm_placement = type { i32 }
%struct.ttm_mem_reg = type { i64, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i64, %struct.ttm_placement*, %struct.ttm_mem_reg*, i32, i32)* @ttm_bo_mem_force_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_mem_force_space(%struct.ttm_buffer_object* %0, i64 %1, %struct.ttm_placement* %2, %struct.ttm_mem_reg* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_buffer_object*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ttm_placement*, align 8
  %11 = alloca %struct.ttm_mem_reg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ttm_bo_device*, align 8
  %15 = alloca %struct.ttm_mem_type_manager*, align 8
  %16 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.ttm_placement* %2, %struct.ttm_placement** %10, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %8, align 8
  %18 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %17, i32 0, i32 0
  %19 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %18, align 8
  store %struct.ttm_bo_device* %19, %struct.ttm_bo_device** %14, align 8
  %20 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %14, align 8
  %21 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %20, i32 0, i32 0
  %22 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %22, i64 %23
  store %struct.ttm_mem_type_manager* %24, %struct.ttm_mem_type_manager** %15, align 8
  br label %25

25:                                               ; preds = %63, %6
  %26 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %15, align 8
  %27 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*)*, i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*)** %29, align 8
  %31 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %15, align 8
  %32 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %8, align 8
  %33 = load %struct.ttm_placement*, %struct.ttm_placement** %10, align 8
  %34 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %35 = call i32 %30(%struct.ttm_mem_type_manager* %31, %struct.ttm_buffer_object* %32, %struct.ttm_placement* %33, %struct.ttm_mem_reg* %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %25
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %7, align 4
  br label %76

43:                                               ; preds = %25
  %44 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %45 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %64

49:                                               ; preds = %43
  %50 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %14, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @ttm_mem_evict_first(%struct.ttm_bo_device* %50, i64 %51, i32 %52, i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* %16, align 4
  store i32 %61, i32* %7, align 4
  br label %76

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62
  br i1 true, label %25, label %64

64:                                               ; preds = %63, %48
  %65 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %66 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %76

72:                                               ; preds = %64
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %75 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %72, %69, %60, %41
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_mem_evict_first(%struct.ttm_bo_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
