; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_rq_enqueued.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_rq_enqueued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i32, i32, %struct.cfq_queue*, i32 }
%struct.cfq_queue = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.request = type { i32 }
%struct.cfq_io_context = type { i32 }

@REQ_META = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*, %struct.cfq_queue*, %struct.request*)* @cfq_rq_enqueued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_rq_enqueued(%struct.cfq_data* %0, %struct.cfq_queue* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.cfq_data*, align 8
  %5 = alloca %struct.cfq_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.cfq_io_context*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %4, align 8
  store %struct.cfq_queue* %1, %struct.cfq_queue** %5, align 8
  store %struct.request* %2, %struct.request** %6, align 8
  %8 = load %struct.request*, %struct.request** %6, align 8
  %9 = call %struct.cfq_io_context* @RQ_CIC(%struct.request* %8)
  store %struct.cfq_io_context* %9, %struct.cfq_io_context** %7, align 8
  %10 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %11 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  %14 = load %struct.request*, %struct.request** %6, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @REQ_META, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %22 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %20, %3
  %26 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %27 = load %struct.cfq_io_context*, %struct.cfq_io_context** %7, align 8
  %28 = call i32 @cfq_update_io_thinktime(%struct.cfq_data* %26, %struct.cfq_io_context* %27)
  %29 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %30 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %31 = load %struct.request*, %struct.request** %6, align 8
  %32 = call i32 @cfq_update_io_seektime(%struct.cfq_data* %29, %struct.cfq_queue* %30, %struct.request* %31)
  %33 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %34 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %35 = load %struct.cfq_io_context*, %struct.cfq_io_context** %7, align 8
  %36 = call i32 @cfq_update_idle_window(%struct.cfq_data* %33, %struct.cfq_queue* %34, %struct.cfq_io_context* %35)
  %37 = load %struct.request*, %struct.request** %6, align 8
  %38 = call i64 @blk_rq_pos(%struct.request* %37)
  %39 = load %struct.request*, %struct.request** %6, align 8
  %40 = call i64 @blk_rq_sectors(%struct.request* %39)
  %41 = add nsw i64 %38, %40
  %42 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %43 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %45 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %46 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %45, i32 0, i32 2
  %47 = load %struct.cfq_queue*, %struct.cfq_queue** %46, align 8
  %48 = icmp eq %struct.cfq_queue* %44, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %25
  %50 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %51 = call i64 @cfq_cfqq_wait_request(%struct.cfq_queue* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %49
  %54 = load %struct.request*, %struct.request** %6, align 8
  %55 = call i64 @blk_rq_bytes(%struct.request* %54)
  %56 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %60 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %73

63:                                               ; preds = %58, %53
  %64 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %65 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %66 = call i32 @cfq_del_timer(%struct.cfq_data* %64, %struct.cfq_queue* %65)
  %67 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %68 = call i32 @cfq_clear_cfqq_wait_request(%struct.cfq_queue* %67)
  %69 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %70 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @__blk_run_queue(i32 %71)
  br label %81

73:                                               ; preds = %58
  %74 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %75 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @cfq_blkiocg_update_idle_time_stats(i32* %77)
  %79 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %80 = call i32 @cfq_mark_cfqq_must_dispatch(%struct.cfq_queue* %79)
  br label %81

81:                                               ; preds = %73, %63
  br label %82

82:                                               ; preds = %81, %49
  br label %98

83:                                               ; preds = %25
  %84 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %85 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %86 = load %struct.request*, %struct.request** %6, align 8
  %87 = call i64 @cfq_should_preempt(%struct.cfq_data* %84, %struct.cfq_queue* %85, %struct.request* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %91 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %92 = call i32 @cfq_preempt_queue(%struct.cfq_data* %90, %struct.cfq_queue* %91)
  %93 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %94 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @__blk_run_queue(i32 %95)
  br label %97

97:                                               ; preds = %89, %83
  br label %98

98:                                               ; preds = %97, %82
  ret void
}

declare dso_local %struct.cfq_io_context* @RQ_CIC(%struct.request*) #1

declare dso_local i32 @cfq_update_io_thinktime(%struct.cfq_data*, %struct.cfq_io_context*) #1

declare dso_local i32 @cfq_update_io_seektime(%struct.cfq_data*, %struct.cfq_queue*, %struct.request*) #1

declare dso_local i32 @cfq_update_idle_window(%struct.cfq_data*, %struct.cfq_queue*, %struct.cfq_io_context*) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i64 @blk_rq_sectors(%struct.request*) #1

declare dso_local i64 @cfq_cfqq_wait_request(%struct.cfq_queue*) #1

declare dso_local i64 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @cfq_del_timer(%struct.cfq_data*, %struct.cfq_queue*) #1

declare dso_local i32 @cfq_clear_cfqq_wait_request(%struct.cfq_queue*) #1

declare dso_local i32 @__blk_run_queue(i32) #1

declare dso_local i32 @cfq_blkiocg_update_idle_time_stats(i32*) #1

declare dso_local i32 @cfq_mark_cfqq_must_dispatch(%struct.cfq_queue*) #1

declare dso_local i64 @cfq_should_preempt(%struct.cfq_data*, %struct.cfq_queue*, %struct.request*) #1

declare dso_local i32 @cfq_preempt_queue(%struct.cfq_data*, %struct.cfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
