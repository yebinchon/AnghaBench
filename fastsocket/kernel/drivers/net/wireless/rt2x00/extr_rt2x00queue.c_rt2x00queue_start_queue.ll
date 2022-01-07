; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_start_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_start_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.data_queue*)* }

@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@QUEUE_STARTED = common dso_local global i32 0, align 4
@QUEUE_PAUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00queue_start_queue(%struct.data_queue* %0) #0 {
  %2 = alloca %struct.data_queue*, align 8
  store %struct.data_queue* %0, %struct.data_queue** %2, align 8
  %3 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %4 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %7 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %8 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = call i32 @test_bit(i32 %6, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @QUEUE_STARTED, align 4
  %15 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %16 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %15, i32 0, i32 2
  %17 = call i64 @test_and_set_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13, %1
  %20 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %21 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  br label %44

23:                                               ; preds = %13
  %24 = load i32, i32* @QUEUE_PAUSED, align 4
  %25 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %26 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %25, i32 0, i32 2
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  %28 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %29 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.data_queue*)*, i32 (%struct.data_queue*)** %35, align 8
  %37 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %38 = call i32 %36(%struct.data_queue* %37)
  %39 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %40 = call i32 @rt2x00queue_unpause_queue(%struct.data_queue* %39)
  %41 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %42 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  br label %44

44:                                               ; preds = %23, %19
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rt2x00queue_unpause_queue(%struct.data_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
