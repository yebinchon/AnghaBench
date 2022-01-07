; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_merged_requests.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_merged_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32 }
%struct.cfq_queue = type { %struct.request* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.request*, %struct.request*)* @cfq_merged_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_merged_requests(%struct.request_queue* %0, %struct.request* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.cfq_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store %struct.request* %2, %struct.request** %6, align 8
  %8 = load %struct.request*, %struct.request** %5, align 8
  %9 = call %struct.cfq_queue* @RQ_CFQQ(%struct.request* %8)
  store %struct.cfq_queue* %9, %struct.cfq_queue** %7, align 8
  %10 = load %struct.request*, %struct.request** %5, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 0
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %3
  %15 = load %struct.request*, %struct.request** %6, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 0
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %14
  %20 = load %struct.request*, %struct.request** %6, align 8
  %21 = call i32 @rq_fifo_time(%struct.request* %20)
  %22 = load %struct.request*, %struct.request** %5, align 8
  %23 = call i32 @rq_fifo_time(%struct.request* %22)
  %24 = call i64 @time_before(i32 %21, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load %struct.request*, %struct.request** %5, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 0
  %29 = load %struct.request*, %struct.request** %6, align 8
  %30 = getelementptr inbounds %struct.request, %struct.request* %29, i32 0, i32 0
  %31 = call i32 @list_move(i32* %28, i32* %30)
  %32 = load %struct.request*, %struct.request** %5, align 8
  %33 = load %struct.request*, %struct.request** %6, align 8
  %34 = call i32 @rq_fifo_time(%struct.request* %33)
  %35 = call i32 @rq_set_fifo_time(%struct.request* %32, i32 %34)
  br label %36

36:                                               ; preds = %26, %19, %14, %3
  %37 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  %38 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %37, i32 0, i32 0
  %39 = load %struct.request*, %struct.request** %38, align 8
  %40 = load %struct.request*, %struct.request** %6, align 8
  %41 = icmp eq %struct.request* %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.request*, %struct.request** %5, align 8
  %44 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  %45 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %44, i32 0, i32 0
  store %struct.request* %43, %struct.request** %45, align 8
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.request*, %struct.request** %6, align 8
  %48 = call i32 @cfq_remove_request(%struct.request* %47)
  %49 = load %struct.request*, %struct.request** %5, align 8
  %50 = call %struct.TYPE_2__* @RQ_CFQG(%struct.request* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.request*, %struct.request** %6, align 8
  %53 = call i32 @rq_data_dir(%struct.request* %52)
  %54 = load %struct.request*, %struct.request** %6, align 8
  %55 = call i32 @rq_is_sync(%struct.request* %54)
  %56 = call i32 @cfq_blkiocg_update_io_merged_stats(i32* %51, i32 %53, i32 %55)
  ret void
}

declare dso_local %struct.cfq_queue* @RQ_CFQQ(%struct.request*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @time_before(i32, i32) #1

declare dso_local i32 @rq_fifo_time(%struct.request*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @rq_set_fifo_time(%struct.request*, i32) #1

declare dso_local i32 @cfq_remove_request(%struct.request*) #1

declare dso_local i32 @cfq_blkiocg_update_io_merged_stats(i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @RQ_CFQG(%struct.request*) #1

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @rq_is_sync(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
