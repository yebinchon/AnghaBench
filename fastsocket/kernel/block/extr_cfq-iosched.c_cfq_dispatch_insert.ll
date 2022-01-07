; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_dispatch_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_dispatch_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.cfq_data* }
%struct.cfq_data = type { i32* }
%struct.request = type { i32 }
%struct.cfq_queue = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"dispatch_insert\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.request*)* @cfq_dispatch_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_dispatch_insert(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.cfq_data*, align 8
  %6 = alloca %struct.cfq_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %8 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.cfq_data*, %struct.cfq_data** %10, align 8
  store %struct.cfq_data* %11, %struct.cfq_data** %5, align 8
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = call %struct.cfq_queue* @RQ_CFQQ(%struct.request* %12)
  store %struct.cfq_queue* %13, %struct.cfq_queue** %6, align 8
  %14 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %15 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %16 = call i32 @cfq_log_cfqq(%struct.cfq_data* %14, %struct.cfq_queue* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %18 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %19 = load %struct.request*, %struct.request** %4, align 8
  %20 = call i32 @cfq_find_next_rq(%struct.cfq_data* %17, %struct.cfq_queue* %18, %struct.request* %19)
  %21 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %22 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.request*, %struct.request** %4, align 8
  %24 = call i32 @cfq_remove_request(%struct.request* %23)
  %25 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %26 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.request*, %struct.request** %4, align 8
  %30 = call %struct.TYPE_6__* @RQ_CFQG(%struct.request* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %35 = load %struct.request*, %struct.request** %4, align 8
  %36 = call i32 @elv_dispatch_sort(%struct.request_queue* %34, %struct.request* %35)
  %37 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %38 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %41 = call i64 @cfq_cfqq_sync(%struct.cfq_queue* %40)
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.request*, %struct.request** %4, align 8
  %46 = call i64 @blk_rq_sectors(%struct.request* %45)
  %47 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %48 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 8
  %53 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %54 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.request*, %struct.request** %4, align 8
  %58 = call i32 @blk_rq_bytes(%struct.request* %57)
  %59 = load %struct.request*, %struct.request** %4, align 8
  %60 = call i32 @rq_data_dir(%struct.request* %59)
  %61 = load %struct.request*, %struct.request** %4, align 8
  %62 = call i32 @rq_is_sync(%struct.request* %61)
  %63 = call i32 @cfq_blkiocg_update_dispatch_stats(i32* %56, i32 %58, i32 %60, i32 %62)
  ret void
}

declare dso_local %struct.cfq_queue* @RQ_CFQQ(%struct.request*) #1

declare dso_local i32 @cfq_log_cfqq(%struct.cfq_data*, %struct.cfq_queue*, i8*) #1

declare dso_local i32 @cfq_find_next_rq(%struct.cfq_data*, %struct.cfq_queue*, %struct.request*) #1

declare dso_local i32 @cfq_remove_request(%struct.request*) #1

declare dso_local %struct.TYPE_6__* @RQ_CFQG(%struct.request*) #1

declare dso_local i32 @elv_dispatch_sort(%struct.request_queue*, %struct.request*) #1

declare dso_local i64 @cfq_cfqq_sync(%struct.cfq_queue*) #1

declare dso_local i64 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @cfq_blkiocg_update_dispatch_stats(i32*, i32, i32, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @rq_is_sync(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
