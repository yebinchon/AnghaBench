; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_enqueue_unwind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_enqueue_unwind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i64, i64, i64, %struct.efx_tx_buffer* }
%struct.efx_tx_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_tx_queue*)* @efx_enqueue_unwind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_enqueue_unwind(%struct.efx_tx_queue* %0) #0 {
  %2 = alloca %struct.efx_tx_queue*, align 8
  %3 = alloca %struct.efx_tx_buffer*, align 8
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %2, align 8
  br label %4

4:                                                ; preds = %12, %1
  %5 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %6 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %9 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %4
  %13 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %14 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %18 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %17, i32 0, i32 3
  %19 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %18, align 8
  %20 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %21 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %24 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %22, %25
  %27 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %19, i64 %26
  store %struct.efx_tx_buffer* %27, %struct.efx_tx_buffer** %3, align 8
  %28 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %29 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %3, align 8
  %30 = call i32 @efx_dequeue_buffer(%struct.efx_tx_queue* %28, %struct.efx_tx_buffer* %29)
  br label %4

31:                                               ; preds = %4
  ret void
}

declare dso_local i32 @efx_dequeue_buffer(%struct.efx_tx_queue*, %struct.efx_tx_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
