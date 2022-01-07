; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_insert_cloned_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_insert_cloned_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ELEVATOR_INSERT_BACK = common dso_local global i32 0, align 4
@fail_make_request = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_insert_cloned_request(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i64, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %8 = load %struct.request*, %struct.request** %5, align 8
  %9 = call i64 @blk_rq_check_limits(%struct.request_queue* %7, %struct.request* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %47

14:                                               ; preds = %2
  %15 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %16 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32 %17, i64 %18)
  %20 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %21 = call i32 @blk_queue_dead(%struct.request_queue* %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %14
  %25 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %26 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32 %27, i64 %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %47

32:                                               ; preds = %14
  %33 = load %struct.request*, %struct.request** %5, align 8
  %34 = call i32 @blk_queued_rq(%struct.request* %33)
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.request*, %struct.request** %5, align 8
  %37 = call i32 @drive_stat_acct(%struct.request* %36, i32 1)
  %38 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %39 = load %struct.request*, %struct.request** %5, align 8
  %40 = load i32, i32* @ELEVATOR_INSERT_BACK, align 4
  %41 = call i32 @__elv_add_request(%struct.request_queue* %38, %struct.request* %39, i32 %40, i32 0)
  %42 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %43 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32 %44, i64 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %32, %24, %11
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @blk_rq_check_limits(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blk_queue_dead(%struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blk_queued_rq(%struct.request*) #1

declare dso_local i32 @drive_stat_acct(%struct.request*, i32) #1

declare dso_local i32 @__elv_add_request(%struct.request_queue*, %struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
