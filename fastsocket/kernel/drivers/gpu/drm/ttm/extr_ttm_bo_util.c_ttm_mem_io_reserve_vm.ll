; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_mem_io_reserve_vm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_mem_io_reserve_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, %struct.TYPE_4__*, %struct.ttm_mem_reg }
%struct.TYPE_4__ = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32, i64 }
%struct.ttm_mem_reg = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_mem_io_reserve_vm(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.ttm_mem_reg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  %7 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %8 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %7, i32 0, i32 2
  store %struct.ttm_mem_reg* %8, %struct.ttm_mem_reg** %4, align 8
  %9 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %10 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %51, label %14

14:                                               ; preds = %1
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %16 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %18, align 8
  %20 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %21 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %19, i64 %22
  store %struct.ttm_mem_type_manager* %23, %struct.ttm_mem_type_manager** %6, align 8
  %24 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %25 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %28 = call i32 @ttm_mem_io_reserve(%struct.TYPE_4__* %26, %struct.ttm_mem_reg* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %52

36:                                               ; preds = %14
  %37 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %38 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %41 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %46 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %45, i32 0, i32 0
  %47 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %48 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %47, i32 0, i32 0
  %49 = call i32 @list_add_tail(i32* %46, i32* %48)
  br label %50

50:                                               ; preds = %44, %36
  br label %51

51:                                               ; preds = %50, %1
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @ttm_mem_io_reserve(%struct.TYPE_4__*, %struct.ttm_mem_reg*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
