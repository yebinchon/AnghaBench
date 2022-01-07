; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ptp/extr_ptp_private.h_queue_cnt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ptp/extr_ptp_private.h_queue_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timestamp_event_queue = type { i32, i32 }

@PTP_MAX_TIMESTAMPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timestamp_event_queue*)* @queue_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_cnt(%struct.timestamp_event_queue* %0) #0 {
  %2 = alloca %struct.timestamp_event_queue*, align 8
  %3 = alloca i32, align 4
  store %struct.timestamp_event_queue* %0, %struct.timestamp_event_queue** %2, align 8
  %4 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %2, align 8
  %5 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %2, align 8
  %8 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %6, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @PTP_MAX_TIMESTAMPS, align 4
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %14, %15
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i32 [ %16, %13 ], [ %18, %17 ]
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
