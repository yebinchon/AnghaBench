; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.TYPE_3__, %struct.pci_dev* }
%struct.TYPE_3__ = type { i64 }
%struct.pci_dev = type { i32 }
%struct.ixgbevf_ring = type { i32, i64, i64, i64, i64, i64, %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer*, i32 }
%struct.ixgbevf_rx_buffer = type { %struct.sk_buff*, i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { %struct.sk_buff* }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*)* @ixgbevf_clean_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_clean_rx_ring(%struct.ixgbevf_adapter* %0, %struct.ixgbevf_ring* %1) #0 {
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca %struct.ixgbevf_ring*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixgbevf_rx_buffer*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  store %struct.ixgbevf_ring* %1, %struct.ixgbevf_ring** %4, align 8
  %11 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %11, i32 0, i32 1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  %14 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %15 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %14, i32 0, i32 7
  %16 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %15, align 8
  %17 = icmp ne %struct.ixgbevf_rx_buffer* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %128

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %74, %19
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %23 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %20
  %27 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %28 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %27, i32 0, i32 7
  %29 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %29, i64 %31
  store %struct.ixgbevf_rx_buffer* %32, %struct.ixgbevf_rx_buffer** %8, align 8
  %33 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %8, align 8
  %34 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %26
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %8, align 8
  %41 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %44 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %47 = call i32 @dma_unmap_single(i32* %39, i64 %42, i32 %45, i32 %46)
  %48 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %8, align 8
  %49 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %37, %26
  %51 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %8, align 8
  %52 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %51, i32 0, i32 0
  %53 = load %struct.sk_buff*, %struct.sk_buff** %52, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %8, align 8
  %57 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %56, i32 0, i32 0
  %58 = load %struct.sk_buff*, %struct.sk_buff** %57, align 8
  store %struct.sk_buff* %58, %struct.sk_buff** %9, align 8
  %59 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %8, align 8
  %60 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %59, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %60, align 8
  br label %61

61:                                               ; preds = %69, %55
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %62, %struct.sk_buff** %10, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = call %struct.TYPE_4__* @IXGBE_CB(%struct.sk_buff* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.sk_buff*, %struct.sk_buff** %65, align 8
  store %struct.sk_buff* %66, %struct.sk_buff** %9, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = call i32 @dev_kfree_skb(%struct.sk_buff* %67)
  br label %69

69:                                               ; preds = %61
  %70 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  br i1 %71, label %61, label %72

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %72, %50
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %20

77:                                               ; preds = %20
  %78 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %79 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = zext i32 %80 to i64
  %82 = mul i64 16, %81
  store i64 %82, i64* %6, align 8
  %83 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %84 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %83, i32 0, i32 7
  %85 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @memset(%struct.ixgbevf_rx_buffer* %85, i32 0, i64 %86)
  %88 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %89 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %88, i32 0, i32 6
  %90 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %89, align 8
  %91 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %92 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @memset(%struct.ixgbevf_rx_buffer* %90, i32 0, i64 %93)
  %95 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %96 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %95, i32 0, i32 5
  store i64 0, i64* %96, align 8
  %97 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %98 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %97, i32 0, i32 4
  store i64 0, i64* %98, align 8
  %99 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %100 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %77
  %104 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %105 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %109 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = call i32 @writel(i32 0, i64 %111)
  br label %113

113:                                              ; preds = %103, %77
  %114 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %115 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %120 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %124 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = call i32 @writel(i32 0, i64 %126)
  br label %128

128:                                              ; preds = %18, %118, %113
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local %struct.TYPE_4__* @IXGBE_CB(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.ixgbevf_rx_buffer*, i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
