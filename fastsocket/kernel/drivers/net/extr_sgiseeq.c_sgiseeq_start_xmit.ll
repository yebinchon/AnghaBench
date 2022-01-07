; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sgiseeq.c_sgiseeq_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sgiseeq.c_sgiseeq_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sgiseeq_private = type { i32, i32, i32, %struct.sgiseeq_tx_desc*, %struct.hpc3_ethregs* }
%struct.sgiseeq_tx_desc = type { %struct.TYPE_6__, %struct.sk_buff* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.hpc3_ethregs = type { i32 }

@ETH_ZLEN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@HPCDMA_BCNT = common dso_local global i32 0, align 4
@HPCDMA_XIU = common dso_local global i32 0, align 4
@HPCDMA_EOXP = common dso_local global i32 0, align 4
@HPCDMA_XIE = common dso_local global i32 0, align 4
@HPCDMA_EOX = common dso_local global i32 0, align 4
@HPC3_ETXCTRL_ACTIVE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @sgiseeq_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgiseeq_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sgiseeq_private*, align 8
  %7 = alloca %struct.hpc3_ethregs*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sgiseeq_tx_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sgiseeq_tx_desc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.sgiseeq_private* @netdev_priv(%struct.net_device* %13)
  store %struct.sgiseeq_private* %14, %struct.sgiseeq_private** %6, align 8
  %15 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %16 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %15, i32 0, i32 4
  %17 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %16, align 8
  store %struct.hpc3_ethregs* %17, %struct.hpc3_ethregs** %7, align 8
  %18 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %19 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %18, i32 0, i32 2
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @ETH_ZLEN, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* @ETH_ZLEN, align 4
  %31 = call i64 @skb_padto(%struct.sk_buff* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %34, i32* %3, align 4
  br label %152

35:                                               ; preds = %28
  %36 = load i32, i32* @ETH_ZLEN, align 4
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %35, %2
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %38
  store i32 %43, i32* %41, align 4
  %44 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %45 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %11, align 4
  %47 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %48 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %47, i32 0, i32 3
  %49 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %49, i64 %51
  store %struct.sgiseeq_tx_desc* %52, %struct.sgiseeq_tx_desc** %9, align 8
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %55 = call i32 @dma_sync_desc_cpu(%struct.net_device* %53, %struct.sgiseeq_tx_desc* %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %58 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %57, i32 0, i32 1
  store %struct.sk_buff* %56, %struct.sk_buff** %58, align 8
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @DMA_TO_DEVICE, align 4
  %68 = call i32 @dma_map_single(i32 %62, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %70 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @HPCDMA_BCNT, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @HPCDMA_XIU, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @HPCDMA_EOXP, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @HPCDMA_XIE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @HPCDMA_EOX, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %84 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.net_device*, %struct.net_device** %5, align 8
  %87 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %88 = call i32 @dma_sync_desc_dev(%struct.net_device* %86, %struct.sgiseeq_tx_desc* %87)
  %89 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %90 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %93 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %91, %94
  br i1 %95, label %96, label %118

96:                                               ; preds = %37
  %97 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %98 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %97, i32 0, i32 3
  %99 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %98, align 8
  %100 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %101 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @PREV_TX(i32 %102)
  %104 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %99, i64 %103
  store %struct.sgiseeq_tx_desc* %104, %struct.sgiseeq_tx_desc** %12, align 8
  %105 = load %struct.net_device*, %struct.net_device** %5, align 8
  %106 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %12, align 8
  %107 = call i32 @dma_sync_desc_cpu(%struct.net_device* %105, %struct.sgiseeq_tx_desc* %106)
  %108 = load i32, i32* @HPCDMA_EOX, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %12, align 8
  %111 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %109
  store i32 %114, i32* %112, align 8
  %115 = load %struct.net_device*, %struct.net_device** %5, align 8
  %116 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %12, align 8
  %117 = call i32 @dma_sync_desc_dev(%struct.net_device* %115, %struct.sgiseeq_tx_desc* %116)
  br label %118

118:                                              ; preds = %96, %37
  %119 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %120 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @NEXT_TX(i32 %121)
  %123 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %124 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %7, align 8
  %126 = getelementptr inbounds %struct.hpc3_ethregs, %struct.hpc3_ethregs* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @HPC3_ETXCTRL_ACTIVE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %118
  %132 = load %struct.net_device*, %struct.net_device** %5, align 8
  %133 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %134 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %7, align 8
  %135 = call i32 @kick_tx(%struct.net_device* %132, %struct.sgiseeq_private* %133, %struct.hpc3_ethregs* %134)
  br label %136

136:                                              ; preds = %131, %118
  %137 = load i32, i32* @jiffies, align 4
  %138 = load %struct.net_device*, %struct.net_device** %5, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %141 = call i32 @TX_BUFFS_AVAIL(%struct.sgiseeq_private* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %136
  %144 = load %struct.net_device*, %struct.net_device** %5, align 8
  %145 = call i32 @netif_stop_queue(%struct.net_device* %144)
  br label %146

146:                                              ; preds = %143, %136
  %147 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %148 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %147, i32 0, i32 2
  %149 = load i64, i64* %8, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  %151 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %146, %33
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.sgiseeq_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @skb_padto(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_sync_desc_cpu(%struct.net_device*, %struct.sgiseeq_tx_desc*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_sync_desc_dev(%struct.net_device*, %struct.sgiseeq_tx_desc*) #1

declare dso_local i64 @PREV_TX(i32) #1

declare dso_local i32 @NEXT_TX(i32) #1

declare dso_local i32 @kick_tx(%struct.net_device*, %struct.sgiseeq_private*, %struct.hpc3_ethregs*) #1

declare dso_local i32 @TX_BUFFS_AVAIL(%struct.sgiseeq_private*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
