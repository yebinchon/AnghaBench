; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c___tiqdio_inbound_processing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c___tiqdio_inbound_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@tasklet_inbound = common dso_local global i32 0, align 4
@tasklet_inbound_resched = common dso_local global i32 0, align 4
@QDIO_IRQ_STATE_STOPPED = common dso_local global i64 0, align 8
@tasklet_inbound_resched2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*)* @__tiqdio_inbound_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tiqdio_inbound_processing(%struct.qdio_q* %0) #0 {
  %2 = alloca %struct.qdio_q*, align 8
  store %struct.qdio_q* %0, %struct.qdio_q** %2, align 8
  %3 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %4 = load i32, i32* @tasklet_inbound, align 4
  %5 = call i32 @qperf_inc(%struct.qdio_q* %3, i32 %4)
  %6 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %7 = call i32 @qdio_sync_after_thinint(%struct.qdio_q* %6)
  %8 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %9 = call i32 @qdio_check_outbound_after_thinint(%struct.qdio_q* %8)
  %10 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %11 = call i32 @qdio_inbound_q_moved(%struct.qdio_q* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %64

14:                                               ; preds = %1
  %15 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %16 = call i32 @qdio_kick_handler(%struct.qdio_q* %15)
  %17 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %18 = call i32 @qdio_inbound_q_done(%struct.qdio_q* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %14
  %21 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %22 = load i32, i32* @tasklet_inbound_resched, align 4
  %23 = call i32 @qperf_inc(%struct.qdio_q* %21, i32 %22)
  %24 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %25 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @QDIO_IRQ_STATE_STOPPED, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %36 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %35, i32 0, i32 0
  %37 = call i32 @tasklet_schedule(i32* %36)
  br label %64

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38, %14
  %40 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %41 = call i32 @qdio_stop_polling(%struct.qdio_q* %40)
  %42 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %43 = call i32 @qdio_inbound_q_done(%struct.qdio_q* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %39
  %46 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %47 = load i32, i32* @tasklet_inbound_resched2, align 4
  %48 = call i32 @qperf_inc(%struct.qdio_q* %46, i32 %47)
  %49 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %50 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @QDIO_IRQ_STATE_STOPPED, align 8
  %55 = icmp ne i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %45
  %60 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %61 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %60, i32 0, i32 0
  %62 = call i32 @tasklet_schedule(i32* %61)
  br label %63

63:                                               ; preds = %59, %45
  br label %64

64:                                               ; preds = %13, %34, %63, %39
  ret void
}

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i32 @qdio_sync_after_thinint(%struct.qdio_q*) #1

declare dso_local i32 @qdio_check_outbound_after_thinint(%struct.qdio_q*) #1

declare dso_local i32 @qdio_inbound_q_moved(%struct.qdio_q*) #1

declare dso_local i32 @qdio_kick_handler(%struct.qdio_q*) #1

declare dso_local i32 @qdio_inbound_q_done(%struct.qdio_q*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @qdio_stop_polling(%struct.qdio_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
