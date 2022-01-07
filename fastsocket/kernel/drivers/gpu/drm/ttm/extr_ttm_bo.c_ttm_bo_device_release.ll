; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_device_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_device_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { i32, i32, %struct.ttm_mem_type_manager*, i32, i32, i32, %struct.ttm_bo_global* }
%struct.ttm_mem_type_manager = type { i32, i32, i32 }
%struct.ttm_bo_global = type { i32, i32 }

@TTM_NUM_MEM_TYPES = common dso_local global i32 0, align 4
@TTM_PL_SYSTEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"DRM memory manager type %d is not clean\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Delayed destroy list was clean\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Swap list was clean\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_device_release(%struct.ttm_bo_device* %0) #0 {
  %2 = alloca %struct.ttm_bo_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_mem_type_manager*, align 8
  %6 = alloca %struct.ttm_bo_global*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @TTM_NUM_MEM_TYPES, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %9 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %8, i32 0, i32 6
  %10 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %9, align 8
  store %struct.ttm_bo_global* %10, %struct.ttm_bo_global** %6, align 8
  br label %11

11:                                               ; preds = %45, %1
  %12 = load i32, i32* %4, align 4
  %13 = add i32 %12, -1
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %17 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %16, i32 0, i32 2
  %18 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %18, i64 %20
  store %struct.ttm_mem_type_manager* %21, %struct.ttm_mem_type_manager** %5, align 8
  %22 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %23 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %15
  %27 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %28 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @TTM_PL_SYSTEM, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @ttm_bo_clean_mm(%struct.ttm_bo_device* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %37, %32, %26
  %43 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %44 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %15
  br label %11

46:                                               ; preds = %11
  %47 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %6, align 8
  %48 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %51 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %50, i32 0, i32 5
  %52 = call i32 @list_del(i32* %51)
  %53 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %6, align 8
  %54 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %57 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %56, i32 0, i32 4
  %58 = call i32 @cancel_delayed_work_sync(i32* %57)
  br label %59

59:                                               ; preds = %63, %46
  %60 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %61 = call i64 @ttm_bo_delayed_delete(%struct.ttm_bo_device* %60, i32 1)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %59

64:                                               ; preds = %59
  %65 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %6, align 8
  %66 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %65, i32 0, i32 0
  %67 = call i32 @spin_lock(i32* %66)
  %68 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %69 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %68, i32 0, i32 3
  %70 = call i64 @list_empty(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = call i32 @TTM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %64
  %75 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %76 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %75, i32 0, i32 2
  %77 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %76, align 8
  %78 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %77, i64 0
  %79 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %78, i32 0, i32 2
  %80 = call i64 @list_empty(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = call i32 @TTM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %74
  %85 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %6, align 8
  %86 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock(i32* %86)
  %88 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %89 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %88, i32 0, i32 1
  %90 = call i32 @drm_mm_clean(i32* %89)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @BUG_ON(i32 %93)
  %95 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %96 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %95, i32 0, i32 0
  %97 = call i32 @write_lock(i32* %96)
  %98 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %99 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %98, i32 0, i32 1
  %100 = call i32 @drm_mm_takedown(i32* %99)
  %101 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %102 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %101, i32 0, i32 0
  %103 = call i32 @write_unlock(i32* %102)
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @ttm_bo_clean_mm(%struct.ttm_bo_device*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i64 @ttm_bo_delayed_delete(%struct.ttm_bo_device*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @TTM_DEBUG(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @drm_mm_clean(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @drm_mm_takedown(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
