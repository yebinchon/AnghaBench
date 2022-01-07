; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_mc.c_edac_mc_workq_function.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_mc.c_edac_mc_workq_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.delayed_work = type { i32 }
%struct.mem_ctl_info = type { i64, i32, i32 (%struct.mem_ctl_info*)* }

@mem_ctls_mutex = common dso_local global i32 0, align 4
@OP_OFFLINE = common dso_local global i64 0, align 8
@edac_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @edac_mc_workq_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edac_mc_workq_function(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.delayed_work*, align 8
  %4 = alloca %struct.mem_ctl_info*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %6 = call %struct.delayed_work* @to_delayed_work(%struct.work_struct* %5)
  store %struct.delayed_work* %6, %struct.delayed_work** %3, align 8
  %7 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %8 = call %struct.mem_ctl_info* @to_edac_mem_ctl_work(%struct.delayed_work* %7)
  store %struct.mem_ctl_info* %8, %struct.mem_ctl_info** %4, align 8
  %9 = call i32 @mutex_lock(i32* @mem_ctls_mutex)
  %10 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %11 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OP_OFFLINE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @mutex_unlock(i32* @mem_ctls_mutex)
  br label %39

17:                                               ; preds = %1
  %18 = call i64 (...) @edac_mc_assert_error_check_and_clear()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %22 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %21, i32 0, i32 2
  %23 = load i32 (%struct.mem_ctl_info*)*, i32 (%struct.mem_ctl_info*)** %22, align 8
  %24 = icmp ne i32 (%struct.mem_ctl_info*)* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %27 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %26, i32 0, i32 2
  %28 = load i32 (%struct.mem_ctl_info*)*, i32 (%struct.mem_ctl_info*)** %27, align 8
  %29 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %30 = call i32 %28(%struct.mem_ctl_info* %29)
  br label %31

31:                                               ; preds = %25, %20, %17
  %32 = call i32 @mutex_unlock(i32* @mem_ctls_mutex)
  %33 = load i32, i32* @edac_workqueue, align 4
  %34 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %35 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %34, i32 0, i32 1
  %36 = call i32 (...) @edac_mc_get_poll_msec()
  %37 = call i32 @msecs_to_jiffies(i32 %36)
  %38 = call i32 @queue_delayed_work(i32 %33, i32* %35, i32 %37)
  br label %39

39:                                               ; preds = %31, %15
  ret void
}

declare dso_local %struct.delayed_work* @to_delayed_work(%struct.work_struct*) #1

declare dso_local %struct.mem_ctl_info* @to_edac_mem_ctl_work(%struct.delayed_work*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @edac_mc_assert_error_check_and_clear(...) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @edac_mc_get_poll_msec(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
