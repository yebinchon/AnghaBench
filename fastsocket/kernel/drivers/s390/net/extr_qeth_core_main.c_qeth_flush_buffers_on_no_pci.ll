; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_flush_buffers_on_no_pci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_flush_buffers_on_no_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { i64, %struct.qeth_qdio_out_buffer** }
%struct.qeth_qdio_out_buffer = type { i64, i32 }

@QETH_QDIO_BUF_EMPTY = common dso_local global i64 0, align 8
@QETH_QDIO_BUF_PRIMED = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_qdio_out_q*)* @qeth_flush_buffers_on_no_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_flush_buffers_on_no_pci(%struct.qeth_qdio_out_q* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_qdio_out_q*, align 8
  %4 = alloca %struct.qeth_qdio_out_buffer*, align 8
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %3, align 8
  %5 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %6 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %5, i32 0, i32 1
  %7 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %6, align 8
  %8 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %9 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %7, i64 %10
  %12 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %11, align 8
  store %struct.qeth_qdio_out_buffer* %12, %struct.qeth_qdio_out_buffer** %4, align 8
  %13 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %13, i32 0, i32 1
  %15 = call i64 @atomic_read(i32* %14)
  %16 = load i64, i64* @QETH_QDIO_BUF_EMPTY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %1
  %19 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %24, i32 0, i32 1
  %26 = load i32, i32* @QETH_QDIO_BUF_PRIMED, align 4
  %27 = call i32 @atomic_set(i32* %25, i32 %26)
  %28 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %29 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  %32 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %33 = sext i32 %32 to i64
  %34 = urem i64 %31, %33
  %35 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %36 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  store i32 1, i32* %2, align 4
  br label %38

37:                                               ; preds = %18, %1
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
