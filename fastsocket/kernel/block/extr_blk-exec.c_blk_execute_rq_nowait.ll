; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-exec.c_blk_execute_rq_nowait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-exec.c_blk_execute_rq_nowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, i32 (%struct.request_queue*)* }
%struct.gendisk = type { i32 }
%struct.request = type { i64, i32, i32, i32*, %struct.gendisk* }

@ELEVATOR_INSERT_FRONT = common dso_local global i32 0, align 4
@ELEVATOR_INSERT_BACK = common dso_local global i32 0, align 4
@REQ_QUIET = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@REQ_TYPE_PM_RESUME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_execute_rq_nowait(%struct.request_queue* %0, %struct.gendisk* %1, %struct.request* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store %struct.gendisk* %1, %struct.gendisk** %7, align 8
  store %struct.request* %2, %struct.request** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = load i32, i32* @ELEVATOR_INSERT_FRONT, align 4
  br label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @ELEVATOR_INSERT_BACK, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %11, align 4
  %20 = call i32 (...) @irqs_disabled()
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %23 = load %struct.request*, %struct.request** %8, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 4
  store %struct.gendisk* %22, %struct.gendisk** %24, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load %struct.request*, %struct.request** %8, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 3
  store i32* %25, i32** %27, align 8
  %28 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %29 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @spin_lock_irq(i32 %30)
  %32 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %33 = call i32 @blk_queue_dead(%struct.request_queue* %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %18
  %37 = load i32, i32* @REQ_QUIET, align 4
  %38 = load %struct.request*, %struct.request** %8, align 8
  %39 = getelementptr inbounds %struct.request, %struct.request* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  %44 = load %struct.request*, %struct.request** %8, align 8
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.request*, %struct.request** %8, align 8
  %47 = load %struct.request*, %struct.request** %8, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @__blk_end_request_all(%struct.request* %46, i32 %49)
  %51 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %52 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @spin_unlock_irq(i32 %53)
  br label %78

55:                                               ; preds = %18
  %56 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %57 = load %struct.request*, %struct.request** %8, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @__elv_add_request(%struct.request_queue* %56, %struct.request* %57, i32 %58, i32 1)
  %60 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %61 = call i32 @__generic_unplug_device(%struct.request_queue* %60)
  %62 = load %struct.request*, %struct.request** %8, align 8
  %63 = getelementptr inbounds %struct.request, %struct.request* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @REQ_TYPE_PM_RESUME, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %55
  %68 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %69 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %68, i32 0, i32 1
  %70 = load i32 (%struct.request_queue*)*, i32 (%struct.request_queue*)** %69, align 8
  %71 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %72 = call i32 %70(%struct.request_queue* %71)
  br label %73

73:                                               ; preds = %67, %55
  %74 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %75 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @spin_unlock_irq(i32 %76)
  br label %78

78:                                               ; preds = %73, %36
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blk_queue_dead(%struct.request_queue*) #1

declare dso_local i32 @__blk_end_request_all(%struct.request*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @__elv_add_request(%struct.request_queue*, %struct.request*, i32, i32) #1

declare dso_local i32 @__generic_unplug_device(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
