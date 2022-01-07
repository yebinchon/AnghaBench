; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_may_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_may_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.as_data* }
%struct.as_data = type { i64, %struct.io_context* }
%struct.io_context = type { i32 }

@ELV_MQUEUE_MAY = common dso_local global i32 0, align 4
@ANTIC_WAIT_REQ = common dso_local global i64 0, align 8
@ANTIC_WAIT_NEXT = common dso_local global i64 0, align 8
@ELV_MQUEUE_MUST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, i32)* @as_may_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as_may_queue(%struct.request_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.as_data*, align 8
  %7 = alloca %struct.io_context*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @ELV_MQUEUE_MAY, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.as_data*, %struct.as_data** %12, align 8
  store %struct.as_data* %13, %struct.as_data** %6, align 8
  %14 = load %struct.as_data*, %struct.as_data** %6, align 8
  %15 = getelementptr inbounds %struct.as_data, %struct.as_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ANTIC_WAIT_REQ, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.as_data*, %struct.as_data** %6, align 8
  %21 = getelementptr inbounds %struct.as_data, %struct.as_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ANTIC_WAIT_NEXT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19, %2
  %26 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %27 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.io_context* @as_get_io_context(i32 %28)
  store %struct.io_context* %29, %struct.io_context** %7, align 8
  %30 = load %struct.as_data*, %struct.as_data** %6, align 8
  %31 = getelementptr inbounds %struct.as_data, %struct.as_data* %30, i32 0, i32 1
  %32 = load %struct.io_context*, %struct.io_context** %31, align 8
  %33 = load %struct.io_context*, %struct.io_context** %7, align 8
  %34 = icmp eq %struct.io_context* %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @ELV_MQUEUE_MUST, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %25
  %38 = load %struct.io_context*, %struct.io_context** %7, align 8
  %39 = call i32 @put_io_context(%struct.io_context* %38)
  br label %40

40:                                               ; preds = %37, %19
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.io_context* @as_get_io_context(i32) #1

declare dso_local i32 @put_io_context(%struct.io_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
