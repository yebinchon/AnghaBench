; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_reposition_rq_rb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_reposition_rq_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_queue = type { %struct.TYPE_5__*, i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.request = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_queue*, %struct.request*)* @cfq_reposition_rq_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_reposition_rq_rb(%struct.cfq_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.cfq_queue*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.cfq_queue* %0, %struct.cfq_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %5 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %6 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %5, i32 0, i32 2
  %7 = load %struct.request*, %struct.request** %4, align 8
  %8 = call i32 @elv_rb_del(i32* %6, %struct.request* %7)
  %9 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %10 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = call i64 @rq_is_sync(%struct.request* %12)
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.request*, %struct.request** %4, align 8
  %18 = call %struct.TYPE_6__* @RQ_CFQG(%struct.request* %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.request*, %struct.request** %4, align 8
  %21 = call i32 @rq_data_dir(%struct.request* %20)
  %22 = load %struct.request*, %struct.request** %4, align 8
  %23 = call i64 @rq_is_sync(%struct.request* %22)
  %24 = call i32 @cfq_blkiocg_update_io_remove_stats(i32* %19, i32 %21, i64 %23)
  %25 = load %struct.request*, %struct.request** %4, align 8
  %26 = call i32 @cfq_add_rq_rb(%struct.request* %25)
  %27 = load %struct.request*, %struct.request** %4, align 8
  %28 = call %struct.TYPE_6__* @RQ_CFQG(%struct.request* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %31 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.request*, %struct.request** %4, align 8
  %37 = call i32 @rq_data_dir(%struct.request* %36)
  %38 = load %struct.request*, %struct.request** %4, align 8
  %39 = call i64 @rq_is_sync(%struct.request* %38)
  %40 = call i32 @cfq_blkiocg_update_io_add_stats(i32* %29, i32* %35, i32 %37, i64 %39)
  ret void
}

declare dso_local i32 @elv_rb_del(i32*, %struct.request*) #1

declare dso_local i64 @rq_is_sync(%struct.request*) #1

declare dso_local i32 @cfq_blkiocg_update_io_remove_stats(i32*, i32, i64) #1

declare dso_local %struct.TYPE_6__* @RQ_CFQG(%struct.request*) #1

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @cfq_add_rq_rb(%struct.request*) #1

declare dso_local i32 @cfq_blkiocg_update_io_add_stats(i32*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
