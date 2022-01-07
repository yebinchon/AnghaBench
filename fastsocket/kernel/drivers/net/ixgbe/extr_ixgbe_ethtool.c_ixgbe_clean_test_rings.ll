; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_clean_test_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_clean_test_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i64, i64, %struct.ixgbe_tx_buffer*, i32, %struct.ixgbe_rx_buffer* }
%struct.ixgbe_tx_buffer = type { i32 }
%struct.ixgbe_rx_buffer = type { i32 }
%union.ixgbe_adv_rx_desc = type { i32 }

@IXGBE_RXD_STAT_DD = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_ring*, %struct.ixgbe_ring*, i32)* @ixgbe_clean_test_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_clean_test_rings(%struct.ixgbe_ring* %0, %struct.ixgbe_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %8 = alloca %struct.ixgbe_rx_buffer*, align 8
  %9 = alloca %struct.ixgbe_tx_buffer*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %4, align 8
  store %struct.ixgbe_ring* %1, %struct.ixgbe_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %14 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %17 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call %union.ixgbe_adv_rx_desc* @IXGBE_RX_DESC(%struct.ixgbe_ring* %19, i64 %20)
  store %union.ixgbe_adv_rx_desc* %21, %union.ixgbe_adv_rx_desc** %7, align 8
  br label %22

22:                                               ; preds = %86, %3
  %23 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %7, align 8
  %24 = load i32, i32* @IXGBE_RXD_STAT_DD, align 4
  %25 = call i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %90

27:                                               ; preds = %22
  %28 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %29 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %28, i32 0, i32 4
  %30 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %30, i64 %31
  store %struct.ixgbe_rx_buffer* %32, %struct.ixgbe_rx_buffer** %8, align 8
  %33 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %34 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %8, align 8
  %37 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %40 = call i32 @ixgbe_rx_bufsz(%struct.ixgbe_ring* %39)
  %41 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %42 = call i32 @dma_sync_single_for_cpu(i32 %35, i32 %38, i32 %40, i32 %41)
  %43 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @ixgbe_check_lbtest_frame(%struct.ixgbe_rx_buffer* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %27
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %12, align 8
  br label %50

50:                                               ; preds = %47, %27
  %51 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %52 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %8, align 8
  %55 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %58 = call i32 @ixgbe_rx_bufsz(%struct.ixgbe_ring* %57)
  %59 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %60 = call i32 @dma_sync_single_for_device(i32 %53, i32 %56, i32 %58, i32 %59)
  %61 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %62 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %61, i32 0, i32 2
  %63 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %63, i64 %64
  store %struct.ixgbe_tx_buffer* %65, %struct.ixgbe_tx_buffer** %9, align 8
  %66 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %67 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %9, align 8
  %68 = call i32 @ixgbe_unmap_and_free_tx_resource(%struct.ixgbe_ring* %66, %struct.ixgbe_tx_buffer* %67)
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %73 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %50
  store i64 0, i64* %10, align 8
  br label %77

77:                                               ; preds = %76, %50
  %78 = load i64, i64* %11, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %82 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i64 0, i64* %11, align 8
  br label %86

86:                                               ; preds = %85, %77
  %87 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %88 = load i64, i64* %10, align 8
  %89 = call %union.ixgbe_adv_rx_desc* @IXGBE_RX_DESC(%struct.ixgbe_ring* %87, i64 %88)
  store %union.ixgbe_adv_rx_desc* %89, %union.ixgbe_adv_rx_desc** %7, align 8
  br label %22

90:                                               ; preds = %22
  %91 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @ixgbe_alloc_rx_buffers(%struct.ixgbe_ring* %91, i64 %92)
  %94 = load i64, i64* %10, align 8
  %95 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %96 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %99 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* %12, align 8
  ret i64 %100
}

declare dso_local %union.ixgbe_adv_rx_desc* @IXGBE_RX_DESC(%struct.ixgbe_ring*, i64) #1

declare dso_local i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @ixgbe_rx_bufsz(%struct.ixgbe_ring*) #1

declare dso_local i64 @ixgbe_check_lbtest_frame(%struct.ixgbe_rx_buffer*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @ixgbe_unmap_and_free_tx_resource(%struct.ixgbe_ring*, %struct.ixgbe_tx_buffer*) #1

declare dso_local i32 @ixgbe_alloc_rx_buffers(%struct.ixgbe_ring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
