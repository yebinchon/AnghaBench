; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_do_blkif_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_do_blkif_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.blkfront_info = type { i32 }
%struct.request = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.blkfront_info* }

@.str = private unnamed_addr constant [26 x i8] c"Entered do_blkif_request\0A\00", align 1
@REQ_TYPE_FS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"do_blk_req %p: cmd %p, sec %lx, (%u/%u) buffer:%p [%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @do_blkif_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_blkif_request(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.blkfront_info*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  store %struct.blkfront_info* null, %struct.blkfront_info** %3, align 8
  %6 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %65, %30, %1
  %8 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %9 = call %struct.request* @blk_peek_request(%struct.request_queue* %8)
  store %struct.request* %9, %struct.request** %4, align 8
  %10 = icmp ne %struct.request* %9, null
  br i1 %10, label %11, label %68

11:                                               ; preds = %7
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.blkfront_info*, %struct.blkfront_info** %15, align 8
  store %struct.blkfront_info* %16, %struct.blkfront_info** %3, align 8
  %17 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %18 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %17, i32 0, i32 0
  %19 = call i64 @RING_FULL(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %62

22:                                               ; preds = %11
  %23 = load %struct.request*, %struct.request** %4, align 8
  %24 = call i32 @blk_start_request(%struct.request* %23)
  %25 = load %struct.request*, %struct.request** %4, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @REQ_TYPE_FS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.request*, %struct.request** %4, align 8
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32 @__blk_end_request_all(%struct.request* %31, i32 %33)
  br label %7

35:                                               ; preds = %22
  %36 = load %struct.request*, %struct.request** %4, align 8
  %37 = load %struct.request*, %struct.request** %4, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.request*, %struct.request** %4, align 8
  %41 = call i64 @blk_rq_pos(%struct.request* %40)
  %42 = load %struct.request*, %struct.request** %4, align 8
  %43 = call i32 @blk_rq_cur_sectors(%struct.request* %42)
  %44 = load %struct.request*, %struct.request** %4, align 8
  %45 = call i32 @blk_rq_sectors(%struct.request* %44)
  %46 = load %struct.request*, %struct.request** %4, align 8
  %47 = getelementptr inbounds %struct.request, %struct.request* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.request*, %struct.request** %4, align 8
  %50 = call i64 @rq_data_dir(%struct.request* %49)
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %54 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), %struct.request* %36, i32 %39, i64 %41, i32 %43, i32 %45, i32 %48, i8* %53)
  %55 = load %struct.request*, %struct.request** %4, align 8
  %56 = call i64 @blkif_queue_request(%struct.request* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %35
  %59 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %60 = load %struct.request*, %struct.request** %4, align 8
  %61 = call i32 @blk_requeue_request(%struct.request_queue* %59, %struct.request* %60)
  br label %62

62:                                               ; preds = %58, %21
  %63 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %64 = call i32 @blk_stop_queue(%struct.request_queue* %63)
  br label %68

65:                                               ; preds = %35
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %7

68:                                               ; preds = %62, %7
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %73 = call i32 @flush_requests(%struct.blkfront_info* %72)
  br label %74

74:                                               ; preds = %71, %68
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.request* @blk_peek_request(%struct.request_queue*) #1

declare dso_local i64 @RING_FULL(i32*) #1

declare dso_local i32 @blk_start_request(%struct.request*) #1

declare dso_local i32 @__blk_end_request_all(%struct.request*, i32) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_cur_sectors(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @blkif_queue_request(%struct.request*) #1

declare dso_local i32 @blk_requeue_request(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @blk_stop_queue(%struct.request_queue*) #1

declare dso_local i32 @flush_requests(%struct.blkfront_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
