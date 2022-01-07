; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_page_alloc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_page_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ttm_mem_global = type { i32 }

@_manager = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Initializing pool allocator\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"wc\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"uc\00", align 1
@GFP_USER = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"wc dma\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"uc dma\00", align 1
@SMALL_ALLOCATION = common dso_local global i32 0, align 4
@NUM_PAGES_TO_ALLOC = common dso_local global i32 0, align 4
@ttm_pool_kobj_type = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"pool\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_page_alloc_init(%struct.ttm_mem_global* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_mem_global*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %8 = call i32 @WARN_ON(%struct.TYPE_7__* %7)
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.TYPE_7__* @kzalloc(i32 32, i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** @_manager, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 5
  %14 = load i32, i32* @GFP_HIGHUSER, align 4
  %15 = call i32 @ttm_page_pool_init_locked(i32* %13, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  %18 = load i32, i32* @GFP_HIGHUSER, align 4
  %19 = call i32 @ttm_page_pool_init_locked(i32* %17, i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load i32, i32* @GFP_USER, align 4
  %23 = load i32, i32* @GFP_DMA32, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @ttm_page_pool_init_locked(i32* %21, i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i32, i32* @GFP_USER, align 4
  %29 = load i32, i32* @GFP_DMA32, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @ttm_page_pool_init_locked(i32* %27, i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @SMALL_ALLOCATION, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @NUM_PAGES_TO_ALLOC, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %47 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %46, i32 0, i32 0
  %48 = call i32 @kobject_init_and_add(i32* %45, i32* @ttm_pool_kobj_type, i32* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = call i32 @kobject_put(i32* %56)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** @_manager, align 8
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %62

59:                                               ; preds = %2
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %61 = call i32 @ttm_pool_mm_shrink_init(%struct.TYPE_7__* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @WARN_ON(%struct.TYPE_7__*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.TYPE_7__* @kzalloc(i32, i32) #1

declare dso_local i32 @ttm_page_pool_init_locked(i32*, i32, i8*) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @ttm_pool_mm_shrink_init(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
