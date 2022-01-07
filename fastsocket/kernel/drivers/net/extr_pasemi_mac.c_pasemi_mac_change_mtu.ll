; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pasemi_mac.c_pasemi_mac_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pasemi_mac.c_pasemi_mac_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pasemi_mac = type { i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i64 }

@PE_MIN_MTU = common dso_local global i32 0, align 4
@PE_MAX_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PAS_MAC_CFG_MACCFG = common dso_local global i32 0, align 4
@PAS_MAC_CFG_MACCFG_MAXF_M = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@LOCAL_SKB_ALIGN = common dso_local global i64 0, align 8
@PAS_DMA_RXINT_RCMDSTA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @pasemi_mac_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_mac_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pasemi_mac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.pasemi_mac* @netdev_priv(%struct.net_device* %11)
  store %struct.pasemi_mac* %12, %struct.pasemi_mac** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PE_MIN_MTU, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PE_MAX_MTU, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %130

23:                                               ; preds = %16
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call i32 @netif_running(%struct.net_device* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %30 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %29, i32 0, i32 0
  %31 = call i32 @napi_disable(i32* %30)
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i32 @netif_tx_disable(%struct.net_device* %32)
  %34 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %35 = call i32 @pasemi_mac_intf_disable(%struct.pasemi_mac* %34)
  %36 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %37 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PAS_DMA_RXINT_RCMDSTA(i32 %38)
  %40 = call i32 @read_dma_reg(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %42 = call i32 @pasemi_mac_pause_rxint(%struct.pasemi_mac* %41)
  %43 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %44 = call %struct.TYPE_3__* @rx_ring(%struct.pasemi_mac* %43)
  %45 = load i64, i64* @RX_RING_SIZE, align 8
  %46 = call i32 @pasemi_mac_clean_rx(%struct.TYPE_3__* %44, i64 %45)
  %47 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %48 = call i32 @pasemi_mac_free_rx_buffers(%struct.pasemi_mac* %47)
  br label %49

49:                                               ; preds = %28, %23
  %50 = load i32, i32* %5, align 4
  %51 = icmp sgt i32 %50, 1500
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %54 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %52
  %58 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %59 = call i32 @pasemi_mac_setup_csrings(%struct.pasemi_mac* %58)
  %60 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %61 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  br label %102

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %52, %49
  %69 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %70 = load i32, i32* @PAS_MAC_CFG_MACCFG, align 4
  %71 = call i32 @read_mac_reg(%struct.pasemi_mac* %69, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @PAS_MAC_CFG_MACCFG_MAXF_M, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* @ETH_HLEN, align 8
  %79 = add nsw i64 %77, %78
  %80 = add nsw i64 %79, 4
  %81 = call i32 @PAS_MAC_CFG_MACCFG_MAXF(i64 %80)
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %85 = load i32, i32* @PAS_MAC_CFG_MACCFG, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @write_mac_reg(%struct.pasemi_mac* %84, i32 %85, i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.net_device*, %struct.net_device** %4, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @ETH_HLEN, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i64, i64* @ETH_FCS_LEN, align 8
  %96 = add nsw i64 %94, %95
  %97 = load i64, i64* @LOCAL_SKB_ALIGN, align 8
  %98 = add nsw i64 %96, %97
  %99 = add nsw i64 %98, 128
  %100 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %101 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %68, %64
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %102
  %106 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %107 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @PAS_DMA_RXINT_RCMDSTA(i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @PAS_DMA_RXINT_RCMDSTA_EN, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @write_dma_reg(i32 %109, i32 %112)
  %114 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %115 = call %struct.TYPE_3__* @rx_ring(%struct.pasemi_mac* %114)
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  %117 = load %struct.net_device*, %struct.net_device** %4, align 8
  %118 = load i64, i64* @RX_RING_SIZE, align 8
  %119 = sub nsw i64 %118, 1
  %120 = call i32 @pasemi_mac_replenish_rx_ring(%struct.net_device* %117, i64 %119)
  %121 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %122 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %121, i32 0, i32 0
  %123 = call i32 @napi_enable(i32* %122)
  %124 = load %struct.net_device*, %struct.net_device** %4, align 8
  %125 = call i32 @netif_start_queue(%struct.net_device* %124)
  %126 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %127 = call i32 @pasemi_mac_intf_enable(%struct.pasemi_mac* %126)
  br label %128

128:                                              ; preds = %105, %102
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %20
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.pasemi_mac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @pasemi_mac_intf_disable(%struct.pasemi_mac*) #1

declare dso_local i32 @read_dma_reg(i32) #1

declare dso_local i32 @PAS_DMA_RXINT_RCMDSTA(i32) #1

declare dso_local i32 @pasemi_mac_pause_rxint(%struct.pasemi_mac*) #1

declare dso_local i32 @pasemi_mac_clean_rx(%struct.TYPE_3__*, i64) #1

declare dso_local %struct.TYPE_3__* @rx_ring(%struct.pasemi_mac*) #1

declare dso_local i32 @pasemi_mac_free_rx_buffers(%struct.pasemi_mac*) #1

declare dso_local i32 @pasemi_mac_setup_csrings(%struct.pasemi_mac*) #1

declare dso_local i32 @read_mac_reg(%struct.pasemi_mac*, i32) #1

declare dso_local i32 @PAS_MAC_CFG_MACCFG_MAXF(i64) #1

declare dso_local i32 @write_mac_reg(%struct.pasemi_mac*, i32, i32) #1

declare dso_local i32 @write_dma_reg(i32, i32) #1

declare dso_local i32 @pasemi_mac_replenish_rx_ring(%struct.net_device*, i64) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @pasemi_mac_intf_enable(%struct.pasemi_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
