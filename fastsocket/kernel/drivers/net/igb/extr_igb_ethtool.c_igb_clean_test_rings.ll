; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_clean_test_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_clean_test_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { i64, i64, %struct.igb_tx_buffer*, i32, %struct.igb_rx_buffer* }
%struct.igb_tx_buffer = type { i32 }
%struct.igb_rx_buffer = type { i32 }
%union.e1000_adv_rx_desc = type { i32 }

@E1000_RXD_STAT_DD = common dso_local global i32 0, align 4
@IGB_RX_BUFSZ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_ring*, %struct.igb_ring*, i32)* @igb_clean_test_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_clean_test_rings(%struct.igb_ring* %0, %struct.igb_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.igb_ring*, align 8
  %5 = alloca %struct.igb_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.e1000_adv_rx_desc*, align 8
  %8 = alloca %struct.igb_rx_buffer*, align 8
  %9 = alloca %struct.igb_tx_buffer*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.igb_ring* %0, %struct.igb_ring** %4, align 8
  store %struct.igb_ring* %1, %struct.igb_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %14 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %17 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call %union.e1000_adv_rx_desc* @IGB_RX_DESC(%struct.igb_ring* %19, i64 %20)
  store %union.e1000_adv_rx_desc* %21, %union.e1000_adv_rx_desc** %7, align 8
  br label %22

22:                                               ; preds = %84, %3
  %23 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %7, align 8
  %24 = load i32, i32* @E1000_RXD_STAT_DD, align 4
  %25 = call i64 @igb_test_staterr(%union.e1000_adv_rx_desc* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %88

27:                                               ; preds = %22
  %28 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %29 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %28, i32 0, i32 4
  %30 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %30, i64 %31
  store %struct.igb_rx_buffer* %32, %struct.igb_rx_buffer** %8, align 8
  %33 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %34 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %8, align 8
  %37 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IGB_RX_BUFSZ, align 4
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %41 = call i32 @dma_sync_single_for_cpu(i32 %35, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @igb_check_lbtest_frame(%struct.igb_rx_buffer* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %27
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %12, align 8
  br label %49

49:                                               ; preds = %46, %27
  %50 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %51 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %8, align 8
  %54 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IGB_RX_BUFSZ, align 4
  %57 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %58 = call i32 @dma_sync_single_for_device(i32 %52, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %60 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %59, i32 0, i32 2
  %61 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %61, i64 %62
  store %struct.igb_tx_buffer* %63, %struct.igb_tx_buffer** %9, align 8
  %64 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %65 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %9, align 8
  %66 = call i32 @igb_unmap_and_free_tx_resource(%struct.igb_ring* %64, %struct.igb_tx_buffer* %65)
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %71 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %49
  store i64 0, i64* %10, align 8
  br label %75

75:                                               ; preds = %74, %49
  %76 = load i64, i64* %11, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %80 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i64 0, i64* %11, align 8
  br label %84

84:                                               ; preds = %83, %75
  %85 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call %union.e1000_adv_rx_desc* @IGB_RX_DESC(%struct.igb_ring* %85, i64 %86)
  store %union.e1000_adv_rx_desc* %87, %union.e1000_adv_rx_desc** %7, align 8
  br label %22

88:                                               ; preds = %22
  %89 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %90 = load i64, i64* %12, align 8
  %91 = call i32 @igb_alloc_rx_buffers(%struct.igb_ring* %89, i64 %90)
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %94 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %97 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* %12, align 8
  %99 = trunc i64 %98 to i32
  ret i32 %99
}

declare dso_local %union.e1000_adv_rx_desc* @IGB_RX_DESC(%struct.igb_ring*, i64) #1

declare dso_local i64 @igb_test_staterr(%union.e1000_adv_rx_desc*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i64 @igb_check_lbtest_frame(%struct.igb_rx_buffer*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @igb_unmap_and_free_tx_resource(%struct.igb_ring*, %struct.igb_tx_buffer*) #1

declare dso_local i32 @igb_alloc_rx_buffers(%struct.igb_ring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
