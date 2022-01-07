; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pf.c_do_pf_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pf.c_do_pf_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.request_queue = type { i32 }

@pf_busy = common dso_local global i32 0, align 4
@pf_req = common dso_local global %struct.TYPE_9__* null, align 8
@pf_current = common dso_local global %struct.TYPE_10__* null, align 8
@pf_block = common dso_local global i64 0, align 8
@pf_run = common dso_local global i32 0, align 4
@pf_count = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@pf_cmd = common dso_local global i64 0, align 8
@pf_buf = common dso_local global i32 0, align 4
@pf_retries = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8
@do_pf_read = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@do_pf_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @do_pf_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_pf_request(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %3 = load i32, i32* @pf_busy, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %71

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %66, %37, %6
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pf_req, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %12 = call %struct.TYPE_9__* @blk_fetch_request(%struct.request_queue* %11)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** @pf_req, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pf_req, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %71

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %7
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pf_req, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** @pf_current, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pf_req, align 8
  %24 = call i64 @blk_rq_pos(%struct.TYPE_9__* %23)
  store i64 %24, i64* @pf_block, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pf_req, align 8
  %26 = call i32 @blk_rq_sectors(%struct.TYPE_9__* %25)
  store i32 %26, i32* @pf_run, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pf_req, align 8
  %28 = call i64 @blk_rq_cur_sectors(%struct.TYPE_9__* %27)
  store i64 %28, i64* @pf_count, align 8
  %29 = load i64, i64* @pf_block, align 8
  %30 = load i64, i64* @pf_count, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pf_req, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = call i64 @get_capacity(%struct.TYPE_11__* %34)
  %36 = icmp sgt i64 %31, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %17
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  %40 = call i32 @pf_end_request(i32 %39)
  br label %7

41:                                               ; preds = %17
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pf_req, align 8
  %43 = call i64 @rq_data_dir(%struct.TYPE_9__* %42)
  store i64 %43, i64* @pf_cmd, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pf_req, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* @pf_buf, align 4
  store i64 0, i64* @pf_retries, align 8
  store i32 1, i32* @pf_busy, align 4
  %47 = load i64, i64* @pf_cmd, align 8
  %48 = load i64, i64* @READ, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pf_current, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @do_pf_read, align 4
  %55 = call i32 @pi_do_claimed(i32 %53, i32 %54)
  br label %71

56:                                               ; preds = %41
  %57 = load i64, i64* @pf_cmd, align 8
  %58 = load i64, i64* @WRITE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pf_current, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @do_pf_write, align 4
  %65 = call i32 @pi_do_claimed(i32 %63, i32 %64)
  br label %70

66:                                               ; preds = %56
  store i32 0, i32* @pf_busy, align 4
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  %69 = call i32 @pf_end_request(i32 %68)
  br label %7

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %5, %15, %70, %50
  ret void
}

declare dso_local %struct.TYPE_9__* @blk_fetch_request(%struct.request_queue*) #1

declare dso_local i64 @blk_rq_pos(%struct.TYPE_9__*) #1

declare dso_local i32 @blk_rq_sectors(%struct.TYPE_9__*) #1

declare dso_local i64 @blk_rq_cur_sectors(%struct.TYPE_9__*) #1

declare dso_local i64 @get_capacity(%struct.TYPE_11__*) #1

declare dso_local i32 @pf_end_request(i32) #1

declare dso_local i64 @rq_data_dir(%struct.TYPE_9__*) #1

declare dso_local i32 @pi_do_claimed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
