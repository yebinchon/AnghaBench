; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, i64*, i64, i64 }

@Q_INDEX_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data_queue*)* @rt2x00queue_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00queue_reset(%struct.data_queue* %0) #0 {
  %2 = alloca %struct.data_queue*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.data_queue* %0, %struct.data_queue** %2, align 8
  %5 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %6 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %10 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %12 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %24, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @Q_INDEX_MAX, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %19 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %13

27:                                               ; preds = %13
  %28 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %29 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %28, i32 0, i32 0
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
