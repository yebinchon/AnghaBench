; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk.h_elv_deactivate_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk.h_elv_deactivate_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.elevator_queue* }
%struct.elevator_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.request_queue*, %struct.request*)* }
%struct.request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.request*)* @elv_deactivate_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elv_deactivate_rq(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.elevator_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 0
  %8 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  store %struct.elevator_queue* %8, %struct.elevator_queue** %5, align 8
  %9 = load %struct.elevator_queue*, %struct.elevator_queue** %5, align 8
  %10 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.request_queue*, %struct.request*)*, i32 (%struct.request_queue*, %struct.request*)** %12, align 8
  %14 = icmp ne i32 (%struct.request_queue*, %struct.request*)* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.elevator_queue*, %struct.elevator_queue** %5, align 8
  %17 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.request_queue*, %struct.request*)*, i32 (%struct.request_queue*, %struct.request*)** %19, align 8
  %21 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %22 = load %struct.request*, %struct.request** %4, align 8
  %23 = call i32 %20(%struct.request_queue* %21, %struct.request* %22)
  br label %24

24:                                               ; preds = %15, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
