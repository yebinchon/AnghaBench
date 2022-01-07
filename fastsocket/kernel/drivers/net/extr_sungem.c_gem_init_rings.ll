; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_init_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i32, i64, %struct.sk_buff**, i64, i64, i64, i64, %struct.net_device*, %struct.gem_init_block* }
%struct.sk_buff = type { i32, %struct.net_device* }
%struct.net_device = type { i64 }
%struct.gem_init_block = type { %struct.gem_txd*, %struct.gem_rxd* }
%struct.gem_txd = type { i64, i64 }
%struct.gem_rxd = type { i8*, i8* }

@ETH_HLEN = common dso_local global i64 0, align 8
@VLAN_HLEN = common dso_local global i64 0, align 8
@VLAN_ETH_FRAME_LEN = common dso_local global i64 0, align 8
@RX_RING_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RX_OFFSET = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem*)* @gem_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_init_rings(%struct.gem* %0) #0 {
  %2 = alloca %struct.gem*, align 8
  %3 = alloca %struct.gem_init_block*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.gem_rxd*, align 8
  %9 = alloca %struct.gem_txd*, align 8
  store %struct.gem* %0, %struct.gem** %2, align 8
  %10 = load %struct.gem*, %struct.gem** %2, align 8
  %11 = getelementptr inbounds %struct.gem, %struct.gem* %10, i32 0, i32 8
  %12 = load %struct.gem_init_block*, %struct.gem_init_block** %11, align 8
  store %struct.gem_init_block* %12, %struct.gem_init_block** %3, align 8
  %13 = load %struct.gem*, %struct.gem** %2, align 8
  %14 = getelementptr inbounds %struct.gem, %struct.gem* %13, i32 0, i32 7
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  %16 = load %struct.gem*, %struct.gem** %2, align 8
  %17 = getelementptr inbounds %struct.gem, %struct.gem* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.gem*, %struct.gem** %2, align 8
  %19 = getelementptr inbounds %struct.gem, %struct.gem* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.gem*, %struct.gem** %2, align 8
  %21 = getelementptr inbounds %struct.gem, %struct.gem* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.gem*, %struct.gem** %2, align 8
  %23 = getelementptr inbounds %struct.gem, %struct.gem* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load %struct.gem*, %struct.gem** %2, align 8
  %25 = call i32 @gem_clean_rings(%struct.gem* %24)
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ETH_HLEN, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* @VLAN_HLEN, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i64, i64* @VLAN_ETH_FRAME_LEN, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i64 @max(i64 %32, i32 %34)
  %36 = load %struct.gem*, %struct.gem** %2, align 8
  %37 = getelementptr inbounds %struct.gem, %struct.gem* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %106, %1
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @RX_RING_SIZE, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %109

42:                                               ; preds = %38
  %43 = load %struct.gem_init_block*, %struct.gem_init_block** %3, align 8
  %44 = getelementptr inbounds %struct.gem_init_block, %struct.gem_init_block* %43, i32 0, i32 1
  %45 = load %struct.gem_rxd*, %struct.gem_rxd** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %45, i64 %47
  store %struct.gem_rxd* %48, %struct.gem_rxd** %8, align 8
  %49 = load %struct.gem*, %struct.gem** %2, align 8
  %50 = call i32 @RX_BUF_ALLOC_SIZE(%struct.gem* %49)
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  %52 = call %struct.sk_buff* @gem_alloc_skb(i32 %50, i32 %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %7, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %42
  %56 = load %struct.gem_rxd*, %struct.gem_rxd** %8, align 8
  %57 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %56, i32 0, i32 1
  store i8* null, i8** %57, align 8
  %58 = load %struct.gem_rxd*, %struct.gem_rxd** %8, align 8
  %59 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %58, i32 0, i32 0
  store i8* null, i8** %59, align 8
  br label %106

60:                                               ; preds = %42
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = load %struct.gem*, %struct.gem** %2, align 8
  %63 = getelementptr inbounds %struct.gem, %struct.gem* %62, i32 0, i32 2
  %64 = load %struct.sk_buff**, %struct.sk_buff*** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %64, i64 %66
  store %struct.sk_buff* %61, %struct.sk_buff** %67, align 8
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  store %struct.net_device* %68, %struct.net_device** %70, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = load %struct.gem*, %struct.gem** %2, align 8
  %73 = getelementptr inbounds %struct.gem, %struct.gem* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @RX_OFFSET, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @skb_put(%struct.sk_buff* %71, i64 %76)
  %78 = load %struct.gem*, %struct.gem** %2, align 8
  %79 = getelementptr inbounds %struct.gem, %struct.gem* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @virt_to_page(i32 %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @offset_in_page(i32 %87)
  %89 = load %struct.gem*, %struct.gem** %2, align 8
  %90 = call i32 @RX_BUF_ALLOC_SIZE(%struct.gem* %89)
  %91 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %92 = call i32 @pci_map_page(i32 %80, i32 %84, i32 %88, i32 %90, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i8* @cpu_to_le64(i32 %93)
  %95 = load %struct.gem_rxd*, %struct.gem_rxd** %8, align 8
  %96 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = call i32 (...) @wmb()
  %98 = load %struct.gem*, %struct.gem** %2, align 8
  %99 = call i32 @RXDCTRL_FRESH(%struct.gem* %98)
  %100 = call i8* @cpu_to_le64(i32 %99)
  %101 = load %struct.gem_rxd*, %struct.gem_rxd** %8, align 8
  %102 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = load i64, i64* @RX_OFFSET, align 8
  %105 = call i32 @skb_reserve(%struct.sk_buff* %103, i64 %104)
  br label %106

106:                                              ; preds = %60, %55
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %38

109:                                              ; preds = %38
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %126, %109
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @TX_RING_SIZE, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = load %struct.gem_init_block*, %struct.gem_init_block** %3, align 8
  %116 = getelementptr inbounds %struct.gem_init_block, %struct.gem_init_block* %115, i32 0, i32 0
  %117 = load %struct.gem_txd*, %struct.gem_txd** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.gem_txd, %struct.gem_txd* %117, i64 %119
  store %struct.gem_txd* %120, %struct.gem_txd** %9, align 8
  %121 = load %struct.gem_txd*, %struct.gem_txd** %9, align 8
  %122 = getelementptr inbounds %struct.gem_txd, %struct.gem_txd* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  %123 = call i32 (...) @wmb()
  %124 = load %struct.gem_txd*, %struct.gem_txd** %9, align 8
  %125 = getelementptr inbounds %struct.gem_txd, %struct.gem_txd* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  br label %126

126:                                              ; preds = %114
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %110

129:                                              ; preds = %110
  %130 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @gem_clean_rings(%struct.gem*) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local %struct.sk_buff* @gem_alloc_skb(i32, i32) #1

declare dso_local i32 @RX_BUF_ALLOC_SIZE(%struct.gem*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @pci_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @RXDCTRL_FRESH(%struct.gem*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
