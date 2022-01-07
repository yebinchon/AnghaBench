; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_evict_mm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_evict_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }

@TTM_NUM_MEM_TYPES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Illegal memory manager memory type %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Memory type %u has not been initialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_evict_mm(%struct.ttm_bo_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_bo_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %8 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %7, i32 0, i32 0
  %9 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %9, i64 %11
  store %struct.ttm_mem_type_manager* %12, %struct.ttm_mem_type_manager** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @TTM_NUM_MEM_TYPES, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %36

24:                                               ; preds = %15
  %25 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %26 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 0, i32* %3, align 4
  br label %36

32:                                               ; preds = %24
  %33 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ttm_bo_force_list_clean(%struct.ttm_bo_device* %33, i32 %34, i32 1)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %29, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @ttm_bo_force_list_clean(%struct.ttm_bo_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
