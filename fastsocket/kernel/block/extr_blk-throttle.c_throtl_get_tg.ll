; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_get_tg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_get_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i32 }
%struct.throtl_data = type { %struct.throtl_grp*, %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.blkio_cgroup = type { i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.throtl_grp* (%struct.throtl_data*)* @throtl_get_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.throtl_grp* @throtl_get_tg(%struct.throtl_data* %0) #0 {
  %2 = alloca %struct.throtl_grp*, align 8
  %3 = alloca %struct.throtl_data*, align 8
  %4 = alloca %struct.throtl_grp*, align 8
  %5 = alloca %struct.throtl_grp*, align 8
  %6 = alloca %struct.blkio_cgroup*, align 8
  %7 = alloca %struct.request_queue*, align 8
  store %struct.throtl_data* %0, %struct.throtl_data** %3, align 8
  store %struct.throtl_grp* null, %struct.throtl_grp** %4, align 8
  store %struct.throtl_grp* null, %struct.throtl_grp** %5, align 8
  %8 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %9 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %8, i32 0, i32 1
  %10 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  store %struct.request_queue* %10, %struct.request_queue** %7, align 8
  %11 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %12 = call i32 @blk_queue_dead(%struct.request_queue* %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.throtl_grp* null, %struct.throtl_grp** %2, align 8
  br label %76

16:                                               ; preds = %1
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load i32, i32* @current, align 4
  %19 = call %struct.blkio_cgroup* @task_blkio_cgroup(i32 %18)
  store %struct.blkio_cgroup* %19, %struct.blkio_cgroup** %6, align 8
  %20 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %21 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %22 = call %struct.throtl_grp* @throtl_find_tg(%struct.throtl_data* %20, %struct.blkio_cgroup* %21)
  store %struct.throtl_grp* %22, %struct.throtl_grp** %4, align 8
  %23 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %24 = icmp ne %struct.throtl_grp* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = call i32 (...) @rcu_read_unlock()
  %27 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  store %struct.throtl_grp* %27, %struct.throtl_grp** %2, align 8
  br label %76

28:                                               ; preds = %16
  %29 = call i32 (...) @rcu_read_unlock()
  %30 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %31 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @spin_unlock_irq(i32 %32)
  %34 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %35 = call %struct.throtl_grp* @throtl_alloc_tg(%struct.throtl_data* %34)
  store %struct.throtl_grp* %35, %struct.throtl_grp** %4, align 8
  %36 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %37 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @spin_lock_irq(i32 %38)
  %40 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %41 = call i32 @blk_queue_dead(%struct.request_queue* %40)
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %28
  %45 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %46 = call i32 @kfree(%struct.throtl_grp* %45)
  store %struct.throtl_grp* null, %struct.throtl_grp** %2, align 8
  br label %76

47:                                               ; preds = %28
  %48 = call i32 (...) @rcu_read_lock()
  %49 = load i32, i32* @current, align 4
  %50 = call %struct.blkio_cgroup* @task_blkio_cgroup(i32 %49)
  store %struct.blkio_cgroup* %50, %struct.blkio_cgroup** %6, align 8
  %51 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %52 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %53 = call %struct.throtl_grp* @throtl_find_tg(%struct.throtl_data* %51, %struct.blkio_cgroup* %52)
  store %struct.throtl_grp* %53, %struct.throtl_grp** %5, align 8
  %54 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %55 = icmp ne %struct.throtl_grp* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %58 = call i32 @kfree(%struct.throtl_grp* %57)
  %59 = call i32 (...) @rcu_read_unlock()
  %60 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  store %struct.throtl_grp* %60, %struct.throtl_grp** %2, align 8
  br label %76

61:                                               ; preds = %47
  %62 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %63 = icmp ne %struct.throtl_grp* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %66 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %65, i32 0, i32 0
  %67 = load %struct.throtl_grp*, %struct.throtl_grp** %66, align 8
  store %struct.throtl_grp* %67, %struct.throtl_grp** %4, align 8
  %68 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  store %struct.throtl_grp* %68, %struct.throtl_grp** %2, align 8
  br label %76

69:                                               ; preds = %61
  %70 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %71 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %72 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %73 = call i32 @throtl_init_add_tg_lists(%struct.throtl_data* %70, %struct.throtl_grp* %71, %struct.blkio_cgroup* %72)
  %74 = call i32 (...) @rcu_read_unlock()
  %75 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  store %struct.throtl_grp* %75, %struct.throtl_grp** %2, align 8
  br label %76

76:                                               ; preds = %69, %64, %56, %44, %25, %15
  %77 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  ret %struct.throtl_grp* %77
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blk_queue_dead(%struct.request_queue*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.blkio_cgroup* @task_blkio_cgroup(i32) #1

declare dso_local %struct.throtl_grp* @throtl_find_tg(%struct.throtl_data*, %struct.blkio_cgroup*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local %struct.throtl_grp* @throtl_alloc_tg(%struct.throtl_data*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @kfree(%struct.throtl_grp*) #1

declare dso_local i32 @throtl_init_add_tg_lists(%struct.throtl_data*, %struct.throtl_grp*, %struct.blkio_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
