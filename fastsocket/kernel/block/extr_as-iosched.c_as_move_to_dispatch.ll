; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_move_to_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_move_to_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as_data = type { i64, i32, i32, i32*, i64, i32*, i64*, i32 }
%struct.request = type { i32 }
%struct.io_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ANTIC_OFF = common dso_local global i32 0, align 4
@BLK_RW_SYNC = common dso_local global i32 0, align 4
@AS_RQ_QUEUED = common dso_local global i64 0, align 8
@AS_RQ_DISPATCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.as_data*, %struct.request*)* @as_move_to_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as_move_to_dispatch(%struct.as_data* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.as_data*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.io_context*, align 8
  store %struct.as_data* %0, %struct.as_data** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %7 = load %struct.request*, %struct.request** %4, align 8
  %8 = call i32 @rq_is_sync(%struct.request* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.request*, %struct.request** %4, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 0
  %11 = call i32 @RB_EMPTY_NODE(i32* %10)
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.as_data*, %struct.as_data** %3, align 8
  %14 = call i32 @as_antic_stop(%struct.as_data* %13)
  %15 = load i32, i32* @ANTIC_OFF, align 4
  %16 = load %struct.as_data*, %struct.as_data** %3, align 8
  %17 = getelementptr inbounds %struct.as_data, %struct.as_data* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 8
  %18 = load %struct.request*, %struct.request** %4, align 8
  %19 = call i64 @blk_rq_pos(%struct.request* %18)
  %20 = load %struct.request*, %struct.request** %4, align 8
  %21 = call i64 @blk_rq_sectors(%struct.request* %20)
  %22 = add nsw i64 %19, %21
  %23 = load %struct.as_data*, %struct.as_data** %3, align 8
  %24 = getelementptr inbounds %struct.as_data, %struct.as_data* %23, i32 0, i32 6
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  store i64 %22, i64* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @BLK_RW_SYNC, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load %struct.request*, %struct.request** %4, align 8
  %34 = call %struct.io_context* @RQ_IOC(%struct.request* %33)
  store %struct.io_context* %34, %struct.io_context** %6, align 8
  %35 = load %struct.as_data*, %struct.as_data** %3, align 8
  %36 = getelementptr inbounds %struct.as_data, %struct.as_data* %35, i32 0, i32 5
  %37 = call i32 @copy_io_context(i32** %36, %struct.io_context** %6)
  br label %61

38:                                               ; preds = %2
  %39 = load %struct.as_data*, %struct.as_data** %3, align 8
  %40 = getelementptr inbounds %struct.as_data, %struct.as_data* %39, i32 0, i32 5
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.as_data*, %struct.as_data** %3, align 8
  %45 = getelementptr inbounds %struct.as_data, %struct.as_data* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @put_io_context(i32* %46)
  %48 = load %struct.as_data*, %struct.as_data** %3, align 8
  %49 = getelementptr inbounds %struct.as_data, %struct.as_data* %48, i32 0, i32 5
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %43, %38
  %51 = load %struct.as_data*, %struct.as_data** %3, align 8
  %52 = getelementptr inbounds %struct.as_data, %struct.as_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.as_data*, %struct.as_data** %3, align 8
  %57 = getelementptr inbounds %struct.as_data, %struct.as_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %55, %50
  br label %61

61:                                               ; preds = %60, %32
  %62 = load %struct.as_data*, %struct.as_data** %3, align 8
  %63 = getelementptr inbounds %struct.as_data, %struct.as_data* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = load %struct.as_data*, %struct.as_data** %3, align 8
  %65 = load %struct.request*, %struct.request** %4, align 8
  %66 = call i32 @as_find_next_rq(%struct.as_data* %64, %struct.request* %65)
  %67 = load %struct.as_data*, %struct.as_data** %3, align 8
  %68 = getelementptr inbounds %struct.as_data, %struct.as_data* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  %73 = load %struct.as_data*, %struct.as_data** %3, align 8
  %74 = getelementptr inbounds %struct.as_data, %struct.as_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.request*, %struct.request** %4, align 8
  %77 = call i32 @as_remove_queued_request(i32 %75, %struct.request* %76)
  %78 = load %struct.request*, %struct.request** %4, align 8
  %79 = call i64 @RQ_STATE(%struct.request* %78)
  %80 = load i64, i64* @AS_RQ_QUEUED, align 8
  %81 = icmp ne i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @WARN_ON(i32 %82)
  %84 = load %struct.as_data*, %struct.as_data** %3, align 8
  %85 = getelementptr inbounds %struct.as_data, %struct.as_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.request*, %struct.request** %4, align 8
  %88 = call i32 @elv_dispatch_sort(i32 %86, %struct.request* %87)
  %89 = load %struct.request*, %struct.request** %4, align 8
  %90 = load i32, i32* @AS_RQ_DISPATCHED, align 4
  %91 = call i32 @RQ_SET_STATE(%struct.request* %89, i32 %90)
  %92 = load %struct.request*, %struct.request** %4, align 8
  %93 = call %struct.io_context* @RQ_IOC(%struct.request* %92)
  %94 = icmp ne %struct.io_context* %93, null
  br i1 %94, label %95, label %108

95:                                               ; preds = %61
  %96 = load %struct.request*, %struct.request** %4, align 8
  %97 = call %struct.io_context* @RQ_IOC(%struct.request* %96)
  %98 = getelementptr inbounds %struct.io_context, %struct.io_context* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = icmp ne %struct.TYPE_2__* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load %struct.request*, %struct.request** %4, align 8
  %103 = call %struct.io_context* @RQ_IOC(%struct.request* %102)
  %104 = getelementptr inbounds %struct.io_context, %struct.io_context* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = call i32 @atomic_inc(i32* %106)
  br label %108

108:                                              ; preds = %101, %95, %61
  %109 = load %struct.as_data*, %struct.as_data** %3, align 8
  %110 = getelementptr inbounds %struct.as_data, %struct.as_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  ret void
}

declare dso_local i32 @rq_is_sync(%struct.request*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @as_antic_stop(%struct.as_data*) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i64 @blk_rq_sectors(%struct.request*) #1

declare dso_local %struct.io_context* @RQ_IOC(%struct.request*) #1

declare dso_local i32 @copy_io_context(i32**, %struct.io_context**) #1

declare dso_local i32 @put_io_context(i32*) #1

declare dso_local i32 @as_find_next_rq(%struct.as_data*, %struct.request*) #1

declare dso_local i32 @as_remove_queued_request(i32, %struct.request*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @RQ_STATE(%struct.request*) #1

declare dso_local i32 @elv_dispatch_sort(i32, %struct.request*) #1

declare dso_local i32 @RQ_SET_STATE(%struct.request*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
