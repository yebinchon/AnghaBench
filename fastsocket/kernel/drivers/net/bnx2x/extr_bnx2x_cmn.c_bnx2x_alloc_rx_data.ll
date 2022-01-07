; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_alloc_rx_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_alloc_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2x_fastpath = type { i32, %struct.eth_rx_bd*, %struct.sw_rx_bd* }
%struct.eth_rx_bd = type { i8*, i8* }
%struct.sw_rx_bd = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Can't map rx data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_fastpath*, i64, i32)* @bnx2x_alloc_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_alloc_rx_data(%struct.bnx2x* %0, %struct.bnx2x_fastpath* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_fastpath*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sw_rx_bd*, align 8
  %12 = alloca %struct.eth_rx_bd*, align 8
  %13 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_fastpath* %1, %struct.bnx2x_fastpath** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %7, align 8
  %15 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %14, i32 0, i32 2
  %16 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %16, i64 %17
  store %struct.sw_rx_bd* %18, %struct.sw_rx_bd** %11, align 8
  %19 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %7, align 8
  %20 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %19, i32 0, i32 1
  %21 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %21, i64 %22
  store %struct.eth_rx_bd* %23, %struct.eth_rx_bd** %12, align 8
  %24 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32* @bnx2x_frag_alloc(%struct.bnx2x_fastpath* %24, i32 %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp eq i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %82

35:                                               ; preds = %4
  %36 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* @NET_SKB_PAD, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %7, align 8
  %45 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %48 = call i32 @dma_map_single(i32* %39, i32* %43, i32 %46, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %50 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @dma_mapping_error(i32* %52, i32 %53)
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %35
  %58 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %7, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @bnx2x_frag_free(%struct.bnx2x_fastpath* %58, i32* %59)
  %61 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %82

64:                                               ; preds = %35
  %65 = load i32*, i32** %10, align 8
  %66 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %11, align 8
  %67 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %66, i32 0, i32 0
  store i32* %65, i32** %67, align 8
  %68 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %11, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @dma_unmap_addr_set(%struct.sw_rx_bd* %68, i32 %69, i32 %70)
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @U64_HI(i32 %72)
  %74 = call i8* @cpu_to_le32(i32 %73)
  %75 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %12, align 8
  %76 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @U64_LO(i32 %77)
  %79 = call i8* @cpu_to_le32(i32 %78)
  %80 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %12, align 8
  %81 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %64, %57, %32
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32* @bnx2x_frag_alloc(%struct.bnx2x_fastpath*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_single(i32*, i32*, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @bnx2x_frag_free(%struct.bnx2x_fastpath*, i32*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.sw_rx_bd*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
