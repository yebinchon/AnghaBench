; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_unmap_and_free_tx_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_unmap_and_free_tx_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i32 }
%struct.ixgbe_tx_buffer = type { i32*, i32* }

@len = common dso_local global i32 0, align 4
@dma = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_unmap_and_free_tx_resource(%struct.ixgbe_ring* %0, %struct.ixgbe_tx_buffer* %1) #0 {
  %3 = alloca %struct.ixgbe_ring*, align 8
  %4 = alloca %struct.ixgbe_tx_buffer*, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %3, align 8
  store %struct.ixgbe_tx_buffer* %1, %struct.ixgbe_tx_buffer** %4, align 8
  %5 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %6 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @dev_kfree_skb_any(i32* %12)
  %14 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %15 = load i32, i32* @len, align 4
  %16 = call i64 @dma_unmap_len(%struct.ixgbe_tx_buffer* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %9
  %19 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %23 = load i32, i32* @dma, align 4
  %24 = call i32 @dma_unmap_addr(%struct.ixgbe_tx_buffer* %22, i32 %23)
  %25 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %26 = load i32, i32* @len, align 4
  %27 = call i64 @dma_unmap_len(%struct.ixgbe_tx_buffer* %25, i32 %26)
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  %29 = call i32 @dma_unmap_single(i32 %21, i32 %24, i64 %27, i32 %28)
  br label %30

30:                                               ; preds = %18, %9
  br label %49

31:                                               ; preds = %2
  %32 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %33 = load i32, i32* @len, align 4
  %34 = call i64 @dma_unmap_len(%struct.ixgbe_tx_buffer* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %41 = load i32, i32* @dma, align 4
  %42 = call i32 @dma_unmap_addr(%struct.ixgbe_tx_buffer* %40, i32 %41)
  %43 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %44 = load i32, i32* @len, align 4
  %45 = call i64 @dma_unmap_len(%struct.ixgbe_tx_buffer* %43, i32 %44)
  %46 = load i32, i32* @DMA_TO_DEVICE, align 4
  %47 = call i32 @dma_unmap_page(i32 %39, i32 %42, i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %36, %31
  br label %49

49:                                               ; preds = %48, %30
  %50 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %53 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %55 = load i32, i32* @len, align 4
  %56 = call i32 @dma_unmap_len_set(%struct.ixgbe_tx_buffer* %54, i32 %55, i32 0)
  ret void
}

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i64 @dma_unmap_len(%struct.ixgbe_tx_buffer*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.ixgbe_tx_buffer*, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.ixgbe_tx_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
