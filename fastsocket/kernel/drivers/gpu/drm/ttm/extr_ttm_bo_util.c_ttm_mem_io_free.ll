; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_mem_io_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_mem_io_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { %struct.TYPE_3__*, %struct.ttm_mem_type_manager* }
%struct.TYPE_3__ = type { i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)*, i64 }
%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_mem_reg = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)* @ttm_mem_io_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_mem_io_free(%struct.ttm_bo_device* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca %struct.ttm_bo_device*, align 8
  %4 = alloca %struct.ttm_mem_reg*, align 8
  %5 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %3, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %4, align 8
  %6 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %7 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %6, i32 0, i32 1
  %8 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %9 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %10 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %8, i64 %11
  store %struct.ttm_mem_type_manager* %12, %struct.ttm_mem_type_manager** %5, align 8
  %13 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %14 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %21 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %19
  %27 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %28 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %29, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %35 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)*, i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)** %37, align 8
  %39 = icmp ne i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %42 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)*, i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)** %44, align 8
  %46 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %47 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %48 = call i32 %45(%struct.ttm_bo_device* %46, %struct.ttm_mem_reg* %47)
  br label %49

49:                                               ; preds = %18, %40, %33, %26, %19
  ret void
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
