; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_device_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { i32, i32, i32, i64, %struct.ttm_bo_global*, i32*, i32, i32, i32, i32, i32, %struct.ttm_bo_driver*, i32 }
%struct.ttm_bo_global = type { i32, i32 }
%struct.ttm_bo_driver = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TTM_PL_SYSTEM = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@ttm_bo_delayed_workqueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_device_init(%struct.ttm_bo_device* %0, %struct.ttm_bo_global* %1, %struct.ttm_bo_driver* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_bo_device*, align 8
  %8 = alloca %struct.ttm_bo_global*, align 8
  %9 = alloca %struct.ttm_bo_driver*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %7, align 8
  store %struct.ttm_bo_global* %1, %struct.ttm_bo_global** %8, align 8
  store %struct.ttm_bo_driver* %2, %struct.ttm_bo_driver** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %16 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %15, i32 0, i32 12
  %17 = call i32 @rwlock_init(i32* %16)
  %18 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %9, align 8
  %19 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %20 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %19, i32 0, i32 11
  store %struct.ttm_bo_driver* %18, %struct.ttm_bo_driver** %20, align 8
  %21 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %22 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @memset(i32 %23, i32 0, i32 4)
  %25 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %26 = load i32, i32* @TTM_PL_SYSTEM, align 4
  %27 = call i32 @ttm_bo_init_mm(%struct.ttm_bo_device* %25, i32 %26, i32 0)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  br label %83

34:                                               ; preds = %5
  %35 = load i32, i32* @RB_ROOT, align 4
  %36 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %37 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %39 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %38, i32 0, i32 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @drm_mm_init(i32* %39, i32 %40, i32 268435456)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %80

48:                                               ; preds = %34
  %49 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %50 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %49, i32 0, i32 7
  %51 = load i32, i32* @ttm_bo_delayed_workqueue, align 4
  %52 = call i32 @INIT_DELAYED_WORK(i32* %50, i32 %51)
  %53 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %54 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %53, i32 0, i32 6
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %57 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %56, i32 0, i32 5
  store i32* null, i32** %57, align 8
  %58 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %8, align 8
  %59 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %60 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %59, i32 0, i32 4
  store %struct.ttm_bo_global* %58, %struct.ttm_bo_global** %60, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %63 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %65 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %67 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %66, i32 0, i32 2
  %68 = call i32 @spin_lock_init(i32* %67)
  %69 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %8, align 8
  %70 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %69, i32 0, i32 0
  %71 = call i32 @mutex_lock(i32* %70)
  %72 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %73 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %72, i32 0, i32 1
  %74 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %8, align 8
  %75 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %74, i32 0, i32 1
  %76 = call i32 @list_add_tail(i32* %73, i32* %75)
  %77 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %8, align 8
  %78 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  store i32 0, i32* %6, align 4
  br label %85

80:                                               ; preds = %47
  %81 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %82 = call i32 @ttm_bo_clean_mm(%struct.ttm_bo_device* %81, i32 0)
  br label %83

83:                                               ; preds = %80, %33
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %48
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ttm_bo_init_mm(%struct.ttm_bo_device*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @drm_mm_init(i32*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ttm_bo_clean_mm(%struct.ttm_bo_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
