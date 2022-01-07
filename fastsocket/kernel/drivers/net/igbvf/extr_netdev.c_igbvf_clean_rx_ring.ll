; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_ring = type { i32, i64, i64, i64, i64, i64, %struct.igbvf_buffer*, %struct.igbvf_buffer*, %struct.igbvf_adapter* }
%struct.igbvf_buffer = type { i64, i64, i32*, i32*, i64 }
%struct.igbvf_adapter = type { %struct.TYPE_2__, i64, i64, %struct.pci_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igbvf_ring*)* @igbvf_clean_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_clean_rx_ring(%struct.igbvf_ring* %0) #0 {
  %2 = alloca %struct.igbvf_ring*, align 8
  %3 = alloca %struct.igbvf_adapter*, align 8
  %4 = alloca %struct.igbvf_buffer*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.igbvf_ring* %0, %struct.igbvf_ring** %2, align 8
  %8 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %9 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %8, i32 0, i32 8
  %10 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %9, align 8
  store %struct.igbvf_adapter* %10, %struct.igbvf_adapter** %3, align 8
  %11 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %11, i32 0, i32 3
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  %14 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %15 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %14, i32 0, i32 7
  %16 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %15, align 8
  %17 = icmp ne %struct.igbvf_buffer* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %154

19:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %111, %19
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %23 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %114

26:                                               ; preds = %20
  %27 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %28 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %27, i32 0, i32 7
  %29 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %29, i64 %31
  store %struct.igbvf_buffer* %32, %struct.igbvf_buffer** %4, align 8
  %33 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %26
  %38 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %4, align 8
  %46 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %52 = call i32 @dma_unmap_single(i32* %44, i64 %47, i64 %50, i32 %51)
  br label %64

53:                                               ; preds = %37
  %54 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %4, align 8
  %57 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %63 = call i32 @dma_unmap_single(i32* %55, i64 %58, i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %53, %42
  %65 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %4, align 8
  %66 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %26
  %68 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %4, align 8
  %69 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %4, align 8
  %74 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @dev_kfree_skb(i32* %75)
  %77 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %4, align 8
  %78 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %77, i32 0, i32 3
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %72, %67
  %80 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %4, align 8
  %81 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %110

84:                                               ; preds = %79
  %85 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %4, align 8
  %86 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %4, align 8
  %93 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = sdiv i32 %95, 2
  %97 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %98 = call i32 @dma_unmap_page(i32* %91, i64 %94, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %89, %84
  %100 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %4, align 8
  %101 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @put_page(i32* %102)
  %104 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %4, align 8
  %105 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %104, i32 0, i32 2
  store i32* null, i32** %105, align 8
  %106 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %4, align 8
  %107 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %4, align 8
  %109 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %99, %79
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %7, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %20

114:                                              ; preds = %20
  %115 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %116 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = zext i32 %117 to i64
  %119 = mul i64 40, %118
  store i64 %119, i64* %6, align 8
  %120 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %121 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %120, i32 0, i32 7
  %122 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %121, align 8
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @memset(%struct.igbvf_buffer* %122, i32 0, i64 %123)
  %125 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %126 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %125, i32 0, i32 6
  %127 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %126, align 8
  %128 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %129 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @memset(%struct.igbvf_buffer* %127, i32 0, i64 %130)
  %132 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %133 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %132, i32 0, i32 5
  store i64 0, i64* %133, align 8
  %134 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %135 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %134, i32 0, i32 4
  store i64 0, i64* %135, align 8
  %136 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %137 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %141 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %139, %142
  %144 = call i32 @writel(i32 0, i64 %143)
  %145 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %146 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %150 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %148, %151
  %153 = call i32 @writel(i32 0, i64 %152)
  br label %154

154:                                              ; preds = %114, %18
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i64, i64, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @dma_unmap_page(i32*, i64, i32, i32) #1

declare dso_local i32 @put_page(i32*) #1

declare dso_local i32 @memset(%struct.igbvf_buffer*, i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
