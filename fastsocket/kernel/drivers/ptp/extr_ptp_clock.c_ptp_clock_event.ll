; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ptp/extr_ptp_clock.c_ptp_clock_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ptp/extr_ptp_clock.c_ptp_clock_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_clock = type { i32, i32, i32 }
%struct.ptp_clock_event = type { i32, %struct.pps_event_time }
%struct.pps_event_time = type { i32 }

@PTP_PPS_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ptp_clock_event(%struct.ptp_clock* %0, %struct.ptp_clock_event* %1) #0 {
  %3 = alloca %struct.ptp_clock*, align 8
  %4 = alloca %struct.ptp_clock_event*, align 8
  %5 = alloca %struct.pps_event_time, align 4
  store %struct.ptp_clock* %0, %struct.ptp_clock** %3, align 8
  store %struct.ptp_clock_event* %1, %struct.ptp_clock_event** %4, align 8
  %6 = load %struct.ptp_clock_event*, %struct.ptp_clock_event** %4, align 8
  %7 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %33 [
    i32 131, label %9
    i32 130, label %10
    i32 129, label %18
    i32 128, label %25
  ]

9:                                                ; preds = %2
  br label %33

10:                                               ; preds = %2
  %11 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %12 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %11, i32 0, i32 2
  %13 = load %struct.ptp_clock_event*, %struct.ptp_clock_event** %4, align 8
  %14 = call i32 @enqueue_external_timestamp(i32* %12, %struct.ptp_clock_event* %13)
  %15 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %16 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %15, i32 0, i32 1
  %17 = call i32 @wake_up_interruptible(i32* %16)
  br label %33

18:                                               ; preds = %2
  %19 = call i32 @pps_get_ts(%struct.pps_event_time* %5)
  %20 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %21 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PTP_PPS_EVENT, align 4
  %24 = call i32 @pps_event(i32 %22, %struct.pps_event_time* %5, i32 %23, i32* null)
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %27 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ptp_clock_event*, %struct.ptp_clock_event** %4, align 8
  %30 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %29, i32 0, i32 1
  %31 = load i32, i32* @PTP_PPS_EVENT, align 4
  %32 = call i32 @pps_event(i32 %28, %struct.pps_event_time* %30, i32 %31, i32* null)
  br label %33

33:                                               ; preds = %2, %25, %18, %10, %9
  ret void
}

declare dso_local i32 @enqueue_external_timestamp(i32*, %struct.ptp_clock_event*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @pps_get_ts(%struct.pps_event_time*) #1

declare dso_local i32 @pps_event(i32, %struct.pps_event_time*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
