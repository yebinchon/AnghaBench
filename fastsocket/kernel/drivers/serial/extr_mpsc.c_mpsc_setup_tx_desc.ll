; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_setup_tx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_setup_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { i32, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.mpsc_tx_desc = type { i32, i32, i32 }

@MPSC_TXRE_SIZE = common dso_local global i32 0, align 4
@SDMA_DESC_CMDSTAT_O = common dso_local global i32 0, align 4
@SDMA_DESC_CMDSTAT_F = common dso_local global i32 0, align 4
@SDMA_DESC_CMDSTAT_L = common dso_local global i32 0, align 4
@SDMA_DESC_CMDSTAT_EI = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpsc_port_info*, i64, i64)* @mpsc_setup_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_setup_tx_desc(%struct.mpsc_port_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mpsc_port_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mpsc_tx_desc*, align 8
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %9 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %12 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MPSC_TXRE_SIZE, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %10, %16
  %18 = inttoptr i64 %17 to %struct.mpsc_tx_desc*
  store %struct.mpsc_tx_desc* %18, %struct.mpsc_tx_desc** %7, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @cpu_to_be16(i64 %19)
  %21 = load %struct.mpsc_tx_desc*, %struct.mpsc_tx_desc** %7, align 8
  %22 = getelementptr inbounds %struct.mpsc_tx_desc, %struct.mpsc_tx_desc* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mpsc_tx_desc*, %struct.mpsc_tx_desc** %7, align 8
  %24 = getelementptr inbounds %struct.mpsc_tx_desc, %struct.mpsc_tx_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mpsc_tx_desc*, %struct.mpsc_tx_desc** %7, align 8
  %27 = getelementptr inbounds %struct.mpsc_tx_desc, %struct.mpsc_tx_desc* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = call i32 (...) @wmb()
  %29 = load i32, i32* @SDMA_DESC_CMDSTAT_O, align 4
  %30 = load i32, i32* @SDMA_DESC_CMDSTAT_F, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SDMA_DESC_CMDSTAT_L, align 4
  %33 = or i32 %31, %32
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* @SDMA_DESC_CMDSTAT_EI, align 4
  br label %39

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = or i32 %33, %40
  %42 = call i32 @cpu_to_be32(i32 %41)
  %43 = load %struct.mpsc_tx_desc*, %struct.mpsc_tx_desc** %7, align 8
  %44 = getelementptr inbounds %struct.mpsc_tx_desc, %struct.mpsc_tx_desc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = call i32 (...) @wmb()
  %46 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %47 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mpsc_tx_desc*, %struct.mpsc_tx_desc** %7, align 8
  %51 = bitcast %struct.mpsc_tx_desc* %50 to i8*
  %52 = load i32, i32* @MPSC_TXRE_SIZE, align 4
  %53 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %54 = call i32 @dma_cache_sync(i32 %49, i8* %51, i32 %52, i32 %53)
  ret void
}

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @dma_cache_sync(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
