; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_check_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_check_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.cfq_queue = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fifo=%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.cfq_queue*)* @cfq_check_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @cfq_check_fifo(%struct.cfq_queue* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.cfq_queue*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.cfq_queue* %0, %struct.cfq_queue** %3, align 8
  store %struct.request* null, %struct.request** %4, align 8
  %5 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %6 = call i64 @cfq_cfqq_fifo_expire(%struct.cfq_queue* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.request* null, %struct.request** %2, align 8
  br label %37

9:                                                ; preds = %1
  %10 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %11 = call i32 @cfq_mark_cfqq_fifo_expire(%struct.cfq_queue* %10)
  %12 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %13 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %12, i32 0, i32 1
  %14 = call i64 @list_empty(%struct.TYPE_2__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store %struct.request* null, %struct.request** %2, align 8
  br label %37

17:                                               ; preds = %9
  %18 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %19 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.request* @rq_entry_fifo(i32 %21)
  store %struct.request* %22, %struct.request** %4, align 8
  %23 = load i32, i32* @jiffies, align 4
  %24 = load %struct.request*, %struct.request** %4, align 8
  %25 = call i32 @rq_fifo_time(%struct.request* %24)
  %26 = call i64 @time_before(i32 %23, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store %struct.request* null, %struct.request** %4, align 8
  br label %29

29:                                               ; preds = %28, %17
  %30 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %31 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %34 = load %struct.request*, %struct.request** %4, align 8
  %35 = call i32 @cfq_log_cfqq(i32 %32, %struct.cfq_queue* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.request* %34)
  %36 = load %struct.request*, %struct.request** %4, align 8
  store %struct.request* %36, %struct.request** %2, align 8
  br label %37

37:                                               ; preds = %29, %16, %8
  %38 = load %struct.request*, %struct.request** %2, align 8
  ret %struct.request* %38
}

declare dso_local i64 @cfq_cfqq_fifo_expire(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_mark_cfqq_fifo_expire(%struct.cfq_queue*) #1

declare dso_local i64 @list_empty(%struct.TYPE_2__*) #1

declare dso_local %struct.request* @rq_entry_fifo(i32) #1

declare dso_local i64 @time_before(i32, i32) #1

declare dso_local i32 @rq_fifo_time(%struct.request*) #1

declare dso_local i32 @cfq_log_cfqq(i32, %struct.cfq_queue*, i8*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
