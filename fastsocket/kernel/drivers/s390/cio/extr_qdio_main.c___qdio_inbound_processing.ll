; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c___qdio_inbound_processing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c___qdio_inbound_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32 }

@tasklet_inbound = common dso_local global i32 0, align 4
@tasklet_inbound_resched = common dso_local global i32 0, align 4
@tasklet_inbound_resched2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*)* @__qdio_inbound_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qdio_inbound_processing(%struct.qdio_q* %0) #0 {
  %2 = alloca %struct.qdio_q*, align 8
  store %struct.qdio_q* %0, %struct.qdio_q** %2, align 8
  %3 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %4 = load i32, i32* @tasklet_inbound, align 4
  %5 = call i32 @qperf_inc(%struct.qdio_q* %3, i32 %4)
  br label %6

6:                                                ; preds = %27, %17, %1
  %7 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %8 = call i32 @qdio_inbound_q_moved(%struct.qdio_q* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  br label %31

11:                                               ; preds = %6
  %12 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %13 = call i32 @qdio_kick_handler(%struct.qdio_q* %12)
  %14 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %15 = call i32 @qdio_inbound_q_done(%struct.qdio_q* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %19 = load i32, i32* @tasklet_inbound_resched, align 4
  %20 = call i32 @qperf_inc(%struct.qdio_q* %18, i32 %19)
  br label %6

21:                                               ; preds = %11
  %22 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %23 = call i32 @qdio_stop_polling(%struct.qdio_q* %22)
  %24 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %25 = call i32 @qdio_inbound_q_done(%struct.qdio_q* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %29 = load i32, i32* @tasklet_inbound_resched2, align 4
  %30 = call i32 @qperf_inc(%struct.qdio_q* %28, i32 %29)
  br label %6

31:                                               ; preds = %10, %21
  ret void
}

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i32 @qdio_inbound_q_moved(%struct.qdio_q*) #1

declare dso_local i32 @qdio_kick_handler(%struct.qdio_q*) #1

declare dso_local i32 @qdio_inbound_q_done(%struct.qdio_q*) #1

declare dso_local i32 @qdio_stop_polling(%struct.qdio_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
