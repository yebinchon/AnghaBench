; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_remove_queued_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_remove_queued_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.as_data* }
%struct.as_data = type { %struct.request** }
%struct.request = type { i32 }
%struct.io_context = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@AS_RQ_QUEUED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.request*)* @as_remove_queued_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as_remove_queued_request(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.as_data*, align 8
  %7 = alloca %struct.io_context*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %8 = load %struct.request*, %struct.request** %4, align 8
  %9 = call i32 @rq_is_sync(%struct.request* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %11 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.as_data*, %struct.as_data** %13, align 8
  store %struct.as_data* %14, %struct.as_data** %6, align 8
  %15 = load %struct.request*, %struct.request** %4, align 8
  %16 = call i64 @RQ_STATE(%struct.request* %15)
  %17 = load i64, i64* @AS_RQ_QUEUED, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.request*, %struct.request** %4, align 8
  %22 = call %struct.io_context* @RQ_IOC(%struct.request* %21)
  store %struct.io_context* %22, %struct.io_context** %7, align 8
  %23 = load %struct.io_context*, %struct.io_context** %7, align 8
  %24 = icmp ne %struct.io_context* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %2
  %26 = load %struct.io_context*, %struct.io_context** %7, align 8
  %27 = getelementptr inbounds %struct.io_context, %struct.io_context* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.io_context*, %struct.io_context** %7, align 8
  %32 = getelementptr inbounds %struct.io_context, %struct.io_context* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @atomic_read(i32* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.io_context*, %struct.io_context** %7, align 8
  %41 = getelementptr inbounds %struct.io_context, %struct.io_context* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @atomic_dec(i32* %43)
  br label %45

45:                                               ; preds = %30, %25, %2
  %46 = load %struct.as_data*, %struct.as_data** %6, align 8
  %47 = getelementptr inbounds %struct.as_data, %struct.as_data* %46, i32 0, i32 0
  %48 = load %struct.request**, %struct.request*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.request*, %struct.request** %48, i64 %50
  %52 = load %struct.request*, %struct.request** %51, align 8
  %53 = load %struct.request*, %struct.request** %4, align 8
  %54 = icmp eq %struct.request* %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %45
  %56 = load %struct.as_data*, %struct.as_data** %6, align 8
  %57 = load %struct.request*, %struct.request** %4, align 8
  %58 = call %struct.request* @as_find_next_rq(%struct.as_data* %56, %struct.request* %57)
  %59 = load %struct.as_data*, %struct.as_data** %6, align 8
  %60 = getelementptr inbounds %struct.as_data, %struct.as_data* %59, i32 0, i32 0
  %61 = load %struct.request**, %struct.request*** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.request*, %struct.request** %61, i64 %63
  store %struct.request* %58, %struct.request** %64, align 8
  br label %65

65:                                               ; preds = %55, %45
  %66 = load %struct.request*, %struct.request** %4, align 8
  %67 = call i32 @rq_fifo_clear(%struct.request* %66)
  %68 = load %struct.as_data*, %struct.as_data** %6, align 8
  %69 = load %struct.request*, %struct.request** %4, align 8
  %70 = call i32 @as_del_rq_rb(%struct.as_data* %68, %struct.request* %69)
  ret void
}

declare dso_local i32 @rq_is_sync(%struct.request*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @RQ_STATE(%struct.request*) #1

declare dso_local %struct.io_context* @RQ_IOC(%struct.request*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.request* @as_find_next_rq(%struct.as_data*, %struct.request*) #1

declare dso_local i32 @rq_fifo_clear(%struct.request*) #1

declare dso_local i32 @as_del_rq_rb(%struct.as_data*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
