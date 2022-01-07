; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_index_inc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_index_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32, %struct.data_queue* }
%struct.data_queue = type { i64*, i64, i32, i32, i32, i32 }

@Q_INDEX_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Index change on invalid index type (%d)\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@Q_INDEX = common dso_local global i32 0, align 4
@Q_INDEX_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00queue_index_inc(%struct.queue_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.data_queue*, align 8
  %6 = alloca i64, align 8
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %8 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %7, i32 0, i32 1
  %9 = load %struct.data_queue*, %struct.data_queue** %8, align 8
  store %struct.data_queue* %9, %struct.data_queue** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @Q_INDEX_MAX, align 4
  %12 = icmp uge i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %18 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @rt2x00_err(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %84

22:                                               ; preds = %2
  %23 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %24 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %23, i32 0, i32 2
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %28 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %36 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %43 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %41, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %22
  %47 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %48 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %46, %22
  %54 = load i32, i32* @jiffies, align 4
  %55 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %56 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @Q_INDEX, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %62 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %79

65:                                               ; preds = %53
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @Q_INDEX_DONE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %71 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %75 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %69, %65
  br label %79

79:                                               ; preds = %78, %60
  %80 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %81 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %80, i32 0, i32 2
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  br label %84

84:                                               ; preds = %79, %16
  ret void
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
