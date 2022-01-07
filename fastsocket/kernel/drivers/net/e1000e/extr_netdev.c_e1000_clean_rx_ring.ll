; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_ring = type { i32, i32, %struct.e1000_adapter*, i32, i64, i64, i32, i32, i32*, %struct.e1000_buffer* }
%struct.e1000_adapter = type { i64, i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.e1000_buffer = type { %struct.e1000_ps_page*, i32*, i32*, i64 }
%struct.e1000_ps_page = type { i32*, i64 }

@e1000_clean_rx_irq = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@e1000_clean_jumbo_rx_irq = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@e1000_clean_rx_irq_ps = common dso_local global i64 0, align 8
@PS_PAGE_BUFFERS = common dso_local global i32 0, align 4
@FLAG2_IS_DISCARDING = common dso_local global i32 0, align 4
@FLAG2_PCIM2PCI_ARBITER_WA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_ring*)* @e1000_clean_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_clean_rx_ring(%struct.e1000_ring* %0) #0 {
  %2 = alloca %struct.e1000_ring*, align 8
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_buffer*, align 8
  %5 = alloca %struct.e1000_ps_page*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_ring* %0, %struct.e1000_ring** %2, align 8
  %9 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %9, i32 0, i32 2
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %10, align 8
  store %struct.e1000_adapter* %11, %struct.e1000_adapter** %3, align 8
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %148, %1
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %151

21:                                               ; preds = %15
  %22 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %23 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %22, i32 0, i32 9
  %24 = load %struct.e1000_buffer*, %struct.e1000_buffer** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %24, i64 %26
  store %struct.e1000_buffer* %27, %struct.e1000_buffer** %4, align 8
  %28 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %86

32:                                               ; preds = %21
  %33 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @e1000_clean_rx_irq, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %48 = call i32 @dma_unmap_single(i32* %40, i64 %43, i32 %46, i32 %47)
  br label %83

49:                                               ; preds = %32
  %50 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @e1000_clean_jumbo_rx_irq, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %59 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %63 = call i32 @dma_unmap_page(i32* %57, i64 %60, i32 %61, i32 %62)
  br label %82

64:                                               ; preds = %49
  %65 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @e1000_clean_rx_irq_ps, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %74 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %80 = call i32 @dma_unmap_single(i32* %72, i64 %75, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %70, %64
  br label %82

82:                                               ; preds = %81, %55
  br label %83

83:                                               ; preds = %82, %38
  %84 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %85 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %21
  %87 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %88 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %93 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @put_page(i32* %94)
  %96 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %97 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %96, i32 0, i32 2
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %91, %86
  %99 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %100 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %105 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @dev_kfree_skb(i32* %106)
  %108 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %109 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %108, i32 0, i32 1
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %103, %98
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %144, %110
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @PS_PAGE_BUFFERS, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %147

115:                                              ; preds = %111
  %116 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %117 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %116, i32 0, i32 0
  %118 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %118, i64 %120
  store %struct.e1000_ps_page* %121, %struct.e1000_ps_page** %5, align 8
  %122 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %5, align 8
  %123 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %115
  br label %147

127:                                              ; preds = %115
  %128 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 0
  %130 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %5, align 8
  %131 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* @PAGE_SIZE, align 4
  %134 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %135 = call i32 @dma_unmap_page(i32* %129, i64 %132, i32 %133, i32 %134)
  %136 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %5, align 8
  %137 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %136, i32 0, i32 1
  store i64 0, i64* %137, align 8
  %138 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %5, align 8
  %139 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @put_page(i32* %140)
  %142 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %5, align 8
  %143 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %142, i32 0, i32 0
  store i32* null, i32** %143, align 8
  br label %144

144:                                              ; preds = %127
  %145 = load i32, i32* %8, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %111

147:                                              ; preds = %126, %111
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %7, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %15

151:                                              ; preds = %15
  %152 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %153 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %152, i32 0, i32 8
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %158 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %157, i32 0, i32 8
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @dev_kfree_skb(i32* %159)
  %161 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %162 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %161, i32 0, i32 8
  store i32* null, i32** %162, align 8
  br label %163

163:                                              ; preds = %156, %151
  %164 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %165 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %168 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @memset(i32 %166, i32 0, i32 %169)
  %171 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %172 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %171, i32 0, i32 5
  store i64 0, i64* %172, align 8
  %173 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %174 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %173, i32 0, i32 4
  store i64 0, i64* %174, align 8
  %175 = load i32, i32* @FLAG2_IS_DISCARDING, align 4
  %176 = xor i32 %175, -1
  %177 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %178 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = and i32 %179, %176
  store i32 %180, i32* %178, align 8
  %181 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %182 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @writel(i32 0, i32 %183)
  %185 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %186 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %185, i32 0, i32 2
  %187 = load %struct.e1000_adapter*, %struct.e1000_adapter** %186, align 8
  %188 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @FLAG2_PCIM2PCI_ARBITER_WA, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %163
  %194 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %195 = call i32 @e1000e_update_rdt_wa(%struct.e1000_ring* %194, i32 0)
  br label %201

196:                                              ; preds = %163
  %197 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %198 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @writel(i32 0, i32 %199)
  br label %201

201:                                              ; preds = %196, %193
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_page(i32*, i64, i32, i32) #1

declare dso_local i32 @put_page(i32*) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @e1000e_update_rdt_wa(%struct.e1000_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
