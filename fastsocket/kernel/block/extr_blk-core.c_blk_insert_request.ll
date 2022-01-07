; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_insert_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_insert_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i8*, i32 }

@ELEVATOR_INSERT_FRONT = common dso_local global i32 0, align 4
@ELEVATOR_INSERT_BACK = common dso_local global i32 0, align 4
@REQ_TYPE_SPECIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_insert_request(%struct.request_queue* %0, %struct.request* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @ELEVATOR_INSERT_FRONT, align 4
  br label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @ELEVATOR_INSERT_BACK, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @REQ_TYPE_SPECIAL, align 4
  %20 = load %struct.request*, %struct.request** %6, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.request*, %struct.request** %6, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %26 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_lock_irqsave(i32 %27, i64 %28)
  %30 = load %struct.request*, %struct.request** %6, align 8
  %31 = call i64 @blk_rq_tagged(%struct.request* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %17
  %34 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %35 = load %struct.request*, %struct.request** %6, align 8
  %36 = call i32 @blk_queue_end_tag(%struct.request_queue* %34, %struct.request* %35)
  br label %37

37:                                               ; preds = %33, %17
  %38 = load %struct.request*, %struct.request** %6, align 8
  %39 = call i32 @drive_stat_acct(%struct.request* %38, i32 1)
  %40 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %41 = load %struct.request*, %struct.request** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @__elv_add_request(%struct.request_queue* %40, %struct.request* %41, i32 %42, i32 0)
  %44 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %45 = call i32 @__blk_run_queue(%struct.request_queue* %44)
  %46 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %47 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32 %48, i64 %49)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @blk_rq_tagged(%struct.request*) #1

declare dso_local i32 @blk_queue_end_tag(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @drive_stat_acct(%struct.request*, i32) #1

declare dso_local i32 @__elv_add_request(%struct.request_queue*, %struct.request*, i32, i32) #1

declare dso_local i32 @__blk_run_queue(%struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
