; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_reuse_rx_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_reuse_rx_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { i64, i64, i32, %struct.igb_rx_buffer* }
%struct.igb_rx_buffer = type { i32, i32 }

@IGB_RX_BUFSZ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_ring*, %struct.igb_rx_buffer*)* @igb_reuse_rx_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_reuse_rx_page(%struct.igb_ring* %0, %struct.igb_rx_buffer* %1) #0 {
  %3 = alloca %struct.igb_ring*, align 8
  %4 = alloca %struct.igb_rx_buffer*, align 8
  %5 = alloca %struct.igb_rx_buffer*, align 8
  %6 = alloca i64, align 8
  store %struct.igb_ring* %0, %struct.igb_ring** %3, align 8
  store %struct.igb_rx_buffer* %1, %struct.igb_rx_buffer** %4, align 8
  %7 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %8 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %11 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %10, i32 0, i32 3
  %12 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %12, i64 %13
  store %struct.igb_rx_buffer* %14, %struct.igb_rx_buffer** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %19 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i64 [ %23, %22 ], [ 0, %24 ]
  %27 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %28 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %5, align 8
  %30 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %4, align 8
  %31 = call i32 @memcpy(%struct.igb_rx_buffer* %29, %struct.igb_rx_buffer* %30, i32 8)
  %32 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %33 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %4, align 8
  %39 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IGB_RX_BUFSZ, align 4
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i32 @dma_sync_single_range_for_device(i32 %34, i32 %37, i32 %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @memcpy(%struct.igb_rx_buffer*, %struct.igb_rx_buffer*, i32) #1

declare dso_local i32 @dma_sync_single_range_for_device(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
