; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_stp_work_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_stp_work_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.work_struct = type { i32 }
%struct.clock_sync_data = type { i32 }

@stp_work_mutex = common dso_local global i32 0, align 4
@stp_online = common dso_local global i32 0, align 4
@stp_page = common dso_local global i32 0, align 4
@STP_OP_CTRL = common dso_local global i32 0, align 4
@stp_timer = common dso_local global i32 0, align 4
@stp_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@stp_sync_clock = common dso_local global i32 0, align 4
@cpu_online_map = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @stp_work_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stp_work_fn(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.clock_sync_data, align 4
  %4 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = call i32 @mutex_lock(i32* @stp_work_mutex)
  %6 = load i32, i32* @stp_online, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @stp_page, align 4
  %10 = load i32, i32* @STP_OP_CTRL, align 4
  %11 = call i32 @chsc_sstpc(i32 %9, i32 %10, i32 0)
  %12 = call i32 @del_timer_sync(i32* @stp_timer)
  br label %51

13:                                               ; preds = %1
  %14 = load i32, i32* @stp_page, align 4
  %15 = load i32, i32* @STP_OP_CTRL, align 4
  %16 = call i32 @chsc_sstpc(i32 %14, i32 %15, i32 45280)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %51

20:                                               ; preds = %13
  %21 = load i32, i32* @stp_page, align 4
  %22 = call i32 @chsc_sstpi(i32 %21, %struct.TYPE_3__* @stp_info, i32 4)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stp_info, i32 0, i32 0), align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %20
  br label %51

29:                                               ; preds = %25
  %30 = call i64 (...) @check_sync_clock()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %51

33:                                               ; preds = %29
  %34 = call i32 @memset(%struct.clock_sync_data* %3, i32 0, i32 4)
  %35 = call i32 (...) @get_online_cpus()
  %36 = getelementptr inbounds %struct.clock_sync_data, %struct.clock_sync_data* %3, i32 0, i32 0
  %37 = call i64 (...) @num_online_cpus()
  %38 = sub nsw i64 %37, 1
  %39 = call i32 @atomic_set(i32* %36, i64 %38)
  %40 = load i32, i32* @stp_sync_clock, align 4
  %41 = call i32 @stop_machine(i32 %40, %struct.clock_sync_data* %3, i32* @cpu_online_map)
  %42 = call i32 (...) @put_online_cpus()
  %43 = call i64 (...) @check_sync_clock()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %33
  %46 = load i64, i64* @jiffies, align 8
  %47 = load i64, i64* @HZ, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @mod_timer(i32* @stp_timer, i64 %48)
  br label %50

50:                                               ; preds = %45, %33
  br label %51

51:                                               ; preds = %50, %32, %28, %19, %8
  %52 = call i32 @mutex_unlock(i32* @stp_work_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @chsc_sstpc(i32, i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @chsc_sstpi(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @check_sync_clock(...) #1

declare dso_local i32 @memset(%struct.clock_sync_data*, i32, i32) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i32 @stop_machine(i32, %struct.clock_sync_data*, i32*) #1

declare dso_local i32 @put_online_cpus(...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
