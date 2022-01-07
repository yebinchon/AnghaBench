; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c___cfq_set_active_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c___cfq_set_active_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { %struct.cfq_queue*, i32, i32 }
%struct.cfq_queue = type { i64, i64, i64, i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"set_active wl_prio:%d wl_type:%d\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*, %struct.cfq_queue*)* @__cfq_set_active_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cfq_set_active_queue(%struct.cfq_data* %0, %struct.cfq_queue* %1) #0 {
  %3 = alloca %struct.cfq_data*, align 8
  %4 = alloca %struct.cfq_queue*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %3, align 8
  store %struct.cfq_queue* %1, %struct.cfq_queue** %4, align 8
  %5 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %6 = icmp ne %struct.cfq_queue* %5, null
  br i1 %6, label %7, label %48

7:                                                ; preds = %2
  %8 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %9 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %10 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %11 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %14 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @cfq_log_cfqq(%struct.cfq_data* %8, %struct.cfq_queue* %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %18 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %17, i32 0, i32 6
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @cfq_blkiocg_update_avg_queue_size_stats(i32* %20)
  %22 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %23 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @jiffies, align 4
  %25 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %26 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %28 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %30 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %32 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %34 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %36 = call i32 @cfq_clear_cfqq_wait_request(%struct.cfq_queue* %35)
  %37 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %38 = call i32 @cfq_clear_cfqq_must_dispatch(%struct.cfq_queue* %37)
  %39 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %40 = call i32 @cfq_clear_cfqq_must_alloc_slice(%struct.cfq_queue* %39)
  %41 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %42 = call i32 @cfq_clear_cfqq_fifo_expire(%struct.cfq_queue* %41)
  %43 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %44 = call i32 @cfq_mark_cfqq_slice_new(%struct.cfq_queue* %43)
  %45 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %46 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %47 = call i32 @cfq_del_timer(%struct.cfq_data* %45, %struct.cfq_queue* %46)
  br label %48

48:                                               ; preds = %7, %2
  %49 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %50 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %51 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %50, i32 0, i32 0
  store %struct.cfq_queue* %49, %struct.cfq_queue** %51, align 8
  ret void
}

declare dso_local i32 @cfq_log_cfqq(%struct.cfq_data*, %struct.cfq_queue*, i8*, i32, i32) #1

declare dso_local i32 @cfq_blkiocg_update_avg_queue_size_stats(i32*) #1

declare dso_local i32 @cfq_clear_cfqq_wait_request(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_clear_cfqq_must_dispatch(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_clear_cfqq_must_alloc_slice(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_clear_cfqq_fifo_expire(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_mark_cfqq_slice_new(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_del_timer(%struct.cfq_data*, %struct.cfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
