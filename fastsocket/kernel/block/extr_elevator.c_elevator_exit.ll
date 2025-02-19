; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elevator_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elevator_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elevator_queue = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.elevator_queue*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elevator_exit(%struct.elevator_queue* %0) #0 {
  %2 = alloca %struct.elevator_queue*, align 8
  store %struct.elevator_queue* %0, %struct.elevator_queue** %2, align 8
  %3 = load %struct.elevator_queue*, %struct.elevator_queue** %2, align 8
  %4 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.elevator_queue*, %struct.elevator_queue** %2, align 8
  %7 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.elevator_queue*)*, i32 (%struct.elevator_queue*)** %9, align 8
  %11 = icmp ne i32 (%struct.elevator_queue*)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.elevator_queue*, %struct.elevator_queue** %2, align 8
  %14 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.elevator_queue*)*, i32 (%struct.elevator_queue*)** %16, align 8
  %18 = load %struct.elevator_queue*, %struct.elevator_queue** %2, align 8
  %19 = call i32 %17(%struct.elevator_queue* %18)
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.elevator_queue*, %struct.elevator_queue** %2, align 8
  %22 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %21, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %22, align 8
  %23 = load %struct.elevator_queue*, %struct.elevator_queue** %2, align 8
  %24 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %23, i32 0, i32 1
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load %struct.elevator_queue*, %struct.elevator_queue** %2, align 8
  %27 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %26, i32 0, i32 0
  %28 = call i32 @kobject_put(i32* %27)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
