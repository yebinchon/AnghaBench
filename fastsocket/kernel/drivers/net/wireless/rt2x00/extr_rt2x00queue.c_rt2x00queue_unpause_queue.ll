; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_unpause_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_unpause_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.data_queue*)* }

@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@QUEUE_STARTED = common dso_local global i32 0, align 4
@QUEUE_PAUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00queue_unpause_queue(%struct.data_queue* %0) #0 {
  %2 = alloca %struct.data_queue*, align 8
  store %struct.data_queue* %0, %struct.data_queue** %2, align 8
  %3 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %4 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %5 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %4, i32 0, i32 1
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %8 = call i32 @test_bit(i32 %3, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load i32, i32* @QUEUE_STARTED, align 4
  %12 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %13 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %12, i32 0, i32 2
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load i32, i32* @QUEUE_PAUSED, align 4
  %18 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %19 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %18, i32 0, i32 2
  %20 = call i32 @test_and_clear_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %10, %1
  br label %50

23:                                               ; preds = %16
  %24 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %25 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %49 [
    i32 129, label %27
    i32 130, label %27
    i32 132, label %27
    i32 131, label %27
    i32 128, label %37
  ]

27:                                               ; preds = %23, %23, %23, %23
  %28 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %29 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %34 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ieee80211_wake_queue(i32 %32, i32 %35)
  br label %50

37:                                               ; preds = %23
  %38 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %39 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (%struct.data_queue*)*, i32 (%struct.data_queue*)** %45, align 8
  %47 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %48 = call i32 %46(%struct.data_queue* %47)
  br label %49

49:                                               ; preds = %23, %37
  br label %50

50:                                               ; preds = %22, %49, %27
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_wake_queue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
