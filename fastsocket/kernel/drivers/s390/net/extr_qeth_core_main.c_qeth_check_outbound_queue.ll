; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_check_outbound_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_check_outbound_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { i32, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@QETH_LOW_WATERMARK_PACK = common dso_local global i64 0, align 8
@QETH_OUT_Q_LOCKED_FLUSH = common dso_local global i32 0, align 4
@QETH_OUT_Q_UNLOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_qdio_out_q*)* @qeth_check_outbound_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_check_outbound_queue(%struct.qeth_qdio_out_q* %0) #0 {
  %2 = alloca %struct.qeth_qdio_out_q*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %7 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %6, i32 0, i32 5
  %8 = call i64 @atomic_read(i32* %7)
  %9 = load i64, i64* @QETH_LOW_WATERMARK_PACK, align 8
  %10 = icmp sle i64 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %13 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %12, i32 0, i32 4
  %14 = call i64 @atomic_read(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %91, label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %18 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %17, i32 0, i32 2
  %19 = load i32, i32* @QETH_OUT_Q_LOCKED_FLUSH, align 4
  %20 = call i64 @atomic_xchg(i32* %18, i32 %19)
  %21 = load i64, i64* @QETH_OUT_Q_UNLOCKED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %90

23:                                               ; preds = %16
  %24 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %25 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %24, i32 0, i32 3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @netif_stop_queue(i32 %28)
  %30 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %31 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %3, align 4
  %33 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %34 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  %36 = call i32 (...) @barrier()
  %37 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %38 = call i64 @qeth_switch_to_nonpacking_if_needed(%struct.qeth_qdio_out_q* %37)
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %23
  %46 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %47 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %46, i32 0, i32 4
  %48 = call i64 @atomic_read(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %52 = call i64 @qeth_flush_buffers_on_no_pci(%struct.qeth_qdio_out_q* %51)
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %50, %45, %23
  %58 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %59 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %58, i32 0, i32 3
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %71 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %70, i32 0, i32 3
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, %69
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %68, %65, %57
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @qeth_flush_buffers(%struct.qeth_qdio_out_q* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %77
  %86 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %87 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %86, i32 0, i32 2
  %88 = load i64, i64* @QETH_OUT_Q_UNLOCKED, align 8
  %89 = call i32 @atomic_set(i32* %87, i64 %88)
  br label %90

90:                                               ; preds = %85, %16
  br label %91

91:                                               ; preds = %90, %11
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @qeth_switch_to_nonpacking_if_needed(%struct.qeth_qdio_out_q*) #1

declare dso_local i64 @qeth_flush_buffers_on_no_pci(%struct.qeth_qdio_out_q*) #1

declare dso_local i32 @qeth_flush_buffers(%struct.qeth_qdio_out_q*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
