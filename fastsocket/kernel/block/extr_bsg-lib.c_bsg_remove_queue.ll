; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg-lib.c_bsg_remove_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg-lib.c_bsg_remove_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.request = type { i32 }

@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bsg_remove_queue(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %5 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %6 = icmp ne %struct.request_queue* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %73

8:                                                ; preds = %1
  %9 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @spin_lock_irq(i32 %11)
  %13 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %14 = call i32 @blk_stop_queue(%struct.request_queue* %13)
  br label %15

15:                                               ; preds = %8, %64
  %16 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %17 = call %struct.request* @blk_fetch_request(%struct.request_queue* %16)
  store %struct.request* %17, %struct.request** %3, align 8
  %18 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %19 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %25 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %23, %29
  %31 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %32 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %30, %36
  %38 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %39 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %37, %43
  store i32 %44, i32* %4, align 4
  %45 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %46 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @spin_unlock_irq(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %15
  br label %70

52:                                               ; preds = %15
  %53 = load %struct.request*, %struct.request** %3, align 8
  %54 = icmp ne %struct.request* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i32, i32* @ENXIO, align 4
  %57 = sub nsw i32 0, %56
  %58 = load %struct.request*, %struct.request** %3, align 8
  %59 = getelementptr inbounds %struct.request, %struct.request* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.request*, %struct.request** %3, align 8
  %61 = load i32, i32* @ENXIO, align 4
  %62 = sub nsw i32 0, %61
  %63 = call i32 @blk_end_request_all(%struct.request* %60, i32 %62)
  br label %64

64:                                               ; preds = %55, %52
  %65 = call i32 @msleep(i32 200)
  %66 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %67 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @spin_lock_irq(i32 %68)
  br label %15

70:                                               ; preds = %51
  %71 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %72 = call i32 @bsg_unregister_queue(%struct.request_queue* %71)
  br label %73

73:                                               ; preds = %70, %7
  ret void
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @blk_stop_queue(%struct.request_queue*) #1

declare dso_local %struct.request* @blk_fetch_request(%struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @blk_end_request_all(%struct.request*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @bsg_unregister_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
