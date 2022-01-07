; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_free_desc_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_free_desc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.pci_dev*, %struct.e1000_rx_ring, %struct.e1000_tx_ring }
%struct.pci_dev = type { i32 }
%struct.e1000_rx_ring = type { i32, %struct.TYPE_2__*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.e1000_tx_ring = type { i32, %struct.TYPE_2__*, i32*, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_free_desc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_free_desc_rings(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_tx_ring*, align 8
  %4 = alloca %struct.e1000_rx_ring*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %7 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %7, i32 0, i32 2
  store %struct.e1000_tx_ring* %8, %struct.e1000_tx_ring** %3, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 1
  store %struct.e1000_rx_ring* %10, %struct.e1000_rx_ring** %4, align 8
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  %14 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %86

18:                                               ; preds = %1
  %19 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %86

23:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %82, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %85

30:                                               ; preds = %24
  %31 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %30
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @DMA_TO_DEVICE, align 4
  %60 = call i32 @dma_unmap_single(i32* %42, i64 %50, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %40, %30
  %62 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %61
  %72 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @dev_kfree_skb(i64 %79)
  br label %81

81:                                               ; preds = %71, %61
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %24

85:                                               ; preds = %24
  br label %86

86:                                               ; preds = %85, %18, %1
  %87 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %88 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %159

91:                                               ; preds = %86
  %92 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %93 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = icmp ne %struct.TYPE_2__* %94, null
  br i1 %95, label %96, label %159

96:                                               ; preds = %91
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %155, %96
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %100 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %158

103:                                              ; preds = %97
  %104 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %105 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %103
  %114 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %115 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %114, i32 0, i32 0
  %116 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %117 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %125 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %133 = call i32 @dma_unmap_single(i32* %115, i64 %123, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %113, %103
  %135 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %136 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %135, i32 0, i32 1
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %134
  %145 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %146 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %145, i32 0, i32 1
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @dev_kfree_skb(i64 %152)
  br label %154

154:                                              ; preds = %144, %134
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %97

158:                                              ; preds = %97
  br label %159

159:                                              ; preds = %158, %91, %86
  %160 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %161 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %179

164:                                              ; preds = %159
  %165 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %166 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %165, i32 0, i32 0
  %167 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %168 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %171 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %174 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @dma_free_coherent(i32* %166, i32 %169, i32* %172, i32 %175)
  %177 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %178 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %177, i32 0, i32 2
  store i32* null, i32** %178, align 8
  br label %179

179:                                              ; preds = %164, %159
  %180 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %181 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %199

184:                                              ; preds = %179
  %185 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %186 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %185, i32 0, i32 0
  %187 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %188 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %191 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %194 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @dma_free_coherent(i32* %186, i32 %189, i32* %192, i32 %195)
  %197 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %198 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %197, i32 0, i32 2
  store i32* null, i32** %198, align 8
  br label %199

199:                                              ; preds = %184, %179
  %200 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %201 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %200, i32 0, i32 1
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = call i32 @kfree(%struct.TYPE_2__* %202)
  %204 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %205 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %204, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %205, align 8
  %206 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %207 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %206, i32 0, i32 1
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = call i32 @kfree(%struct.TYPE_2__* %208)
  %210 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %211 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %210, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %211, align 8
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
