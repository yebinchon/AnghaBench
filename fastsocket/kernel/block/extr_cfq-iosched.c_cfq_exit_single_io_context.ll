; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_exit_single_io_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_exit_single_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_context = type { i32 }
%struct.cfq_io_context = type { %struct.cfq_data* }
%struct.cfq_data = type { %struct.request_queue* }
%struct.request_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_context*, %struct.cfq_io_context*)* @cfq_exit_single_io_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_exit_single_io_context(%struct.io_context* %0, %struct.cfq_io_context* %1) #0 {
  %3 = alloca %struct.io_context*, align 8
  %4 = alloca %struct.cfq_io_context*, align 8
  %5 = alloca %struct.cfq_data*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i64, align 8
  store %struct.io_context* %0, %struct.io_context** %3, align 8
  store %struct.cfq_io_context* %1, %struct.cfq_io_context** %4, align 8
  %8 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %9 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %8, i32 0, i32 0
  %10 = load %struct.cfq_data*, %struct.cfq_data** %9, align 8
  store %struct.cfq_data* %10, %struct.cfq_data** %5, align 8
  %11 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %12 = icmp ne %struct.cfq_data* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  %14 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %15 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %14, i32 0, i32 0
  %16 = load %struct.request_queue*, %struct.request_queue** %15, align 8
  store %struct.request_queue* %16, %struct.request_queue** %6, align 8
  %17 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %18 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32 %19, i64 %20)
  %22 = call i32 (...) @smp_read_barrier_depends()
  %23 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %24 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %23, i32 0, i32 0
  %25 = load %struct.cfq_data*, %struct.cfq_data** %24, align 8
  %26 = icmp ne %struct.cfq_data* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %13
  %28 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %29 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %30 = call i32 @__cfq_exit_single_io_context(%struct.cfq_data* %28, %struct.cfq_io_context* %29)
  br label %31

31:                                               ; preds = %27, %13
  %32 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %33 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %31, %2
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @smp_read_barrier_depends(...) #1

declare dso_local i32 @__cfq_exit_single_io_context(%struct.cfq_data*, %struct.cfq_io_context*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
