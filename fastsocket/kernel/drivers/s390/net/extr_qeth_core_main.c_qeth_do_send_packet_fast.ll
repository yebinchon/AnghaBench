; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_do_send_packet_fast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_do_send_packet_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_qdio_out_q = type { i32, i32, %struct.qeth_qdio_out_buffer** }
%struct.qeth_qdio_out_buffer = type { i32 }
%struct.sk_buff = type { i32 }
%struct.qeth_hdr = type { i32 }

@QETH_OUT_Q_UNLOCKED = common dso_local global i64 0, align 8
@QETH_OUT_Q_LOCKED = common dso_local global i32 0, align 4
@QETH_QDIO_BUF_EMPTY = common dso_local global i64 0, align 8
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_do_send_packet_fast(%struct.qeth_card* %0, %struct.qeth_qdio_out_q* %1, %struct.sk_buff* %2, %struct.qeth_hdr* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.qeth_card*, align 8
  %10 = alloca %struct.qeth_qdio_out_q*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.qeth_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %17 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %9, align 8
  store %struct.qeth_qdio_out_q* %1, %struct.qeth_qdio_out_q** %10, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %11, align 8
  store %struct.qeth_hdr* %3, %struct.qeth_hdr** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  br label %18

18:                                               ; preds = %26, %7
  %19 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %20 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %19, i32 0, i32 1
  %21 = load i64, i64* @QETH_OUT_Q_UNLOCKED, align 8
  %22 = load i32, i32* @QETH_OUT_Q_LOCKED, align 4
  %23 = call i64 @atomic_cmpxchg(i32* %20, i64 %21, i32 %22)
  %24 = load i64, i64* @QETH_OUT_Q_UNLOCKED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %18

27:                                               ; preds = %18
  %28 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %29 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %17, align 4
  %31 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %32 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %31, i32 0, i32 2
  %33 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %32, align 8
  %34 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %35 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %33, i64 %37
  %39 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %38, align 8
  store %struct.qeth_qdio_out_buffer* %39, %struct.qeth_qdio_out_buffer** %16, align 8
  %40 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %16, align 8
  %41 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %40, i32 0, i32 0
  %42 = call i64 @atomic_read(i32* %41)
  %43 = load i64, i64* @QETH_QDIO_BUF_EMPTY, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %27
  br label %69

46:                                               ; preds = %27
  %47 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %48 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %52 = srem i32 %50, %51
  %53 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %54 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %56 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %55, i32 0, i32 1
  %57 = load i64, i64* @QETH_OUT_Q_UNLOCKED, align 8
  %58 = call i32 @atomic_set(i32* %56, i64 %57)
  %59 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %60 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %16, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %62 = load %struct.qeth_hdr*, %struct.qeth_hdr** %12, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @qeth_fill_buffer(%struct.qeth_qdio_out_q* %59, %struct.qeth_qdio_out_buffer* %60, %struct.sk_buff* %61, %struct.qeth_hdr* %62, i32 %63, i32 %64)
  %66 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @qeth_flush_buffers(%struct.qeth_qdio_out_q* %66, i32 %67, i32 1)
  store i32 0, i32* %8, align 4
  br label %76

69:                                               ; preds = %45
  %70 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %71 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %70, i32 0, i32 1
  %72 = load i64, i64* @QETH_OUT_Q_UNLOCKED, align 8
  %73 = call i32 @atomic_set(i32* %71, i64 %72)
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %69, %46
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i64 @atomic_cmpxchg(i32*, i64, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @qeth_fill_buffer(%struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_buffer*, %struct.sk_buff*, %struct.qeth_hdr*, i32, i32) #1

declare dso_local i32 @qeth_flush_buffers(%struct.qeth_qdio_out_q*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
