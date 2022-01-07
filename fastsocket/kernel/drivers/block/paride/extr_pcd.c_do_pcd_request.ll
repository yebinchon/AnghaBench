; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_do_pcd_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_do_pcd_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.pcd_unit* }
%struct.pcd_unit = type { i32 }
%struct.request_queue = type { i32 }

@pcd_busy = common dso_local global i32 0, align 4
@pcd_req = common dso_local global %struct.TYPE_9__* null, align 8
@READ = common dso_local global i64 0, align 8
@pcd_current = common dso_local global %struct.pcd_unit* null, align 8
@pcd_bufblk = common dso_local global i32 0, align 4
@pcd_sector = common dso_local global i32 0, align 4
@pcd_count = common dso_local global i32 0, align 4
@pcd_buf = common dso_local global i32 0, align 4
@do_pcd_read = common dso_local global i32 0, align 4
@nice = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @do_pcd_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_pcd_request(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.pcd_unit*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %4 = load i32, i32* @pcd_busy, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %51

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7, %50
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pcd_req, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %13 = call %struct.TYPE_9__* @blk_fetch_request(%struct.request_queue* %12)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** @pcd_req, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pcd_req, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %51

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17, %8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pcd_req, align 8
  %20 = call i64 @rq_data_dir(%struct.TYPE_9__* %19)
  %21 = load i64, i64* @READ, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %18
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pcd_req, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.pcd_unit*, %struct.pcd_unit** %27, align 8
  store %struct.pcd_unit* %28, %struct.pcd_unit** %3, align 8
  %29 = load %struct.pcd_unit*, %struct.pcd_unit** %3, align 8
  %30 = load %struct.pcd_unit*, %struct.pcd_unit** @pcd_current, align 8
  %31 = icmp ne %struct.pcd_unit* %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 -1, i32* @pcd_bufblk, align 4
  br label %33

33:                                               ; preds = %32, %23
  %34 = load %struct.pcd_unit*, %struct.pcd_unit** %3, align 8
  store %struct.pcd_unit* %34, %struct.pcd_unit** @pcd_current, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pcd_req, align 8
  %36 = call i32 @blk_rq_pos(%struct.TYPE_9__* %35)
  store i32 %36, i32* @pcd_sector, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pcd_req, align 8
  %38 = call i32 @blk_rq_cur_sectors(%struct.TYPE_9__* %37)
  store i32 %38, i32* @pcd_count, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pcd_req, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* @pcd_buf, align 4
  store i32 1, i32* @pcd_busy, align 4
  %42 = load i32, i32* @do_pcd_read, align 4
  %43 = load i32, i32* @nice, align 4
  %44 = call i32 @ps_set_intr(i32 %42, i32* null, i32 0, i32 %43)
  br label %51

45:                                               ; preds = %18
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pcd_req, align 8
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  %49 = call i32 @__blk_end_request_all(%struct.TYPE_9__* %46, i32 %48)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** @pcd_req, align 8
  br label %50

50:                                               ; preds = %45
  br label %8

51:                                               ; preds = %33, %16, %6
  ret void
}

declare dso_local %struct.TYPE_9__* @blk_fetch_request(%struct.request_queue*) #1

declare dso_local i64 @rq_data_dir(%struct.TYPE_9__*) #1

declare dso_local i32 @blk_rq_pos(%struct.TYPE_9__*) #1

declare dso_local i32 @blk_rq_cur_sectors(%struct.TYPE_9__*) #1

declare dso_local i32 @ps_set_intr(i32, i32*, i32, i32) #1

declare dso_local i32 @__blk_end_request_all(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
