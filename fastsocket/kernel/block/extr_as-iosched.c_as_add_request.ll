; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_add_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_add_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.as_data* }
%struct.as_data = type { i32*, i64* }
%struct.request = type { i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@AS_RQ_NEW = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@AS_RQ_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.request*)* @as_add_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as_add_request(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.as_data*, align 8
  %6 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %8 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.as_data*, %struct.as_data** %10, align 8
  store %struct.as_data* %11, %struct.as_data** %5, align 8
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = load i32, i32* @AS_RQ_NEW, align 4
  %14 = call i32 @RQ_SET_STATE(%struct.request* %12, i32 %13)
  %15 = load %struct.request*, %struct.request** %4, align 8
  %16 = call i32 @rq_is_sync(%struct.request* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %18 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @as_get_io_context(i32 %19)
  %21 = load %struct.request*, %struct.request** %4, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.request*, %struct.request** %4, align 8
  %26 = call %struct.TYPE_6__* @RQ_IOC(%struct.request* %25)
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %2
  %29 = load %struct.as_data*, %struct.as_data** %5, align 8
  %30 = load %struct.request*, %struct.request** %4, align 8
  %31 = call %struct.TYPE_6__* @RQ_IOC(%struct.request* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load %struct.request*, %struct.request** %4, align 8
  %35 = call i32 @as_update_iohist(%struct.as_data* %29, %struct.TYPE_5__* %33, %struct.request* %34)
  %36 = load %struct.request*, %struct.request** %4, align 8
  %37 = call %struct.TYPE_6__* @RQ_IOC(%struct.request* %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i32 @atomic_inc(i32* %40)
  br label %42

42:                                               ; preds = %28, %2
  %43 = load %struct.as_data*, %struct.as_data** %5, align 8
  %44 = load %struct.request*, %struct.request** %4, align 8
  %45 = call i32 @RQ_RB_ROOT(%struct.as_data* %43, %struct.request* %44)
  %46 = load %struct.request*, %struct.request** %4, align 8
  %47 = call i32 @elv_rb_add(i32 %45, %struct.request* %46)
  %48 = load %struct.request*, %struct.request** %4, align 8
  %49 = load i64, i64* @jiffies, align 8
  %50 = load %struct.as_data*, %struct.as_data** %5, align 8
  %51 = getelementptr inbounds %struct.as_data, %struct.as_data* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %49, %56
  %58 = call i32 @rq_set_fifo_time(%struct.request* %48, i64 %57)
  %59 = load %struct.request*, %struct.request** %4, align 8
  %60 = getelementptr inbounds %struct.request, %struct.request* %59, i32 0, i32 0
  %61 = load %struct.as_data*, %struct.as_data** %5, align 8
  %62 = getelementptr inbounds %struct.as_data, %struct.as_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @list_add_tail(i32* %60, i32* %66)
  %68 = load %struct.as_data*, %struct.as_data** %5, align 8
  %69 = load %struct.request*, %struct.request** %4, align 8
  %70 = call i32 @as_update_rq(%struct.as_data* %68, %struct.request* %69)
  %71 = load %struct.request*, %struct.request** %4, align 8
  %72 = load i32, i32* @AS_RQ_QUEUED, align 4
  %73 = call i32 @RQ_SET_STATE(%struct.request* %71, i32 %72)
  ret void
}

declare dso_local i32 @RQ_SET_STATE(%struct.request*, i32) #1

declare dso_local i32 @rq_is_sync(%struct.request*) #1

declare dso_local i32 @as_get_io_context(i32) #1

declare dso_local %struct.TYPE_6__* @RQ_IOC(%struct.request*) #1

declare dso_local i32 @as_update_iohist(%struct.as_data*, %struct.TYPE_5__*, %struct.request*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @elv_rb_add(i32, %struct.request*) #1

declare dso_local i32 @RQ_RB_ROOT(%struct.as_data*, %struct.request*) #1

declare dso_local i32 @rq_set_fifo_time(%struct.request*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @as_update_rq(%struct.as_data*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
