; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_mem_global_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_mem_global_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { i32, %struct.TYPE_2__*, %struct.ttm_mem_zone**, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ttm_mem_zone = type { i64, i32 }
%struct.sysinfo = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ttm_swap\00", align 1
@ttm_shrink_work = common dso_local global i32 0, align 4
@ttm_mem_glob_kobj_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"memory_accounting\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Zone %7s: Available graphics memory: %llu kiB\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_mem_global_init(%struct.ttm_mem_global* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_mem_global*, align 8
  %4 = alloca %struct.sysinfo, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_mem_zone*, align 8
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %3, align 8
  %8 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %9 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %8, i32 0, i32 6
  %10 = call i32 @spin_lock_init(i32* %9)
  %11 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %13 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %15 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %14, i32 0, i32 4
  %16 = load i32, i32* @ttm_shrink_work, align 4
  %17 = call i32 @INIT_WORK(i32* %15, i32 %16)
  %18 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %19 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %18, i32 0, i32 3
  %20 = call i32 (...) @ttm_get_kobj()
  %21 = call i32 @kobject_init_and_add(i32* %19, i32* @ttm_mem_glob_kobj_type, i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %29 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %28, i32 0, i32 3
  %30 = call i32 @kobject_put(i32* %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %102

32:                                               ; preds = %1
  %33 = call i32 @si_meminfo(%struct.sysinfo* %4)
  %34 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %35 = call i32 @ttm_mem_init_kernel_zone(%struct.ttm_mem_global* %34, %struct.sysinfo* %4)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %98

42:                                               ; preds = %32
  %43 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %44 = call i32 @ttm_mem_init_dma32_zone(%struct.ttm_mem_global* %43, %struct.sysinfo* %4)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %98

51:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %74, %51
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %55 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  %59 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %60 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %59, i32 0, i32 2
  %61 = load %struct.ttm_mem_zone**, %struct.ttm_mem_zone*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %61, i64 %63
  %65 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %64, align 8
  store %struct.ttm_mem_zone* %65, %struct.ttm_mem_zone** %7, align 8
  %66 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %7, align 8
  %67 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %7, align 8
  %70 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = lshr i64 %71, 10
  %73 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %68, i64 %72)
  br label %74

74:                                               ; preds = %58
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %52

77:                                               ; preds = %52
  %78 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %79 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %80 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = mul nsw i32 2, %84
  %86 = sdiv i32 %83, %85
  %87 = call i32 @ttm_page_alloc_init(%struct.ttm_mem_global* %78, i32 %86)
  %88 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %89 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %90 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PAGE_SIZE, align 4
  %95 = mul nsw i32 2, %94
  %96 = sdiv i32 %93, %95
  %97 = call i32 @ttm_dma_page_alloc_init(%struct.ttm_mem_global* %88, i32 %96)
  store i32 0, i32* %2, align 4
  br label %102

98:                                               ; preds = %50, %41
  %99 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %100 = call i32 @ttm_mem_global_release(%struct.ttm_mem_global* %99)
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %98, %77, %27
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32, i8*) #1

declare dso_local i32 @ttm_get_kobj(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #1

declare dso_local i32 @ttm_mem_init_kernel_zone(%struct.ttm_mem_global*, %struct.sysinfo*) #1

declare dso_local i32 @ttm_mem_init_dma32_zone(%struct.ttm_mem_global*, %struct.sysinfo*) #1

declare dso_local i32 @pr_info(i8*, i32, i64) #1

declare dso_local i32 @ttm_page_alloc_init(%struct.ttm_mem_global*, i32) #1

declare dso_local i32 @ttm_dma_page_alloc_init(%struct.ttm_mem_global*, i32) #1

declare dso_local i32 @ttm_mem_global_release(%struct.ttm_mem_global*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
