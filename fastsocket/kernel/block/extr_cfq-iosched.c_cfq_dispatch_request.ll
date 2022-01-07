; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_dispatch_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_dispatch_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { %struct.cfq_io_context*, i32 }
%struct.cfq_io_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cfq_queue = type { %struct.request*, i32 }
%struct.request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfq_data*, %struct.cfq_queue*)* @cfq_dispatch_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfq_dispatch_request(%struct.cfq_data* %0, %struct.cfq_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfq_data*, align 8
  %5 = alloca %struct.cfq_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.cfq_io_context*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %4, align 8
  store %struct.cfq_queue* %1, %struct.cfq_queue** %5, align 8
  %8 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %9 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %8, i32 0, i32 1
  %10 = call i32 @RB_EMPTY_ROOT(i32* %9)
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %13 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %14 = call i32 @cfq_may_dispatch(%struct.cfq_data* %12, %struct.cfq_queue* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

17:                                               ; preds = %2
  %18 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %19 = call %struct.request* @cfq_check_fifo(%struct.cfq_queue* %18)
  store %struct.request* %19, %struct.request** %6, align 8
  %20 = load %struct.request*, %struct.request** %6, align 8
  %21 = icmp ne %struct.request* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %24 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %23, i32 0, i32 0
  %25 = load %struct.request*, %struct.request** %24, align 8
  store %struct.request* %25, %struct.request** %6, align 8
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %28 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.request*, %struct.request** %6, align 8
  %31 = call i32 @cfq_dispatch_insert(i32 %29, %struct.request* %30)
  %32 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %33 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %32, i32 0, i32 0
  %34 = load %struct.cfq_io_context*, %struct.cfq_io_context** %33, align 8
  %35 = icmp ne %struct.cfq_io_context* %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %26
  %37 = load %struct.request*, %struct.request** %6, align 8
  %38 = call %struct.cfq_io_context* @RQ_CIC(%struct.request* %37)
  store %struct.cfq_io_context* %38, %struct.cfq_io_context** %7, align 8
  %39 = load %struct.cfq_io_context*, %struct.cfq_io_context** %7, align 8
  %40 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @atomic_long_inc(i32* %42)
  %44 = load %struct.cfq_io_context*, %struct.cfq_io_context** %7, align 8
  %45 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %46 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %45, i32 0, i32 0
  store %struct.cfq_io_context* %44, %struct.cfq_io_context** %46, align 8
  br label %47

47:                                               ; preds = %36, %26
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %16
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @cfq_may_dispatch(%struct.cfq_data*, %struct.cfq_queue*) #1

declare dso_local %struct.request* @cfq_check_fifo(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_dispatch_insert(i32, %struct.request*) #1

declare dso_local %struct.cfq_io_context* @RQ_CIC(%struct.request*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
