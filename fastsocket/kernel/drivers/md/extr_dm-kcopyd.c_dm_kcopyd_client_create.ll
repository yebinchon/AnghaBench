; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-kcopyd.c_dm_kcopyd_client_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-kcopyd.c_dm_kcopyd_client_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_kcopyd_client = type { i32, i32, i32, i32, i32, i64, i64, i32*, i32, i32, %struct.dm_kcopyd_throttle*, i32, i32, i32, i32 }
%struct.dm_kcopyd_throttle = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MIN_JOBS = common dso_local global i32 0, align 4
@_job_cache = common dso_local global i32 0, align 4
@do_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"kcopyd\00", align 1
@RESERVE_PAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_kcopyd_client* @dm_kcopyd_client_create(%struct.dm_kcopyd_throttle* %0) #0 {
  %2 = alloca %struct.dm_kcopyd_client*, align 8
  %3 = alloca %struct.dm_kcopyd_throttle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_kcopyd_client*, align 8
  store %struct.dm_kcopyd_throttle* %0, %struct.dm_kcopyd_throttle** %3, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.dm_kcopyd_client* @kmalloc(i32 80, i32 %8)
  store %struct.dm_kcopyd_client* %9, %struct.dm_kcopyd_client** %5, align 8
  %10 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %11 = icmp ne %struct.dm_kcopyd_client* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.dm_kcopyd_client* @ERR_PTR(i32 %14)
  store %struct.dm_kcopyd_client* %15, %struct.dm_kcopyd_client** %2, align 8
  br label %112

16:                                               ; preds = %1
  %17 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %18 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %17, i32 0, i32 14
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %21 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %20, i32 0, i32 13
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %24 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %23, i32 0, i32 12
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %27 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %26, i32 0, i32 11
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %3, align 8
  %30 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %31 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %30, i32 0, i32 10
  store %struct.dm_kcopyd_throttle* %29, %struct.dm_kcopyd_throttle** %31, align 8
  %32 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %33 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memset(i32 %34, i32 0, i32 4)
  %36 = load i32, i32* @MIN_JOBS, align 4
  %37 = load i32, i32* @_job_cache, align 4
  %38 = call i32 @mempool_create_slab_pool(i32 %36, i32 %37)
  %39 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %40 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %42 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %16
  br label %107

46:                                               ; preds = %16
  %47 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %48 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %47, i32 0, i32 8
  %49 = load i32, i32* @do_work, align 4
  %50 = call i32 @INIT_WORK(i32* %48, i32 %49)
  %51 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %53 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %55 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  br label %102

59:                                               ; preds = %46
  %60 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %61 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %60, i32 0, i32 7
  store i32* null, i32** %61, align 8
  %62 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %63 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %62, i32 0, i32 5
  store i64 0, i64* %63, align 8
  %64 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %65 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %64, i32 0, i32 6
  store i64 0, i64* %65, align 8
  %66 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %67 = load i32, i32* @RESERVE_PAGES, align 4
  %68 = call i32 @client_reserve_pages(%struct.dm_kcopyd_client* %66, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %97

72:                                               ; preds = %59
  %73 = call i32 (...) @dm_io_client_create()
  %74 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %75 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %77 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @IS_ERR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %83 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @PTR_ERR(i32 %84)
  store i32 %85, i32* %4, align 4
  br label %94

86:                                               ; preds = %72
  %87 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %88 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %87, i32 0, i32 3
  %89 = call i32 @init_waitqueue_head(i32* %88)
  %90 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %91 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %90, i32 0, i32 2
  %92 = call i32 @atomic_set(i32* %91, i32 0)
  %93 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  store %struct.dm_kcopyd_client* %93, %struct.dm_kcopyd_client** %2, align 8
  br label %112

94:                                               ; preds = %81
  %95 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %96 = call i32 @client_free_pages(%struct.dm_kcopyd_client* %95)
  br label %97

97:                                               ; preds = %94, %71
  %98 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %99 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @destroy_workqueue(i32 %100)
  br label %102

102:                                              ; preds = %97, %58
  %103 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %104 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @mempool_destroy(i32 %105)
  br label %107

107:                                              ; preds = %102, %45
  %108 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %109 = call i32 @kfree(%struct.dm_kcopyd_client* %108)
  %110 = load i32, i32* %4, align 4
  %111 = call %struct.dm_kcopyd_client* @ERR_PTR(i32 %110)
  store %struct.dm_kcopyd_client* %111, %struct.dm_kcopyd_client** %2, align 8
  br label %112

112:                                              ; preds = %107, %86, %12
  %113 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %2, align 8
  ret %struct.dm_kcopyd_client* %113
}

declare dso_local %struct.dm_kcopyd_client* @kmalloc(i32, i32) #1

declare dso_local %struct.dm_kcopyd_client* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mempool_create_slab_pool(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @client_reserve_pages(%struct.dm_kcopyd_client*, i32) #1

declare dso_local i32 @dm_io_client_create(...) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @client_free_pages(%struct.dm_kcopyd_client*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @mempool_destroy(i32) #1

declare dso_local i32 @kfree(%struct.dm_kcopyd_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
