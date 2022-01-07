; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c___qdio_outbound_processing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c___qdio_outbound_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@tasklet_outbound = common dso_local global i32 0, align 4
@QDIO_ZFCP_QFMT = common dso_local global i64 0, align 8
@QDIO_IQDIO_QFMT = common dso_local global i64 0, align 8
@QDIO_IQDIO_POLL_LVL = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@QDIO_IRQ_STATE_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*)* @__qdio_outbound_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qdio_outbound_processing(%struct.qdio_q* %0) #0 {
  %2 = alloca %struct.qdio_q*, align 8
  store %struct.qdio_q* %0, %struct.qdio_q** %2, align 8
  %3 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %4 = load i32, i32* @tasklet_outbound, align 4
  %5 = call i32 @qperf_inc(%struct.qdio_q* %3, i32 %4)
  %6 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %7 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %6, i32 0, i32 3
  %8 = call i64 @atomic_read(i32* %7)
  %9 = icmp slt i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %13 = call i64 @qdio_outbound_q_moved(%struct.qdio_q* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %17 = call i32 @qdio_kick_handler(%struct.qdio_q* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %20 = call i64 @queue_type(%struct.qdio_q* %19)
  %21 = load i64, i64* @QDIO_ZFCP_QFMT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %25 = call i32 @pci_out_supported(%struct.qdio_q* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %29 = call i64 @qdio_outbound_q_done(%struct.qdio_q* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %83

32:                                               ; preds = %27, %23
  br label %33

33:                                               ; preds = %32, %18
  %34 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %35 = call i64 @queue_type(%struct.qdio_q* %34)
  %36 = load i64, i64* @QDIO_IQDIO_QFMT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %40 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %39, i32 0, i32 3
  %41 = call i64 @atomic_read(i32* %40)
  %42 = load i64, i64* @QDIO_IQDIO_POLL_LVL, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %83

45:                                               ; preds = %38, %33
  %46 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %47 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %99

53:                                               ; preds = %45
  %54 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %55 = call i64 @qdio_outbound_q_done(%struct.qdio_q* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %59 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @del_timer(i32* %61)
  br label %82

63:                                               ; preds = %53
  %64 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %65 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @timer_pending(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %63
  %71 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %72 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* @jiffies, align 8
  %76 = load i32, i32* @HZ, align 4
  %77 = mul nsw i32 10, %76
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %75, %78
  %80 = call i32 @mod_timer(i32* %74, i64 %79)
  br label %81

81:                                               ; preds = %70, %63
  br label %82

82:                                               ; preds = %81, %57
  br label %99

83:                                               ; preds = %44, %31
  %84 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %85 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @QDIO_IRQ_STATE_STOPPED, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %99

95:                                               ; preds = %83
  %96 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %97 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %96, i32 0, i32 0
  %98 = call i32 @tasklet_schedule(i32* %97)
  br label %99

99:                                               ; preds = %95, %94, %82, %52
  ret void
}

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @qdio_outbound_q_moved(%struct.qdio_q*) #1

declare dso_local i32 @qdio_kick_handler(%struct.qdio_q*) #1

declare dso_local i64 @queue_type(%struct.qdio_q*) #1

declare dso_local i32 @pci_out_supported(%struct.qdio_q*) #1

declare dso_local i64 @qdio_outbound_q_done(%struct.qdio_q*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
