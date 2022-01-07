; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_insert_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_insert_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.cfq_data* }
%struct.cfq_data = type { %struct.TYPE_5__*, i64* }
%struct.TYPE_5__ = type { i32 }
%struct.request = type { i32 }
%struct.cfq_queue = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"insert_request\00", align 1
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.request*)* @cfq_insert_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_insert_request(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.cfq_data*, align 8
  %6 = alloca %struct.cfq_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %8 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.cfq_data*, %struct.cfq_data** %10, align 8
  store %struct.cfq_data* %11, %struct.cfq_data** %5, align 8
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = call %struct.cfq_queue* @RQ_CFQQ(%struct.request* %12)
  store %struct.cfq_queue* %13, %struct.cfq_queue** %6, align 8
  %14 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %15 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %16 = call i32 @cfq_log_cfqq(%struct.cfq_data* %14, %struct.cfq_queue* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %18 = load %struct.request*, %struct.request** %4, align 8
  %19 = call %struct.TYPE_7__* @RQ_CIC(%struct.request* %18)
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cfq_init_prio_data(%struct.cfq_queue* %17, i32 %21)
  %23 = load %struct.request*, %struct.request** %4, align 8
  %24 = load i64, i64* @jiffies, align 8
  %25 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %26 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load %struct.request*, %struct.request** %4, align 8
  %29 = call i64 @rq_is_sync(%struct.request* %28)
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %24, %31
  %33 = call i32 @rq_set_fifo_time(%struct.request* %23, i64 %32)
  %34 = load %struct.request*, %struct.request** %4, align 8
  %35 = getelementptr inbounds %struct.request, %struct.request* %34, i32 0, i32 0
  %36 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %37 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %36, i32 0, i32 0
  %38 = call i32 @list_add_tail(i32* %35, i32* %37)
  %39 = load %struct.request*, %struct.request** %4, align 8
  %40 = call i32 @cfq_add_rq_rb(%struct.request* %39)
  %41 = load %struct.request*, %struct.request** %4, align 8
  %42 = call %struct.TYPE_8__* @RQ_CFQG(%struct.request* %41)
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %45 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.request*, %struct.request** %4, align 8
  %49 = call i32 @rq_data_dir(%struct.request* %48)
  %50 = load %struct.request*, %struct.request** %4, align 8
  %51 = call i64 @rq_is_sync(%struct.request* %50)
  %52 = call i32 @cfq_blkiocg_update_io_add_stats(i32* %43, i32* %47, i32 %49, i64 %51)
  %53 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %54 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %55 = load %struct.request*, %struct.request** %4, align 8
  %56 = call i32 @cfq_rq_enqueued(%struct.cfq_data* %53, %struct.cfq_queue* %54, %struct.request* %55)
  ret void
}

declare dso_local %struct.cfq_queue* @RQ_CFQQ(%struct.request*) #1

declare dso_local i32 @cfq_log_cfqq(%struct.cfq_data*, %struct.cfq_queue*, i8*) #1

declare dso_local i32 @cfq_init_prio_data(%struct.cfq_queue*, i32) #1

declare dso_local %struct.TYPE_7__* @RQ_CIC(%struct.request*) #1

declare dso_local i32 @rq_set_fifo_time(%struct.request*, i64) #1

declare dso_local i64 @rq_is_sync(%struct.request*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cfq_add_rq_rb(%struct.request*) #1

declare dso_local i32 @cfq_blkiocg_update_io_add_stats(i32*, i32*, i32, i64) #1

declare dso_local %struct.TYPE_8__* @RQ_CFQG(%struct.request*) #1

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @cfq_rq_enqueued(%struct.cfq_data*, %struct.cfq_queue*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
