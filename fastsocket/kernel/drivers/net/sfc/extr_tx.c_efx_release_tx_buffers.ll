; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_release_tx_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_release_tx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i64, i64, i64, %struct.efx_tx_buffer* }
%struct.efx_tx_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_release_tx_buffers(%struct.efx_tx_queue* %0) #0 {
  %2 = alloca %struct.efx_tx_queue*, align 8
  %3 = alloca %struct.efx_tx_buffer*, align 8
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %2, align 8
  %4 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %5 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %4, i32 0, i32 3
  %6 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %5, align 8
  %7 = icmp ne %struct.efx_tx_buffer* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %37

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %18, %9
  %11 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %12 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %15 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %10
  %19 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %20 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %19, i32 0, i32 3
  %21 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %20, align 8
  %22 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %23 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %26 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = and i64 %24, %27
  %29 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %21, i64 %28
  store %struct.efx_tx_buffer* %29, %struct.efx_tx_buffer** %3, align 8
  %30 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %31 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %3, align 8
  %32 = call i32 @efx_dequeue_buffer(%struct.efx_tx_queue* %30, %struct.efx_tx_buffer* %31)
  %33 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %34 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %34, align 8
  br label %10

37:                                               ; preds = %8, %10
  ret void
}

declare dso_local i32 @efx_dequeue_buffer(%struct.efx_tx_queue*, %struct.efx_tx_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
