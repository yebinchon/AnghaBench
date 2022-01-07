; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i64, i64, i64, i64, i64, %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer*, %struct.device* }
%struct.ixgbe_rx_buffer = type { i32*, i64, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_ring*)* @ixgbe_clean_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_clean_rx_ring(%struct.ixgbe_ring* %0) #0 {
  %2 = alloca %struct.ixgbe_ring*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ixgbe_rx_buffer*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %2, align 8
  %8 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %8, i32 0, i32 7
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %3, align 8
  %11 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %11, i32 0, i32 6
  %13 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %12, align 8
  %14 = icmp ne %struct.ixgbe_rx_buffer* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %117

16:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %91, %16
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %94

23:                                               ; preds = %17
  %24 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %25 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %24, i32 0, i32 6
  %26 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %26, i64 %27
  store %struct.ixgbe_rx_buffer* %28, %struct.ixgbe_rx_buffer** %6, align 8
  %29 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %30 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %29, i32 0, i32 2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %23
  %34 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %34, i32 0, i32 2
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %7, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = call %struct.TYPE_2__* @IXGBE_CB(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %33
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = call %struct.TYPE_2__* @IXGBE_CB(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %49 = call i32 @ixgbe_rx_bufsz(%struct.ixgbe_ring* %48)
  %50 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %51 = call i32 @dma_unmap_page(%struct.device* %43, i64 %47, i32 %49, i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = call %struct.TYPE_2__* @IXGBE_CB(%struct.sk_buff* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %42, %33
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = call i32 @dev_kfree_skb(%struct.sk_buff* %56)
  br label %58

58:                                               ; preds = %55, %23
  %59 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %59, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %60, align 8
  %61 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %62 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %68 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %71 = call i32 @ixgbe_rx_pg_size(%struct.ixgbe_ring* %70)
  %72 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %73 = call i32 @dma_unmap_page(%struct.device* %66, i64 %69, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %65, %58
  %75 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %76 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %78 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %83 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %86 = call i32 @ixgbe_rx_pg_order(%struct.ixgbe_ring* %85)
  %87 = call i32 @__free_pages(i32* %84, i32 %86)
  br label %88

88:                                               ; preds = %81, %74
  %89 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %90 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %88
  %92 = load i64, i64* %5, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %5, align 8
  br label %17

94:                                               ; preds = %17
  %95 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %96 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = mul i64 24, %97
  store i64 %98, i64* %4, align 8
  %99 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %100 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %99, i32 0, i32 6
  %101 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %100, align 8
  %102 = load i64, i64* %4, align 8
  %103 = call i32 @memset(%struct.ixgbe_rx_buffer* %101, i32 0, i64 %102)
  %104 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %105 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %104, i32 0, i32 5
  %106 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %105, align 8
  %107 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %108 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @memset(%struct.ixgbe_rx_buffer* %106, i32 0, i64 %109)
  %111 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %112 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %111, i32 0, i32 4
  store i64 0, i64* %112, align 8
  %113 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %114 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %113, i32 0, i32 3
  store i64 0, i64* %114, align 8
  %115 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %116 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  br label %117

117:                                              ; preds = %94, %15
  ret void
}

declare dso_local %struct.TYPE_2__* @IXGBE_CB(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @ixgbe_rx_bufsz(%struct.ixgbe_ring*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ixgbe_rx_pg_size(%struct.ixgbe_ring*) #1

declare dso_local i32 @__free_pages(i32*, i32) #1

declare dso_local i32 @ixgbe_rx_pg_order(%struct.ixgbe_ring*) #1

declare dso_local i32 @memset(%struct.ixgbe_rx_buffer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
