; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_may_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_may_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.request_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cfq_data* }
%struct.cfq_data = type { i32 }
%struct.cfq_io_context = type { i32 }
%struct.cfq_queue = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@ELV_MQUEUE_MAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, i32)* @cfq_may_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfq_may_queue(%struct.request_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfq_data*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.cfq_io_context*, align 8
  %9 = alloca %struct.cfq_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %11 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.cfq_data*, %struct.cfq_data** %13, align 8
  store %struct.cfq_data* %14, %struct.cfq_data** %6, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %15, %struct.task_struct** %7, align 8
  %16 = load %struct.cfq_data*, %struct.cfq_data** %6, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.cfq_io_context* @cfq_cic_lookup(%struct.cfq_data* %16, i32 %19)
  store %struct.cfq_io_context* %20, %struct.cfq_io_context** %8, align 8
  %21 = load %struct.cfq_io_context*, %struct.cfq_io_context** %8, align 8
  %22 = icmp ne %struct.cfq_io_context* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ELV_MQUEUE_MAY, align 4
  store i32 %24, i32* %3, align 4
  br label %44

25:                                               ; preds = %2
  %26 = load %struct.cfq_io_context*, %struct.cfq_io_context** %8, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @rw_is_sync(i32 %27)
  %29 = call %struct.cfq_queue* @cic_to_cfqq(%struct.cfq_io_context* %26, i32 %28)
  store %struct.cfq_queue* %29, %struct.cfq_queue** %9, align 8
  %30 = load %struct.cfq_queue*, %struct.cfq_queue** %9, align 8
  %31 = icmp ne %struct.cfq_queue* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load %struct.cfq_queue*, %struct.cfq_queue** %9, align 8
  %34 = load %struct.cfq_io_context*, %struct.cfq_io_context** %8, align 8
  %35 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cfq_init_prio_data(%struct.cfq_queue* %33, i32 %36)
  %38 = load %struct.cfq_queue*, %struct.cfq_queue** %9, align 8
  %39 = call i32 @cfq_prio_boost(%struct.cfq_queue* %38)
  %40 = load %struct.cfq_queue*, %struct.cfq_queue** %9, align 8
  %41 = call i32 @__cfq_may_queue(%struct.cfq_queue* %40)
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %25
  %43 = load i32, i32* @ELV_MQUEUE_MAY, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %32, %23
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.cfq_io_context* @cfq_cic_lookup(%struct.cfq_data*, i32) #1

declare dso_local %struct.cfq_queue* @cic_to_cfqq(%struct.cfq_io_context*, i32) #1

declare dso_local i32 @rw_is_sync(i32) #1

declare dso_local i32 @cfq_init_prio_data(%struct.cfq_queue*, i32) #1

declare dso_local i32 @cfq_prio_boost(%struct.cfq_queue*) #1

declare dso_local i32 @__cfq_may_queue(%struct.cfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
