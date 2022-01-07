; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elv_quiesce_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elv_quiesce_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, i32 }

@QUEUE_FLAG_ELVSWITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elv_quiesce_start(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %3 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %4 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %22

8:                                                ; preds = %1
  %9 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @spin_lock_irq(i32 %11)
  %13 = load i32, i32* @QUEUE_FLAG_ELVSWITCH, align 4
  %14 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %15 = call i32 @queue_flag_set(i32 %13, %struct.request_queue* %14)
  %16 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %17 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @spin_unlock_irq(i32 %18)
  %20 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %21 = call i32 @blk_drain_queue(%struct.request_queue* %20, i32 0)
  br label %22

22:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @blk_drain_queue(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
