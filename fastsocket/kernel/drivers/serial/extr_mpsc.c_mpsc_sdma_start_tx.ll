; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_sdma_start_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_sdma_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { i32, i64, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.mpsc_tx_desc = type { i32 }

@MPSC_TXRE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SDMA_DESC_CMDSTAT_O = common dso_local global i32 0, align 4
@SDMA_SDCM_STD = common dso_local global i32 0, align 4
@SDMA_SDCM_TXD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpsc_port_info*)* @mpsc_sdma_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_sdma_start_tx(%struct.mpsc_port_info* %0) #0 {
  %2 = alloca %struct.mpsc_port_info*, align 8
  %3 = alloca %struct.mpsc_tx_desc*, align 8
  %4 = alloca %struct.mpsc_tx_desc*, align 8
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %2, align 8
  %5 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %6 = call i32 @mpsc_sdma_tx_active(%struct.mpsc_port_info* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %57, label %8

8:                                                ; preds = %1
  %9 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %10 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %13 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MPSC_TXRE_SIZE, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %11, %17
  %19 = inttoptr i64 %18 to %struct.mpsc_tx_desc*
  store %struct.mpsc_tx_desc* %19, %struct.mpsc_tx_desc** %3, align 8
  %20 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %21 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mpsc_tx_desc*, %struct.mpsc_tx_desc** %3, align 8
  %25 = bitcast %struct.mpsc_tx_desc* %24 to i8*
  %26 = load i32, i32* @MPSC_TXRE_SIZE, align 4
  %27 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %28 = call i32 @dma_cache_sync(i32 %23, i8* %25, i32 %26, i32 %27)
  %29 = load %struct.mpsc_tx_desc*, %struct.mpsc_tx_desc** %3, align 8
  %30 = getelementptr inbounds %struct.mpsc_tx_desc, %struct.mpsc_tx_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be32_to_cpu(i32 %31)
  %33 = load i32, i32* @SDMA_DESC_CMDSTAT_O, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %8
  %37 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %38 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %41 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MPSC_TXRE_SIZE, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %39, %45
  %47 = inttoptr i64 %46 to %struct.mpsc_tx_desc*
  store %struct.mpsc_tx_desc* %47, %struct.mpsc_tx_desc** %4, align 8
  %48 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %49 = load %struct.mpsc_tx_desc*, %struct.mpsc_tx_desc** %4, align 8
  %50 = call i32 @mpsc_sdma_set_tx_ring(%struct.mpsc_port_info* %48, %struct.mpsc_tx_desc* %49)
  %51 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %52 = load i32, i32* @SDMA_SDCM_STD, align 4
  %53 = load i32, i32* @SDMA_SDCM_TXD, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @mpsc_sdma_cmd(%struct.mpsc_port_info* %51, i32 %54)
  br label %56

56:                                               ; preds = %36, %8
  br label %57

57:                                               ; preds = %56, %1
  ret void
}

declare dso_local i32 @mpsc_sdma_tx_active(%struct.mpsc_port_info*) #1

declare dso_local i32 @dma_cache_sync(i32, i8*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mpsc_sdma_set_tx_ring(%struct.mpsc_port_info*, %struct.mpsc_tx_desc*) #1

declare dso_local i32 @mpsc_sdma_cmd(%struct.mpsc_port_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
