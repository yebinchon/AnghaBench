; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_get_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32 }
%struct.data_queue = type { i64*, i32, %struct.queue_entry*, i32 }

@Q_INDEX_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Entry requested from invalid index type (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.data_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.queue_entry*, align 8
  %7 = alloca i64, align 8
  store %struct.data_queue* %0, %struct.data_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @Q_INDEX_MAX, align 4
  %10 = icmp uge i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %16 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @rt2x00_err(i32 %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %18)
  store %struct.queue_entry* null, %struct.queue_entry** %3, align 8
  br label %41

20:                                               ; preds = %2
  %21 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %22 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %21, i32 0, i32 1
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %26 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %25, i32 0, i32 2
  %27 = load %struct.queue_entry*, %struct.queue_entry** %26, align 8
  %28 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %29 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %27, i64 %34
  store %struct.queue_entry* %35, %struct.queue_entry** %6, align 8
  %36 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %37 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %36, i32 0, i32 1
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.queue_entry*, %struct.queue_entry** %6, align 8
  store %struct.queue_entry* %40, %struct.queue_entry** %3, align 8
  br label %41

41:                                               ; preds = %20, %14
  %42 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  ret %struct.queue_entry* %42
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00_err(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
