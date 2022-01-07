; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_find_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_find_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cfq_queue = type { i32 }
%struct.cfq_data = type { %struct.cfq_queue, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.io_context = type { i32 }
%struct.cfq_io_context = type { i32 }
%struct.cfq_group = type { i32 }

@__GFP_WAIT = common dso_local global i32 0, align 4
@cfq_pool = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"alloced\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfq_queue* (%struct.cfq_data*, i32, %struct.io_context*, i32)* @cfq_find_alloc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfq_queue* @cfq_find_alloc_queue(%struct.cfq_data* %0, i32 %1, %struct.io_context* %2, i32 %3) #0 {
  %5 = alloca %struct.cfq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.io_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cfq_queue*, align 8
  %10 = alloca %struct.cfq_queue*, align 8
  %11 = alloca %struct.cfq_io_context*, align 8
  %12 = alloca %struct.cfq_group*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.io_context* %2, %struct.io_context** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.cfq_queue* null, %struct.cfq_queue** %10, align 8
  br label %13

13:                                               ; preds = %64, %4
  %14 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %15 = call %struct.cfq_group* @cfq_get_cfqg(%struct.cfq_data* %14)
  store %struct.cfq_group* %15, %struct.cfq_group** %12, align 8
  %16 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %17 = load %struct.io_context*, %struct.io_context** %7, align 8
  %18 = call %struct.cfq_io_context* @cfq_cic_lookup(%struct.cfq_data* %16, %struct.io_context* %17)
  store %struct.cfq_io_context* %18, %struct.cfq_io_context** %11, align 8
  %19 = load %struct.cfq_io_context*, %struct.cfq_io_context** %11, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.cfq_queue* @cic_to_cfqq(%struct.cfq_io_context* %19, i32 %20)
  store %struct.cfq_queue* %21, %struct.cfq_queue** %9, align 8
  %22 = load %struct.cfq_queue*, %struct.cfq_queue** %9, align 8
  %23 = icmp ne %struct.cfq_queue* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = load %struct.cfq_queue*, %struct.cfq_queue** %9, align 8
  %26 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %27 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %26, i32 0, i32 0
  %28 = icmp eq %struct.cfq_queue* %25, %27
  br i1 %28, label %29, label %102

29:                                               ; preds = %24, %13
  store %struct.cfq_queue* null, %struct.cfq_queue** %9, align 8
  %30 = load %struct.cfq_queue*, %struct.cfq_queue** %10, align 8
  %31 = icmp ne %struct.cfq_queue* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load %struct.cfq_queue*, %struct.cfq_queue** %10, align 8
  store %struct.cfq_queue* %33, %struct.cfq_queue** %9, align 8
  store %struct.cfq_queue* null, %struct.cfq_queue** %10, align 8
  br label %78

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @__GFP_WAIT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %34
  %40 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %41 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @spin_unlock_irq(i32 %44)
  %46 = load i32, i32* @cfq_pool, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @__GFP_ZERO, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %51 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.cfq_queue* @kmem_cache_alloc_node(i32 %46, i32 %49, i32 %54)
  store %struct.cfq_queue* %55, %struct.cfq_queue** %10, align 8
  %56 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %57 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @spin_lock_irq(i32 %60)
  %62 = load %struct.cfq_queue*, %struct.cfq_queue** %10, align 8
  %63 = icmp ne %struct.cfq_queue* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %39
  br label %13

65:                                               ; preds = %39
  br label %77

66:                                               ; preds = %34
  %67 = load i32, i32* @cfq_pool, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @__GFP_ZERO, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %72 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.cfq_queue* @kmem_cache_alloc_node(i32 %67, i32 %70, i32 %75)
  store %struct.cfq_queue* %76, %struct.cfq_queue** %9, align 8
  br label %77

77:                                               ; preds = %66, %65
  br label %78

78:                                               ; preds = %77, %32
  %79 = load %struct.cfq_queue*, %struct.cfq_queue** %9, align 8
  %80 = icmp ne %struct.cfq_queue* %79, null
  br i1 %80, label %81, label %98

81:                                               ; preds = %78
  %82 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %83 = load %struct.cfq_queue*, %struct.cfq_queue** %9, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @cfq_init_cfqq(%struct.cfq_data* %82, %struct.cfq_queue* %83, i32 %86, i32 %87)
  %89 = load %struct.cfq_queue*, %struct.cfq_queue** %9, align 8
  %90 = load %struct.io_context*, %struct.io_context** %7, align 8
  %91 = call i32 @cfq_init_prio_data(%struct.cfq_queue* %89, %struct.io_context* %90)
  %92 = load %struct.cfq_queue*, %struct.cfq_queue** %9, align 8
  %93 = load %struct.cfq_group*, %struct.cfq_group** %12, align 8
  %94 = call i32 @cfq_link_cfqq_cfqg(%struct.cfq_queue* %92, %struct.cfq_group* %93)
  %95 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %96 = load %struct.cfq_queue*, %struct.cfq_queue** %9, align 8
  %97 = call i32 @cfq_log_cfqq(%struct.cfq_data* %95, %struct.cfq_queue* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %101

98:                                               ; preds = %78
  %99 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %100 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %99, i32 0, i32 0
  store %struct.cfq_queue* %100, %struct.cfq_queue** %9, align 8
  br label %101

101:                                              ; preds = %98, %81
  br label %102

102:                                              ; preds = %101, %24
  %103 = load %struct.cfq_queue*, %struct.cfq_queue** %10, align 8
  %104 = icmp ne %struct.cfq_queue* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* @cfq_pool, align 4
  %107 = load %struct.cfq_queue*, %struct.cfq_queue** %10, align 8
  %108 = call i32 @kmem_cache_free(i32 %106, %struct.cfq_queue* %107)
  br label %109

109:                                              ; preds = %105, %102
  %110 = load %struct.cfq_queue*, %struct.cfq_queue** %9, align 8
  ret %struct.cfq_queue* %110
}

declare dso_local %struct.cfq_group* @cfq_get_cfqg(%struct.cfq_data*) #1

declare dso_local %struct.cfq_io_context* @cfq_cic_lookup(%struct.cfq_data*, %struct.io_context*) #1

declare dso_local %struct.cfq_queue* @cic_to_cfqq(%struct.cfq_io_context*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local %struct.cfq_queue* @kmem_cache_alloc_node(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @cfq_init_cfqq(%struct.cfq_data*, %struct.cfq_queue*, i32, i32) #1

declare dso_local i32 @cfq_init_prio_data(%struct.cfq_queue*, %struct.io_context*) #1

declare dso_local i32 @cfq_link_cfqq_cfqg(%struct.cfq_queue*, %struct.cfq_group*) #1

declare dso_local i32 @cfq_log_cfqq(%struct.cfq_data*, %struct.cfq_queue*, i8*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.cfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
