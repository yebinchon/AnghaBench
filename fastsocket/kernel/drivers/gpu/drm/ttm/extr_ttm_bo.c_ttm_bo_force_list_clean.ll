; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_force_list_clean.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_force_list_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { %struct.ttm_bo_global*, %struct.ttm_mem_type_manager* }
%struct.ttm_bo_global = type { i32 }
%struct.ttm_mem_type_manager = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Cleanup eviction failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_bo_device*, i32, i32)* @ttm_bo_force_list_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_force_list_clean(%struct.ttm_bo_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_bo_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_mem_type_manager*, align 8
  %9 = alloca %struct.ttm_bo_global*, align 8
  %10 = alloca i32, align 4
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %12 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %11, i32 0, i32 1
  %13 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %13, i64 %15
  store %struct.ttm_mem_type_manager* %16, %struct.ttm_mem_type_manager** %8, align 8
  %17 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %18 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %17, i32 0, i32 0
  %19 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %18, align 8
  store %struct.ttm_bo_global* %19, %struct.ttm_bo_global** %9, align 8
  %20 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %9, align 8
  %21 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  br label %23

23:                                               ; preds = %46, %3
  %24 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %8, align 8
  %25 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %24, i32 0, i32 0
  %26 = call i32 @list_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %9, align 8
  %31 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ttm_mem_evict_first(%struct.ttm_bo_device* %33, i32 %34, i32 0, i32 0)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %54

43:                                               ; preds = %38
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45, %29
  %47 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %9, align 8
  %48 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  br label %23

50:                                               ; preds = %23
  %51 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %9, align 8
  %52 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %41
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ttm_mem_evict_first(%struct.ttm_bo_device*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
