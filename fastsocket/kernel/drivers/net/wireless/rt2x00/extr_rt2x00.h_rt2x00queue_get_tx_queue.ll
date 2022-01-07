; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00.h_rt2x00queue_get_tx_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00.h_rt2x00queue_get_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32 }
%struct.rt2x00_dev = type { %struct.data_queue*, %struct.data_queue*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QID_ATIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.data_queue* (%struct.rt2x00_dev*, i32)* @rt2x00queue_get_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.data_queue*, align 8
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %8 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %6, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %15 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %14, i32 0, i32 1
  %16 = load %struct.data_queue*, %struct.data_queue** %15, align 8
  %17 = icmp ne %struct.data_queue* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %20 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %19, i32 0, i32 1
  %21 = load %struct.data_queue*, %struct.data_queue** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %21, i64 %23
  store %struct.data_queue* %24, %struct.data_queue** %3, align 8
  br label %34

25:                                               ; preds = %13, %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @QID_ATIM, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %31 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %30, i32 0, i32 0
  %32 = load %struct.data_queue*, %struct.data_queue** %31, align 8
  store %struct.data_queue* %32, %struct.data_queue** %3, align 8
  br label %34

33:                                               ; preds = %25
  store %struct.data_queue* null, %struct.data_queue** %3, align 8
  br label %34

34:                                               ; preds = %33, %29, %18
  %35 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  ret %struct.data_queue* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
