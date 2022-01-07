; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.bcm_enet_priv = type { i64, i64, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__*, %struct.sk_buff**, %struct.bcm_enet_desc* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bcm_enet_desc = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"xmit called with no tx desc available?\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMADESC_LENGTH_SHIFT = common dso_local global i32 0, align 4
@DMADESC_LENGTH_MASK = common dso_local global i32 0, align 4
@DMADESC_ESOP_MASK = common dso_local global i32 0, align 4
@DMADESC_APPEND_CRC = common dso_local global i32 0, align 4
@DMADESC_OWNER_MASK = common dso_local global i32 0, align 4
@DMADESC_WRAP_MASK = common dso_local global i32 0, align 4
@ENETDMA_CHANCFG_EN_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @bcm_enet_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enet_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bcm_enet_priv*, align 8
  %6 = alloca %struct.bcm_enet_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.bcm_enet_priv* %10, %struct.bcm_enet_priv** %5, align 8
  %11 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %12 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %11, i32 0, i32 2
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %15 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i32 @netif_stop_queue(%struct.net_device* %23)
  %25 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %26 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %25, i32 0, i32 6
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %30, i32* %8, align 4
  br label %134

31:                                               ; preds = %2
  %32 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %33 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %32, i32 0, i32 8
  %34 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %33, align 8
  %35 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %36 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %34, i64 %37
  store %struct.bcm_enet_desc* %38, %struct.bcm_enet_desc** %6, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %41 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %40, i32 0, i32 7
  %42 = load %struct.sk_buff**, %struct.sk_buff*** %41, align 8
  %43 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %44 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %42, i64 %45
  store %struct.sk_buff* %39, %struct.sk_buff** %46, align 8
  %47 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %48 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %47, i32 0, i32 6
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DMA_TO_DEVICE, align 4
  %58 = call i32 @dma_map_single(i32* %50, i32 %53, i32 %56, i32 %57)
  %59 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %6, align 8
  %60 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DMADESC_LENGTH_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* @DMADESC_LENGTH_MASK, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @DMADESC_ESOP_MASK, align 4
  %69 = load i32, i32* @DMADESC_APPEND_CRC, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @DMADESC_OWNER_MASK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %76 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %80 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %83 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %31
  %87 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %88 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* @DMADESC_WRAP_MASK, align 4
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %86, %31
  %93 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %94 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %94, align 4
  %97 = call i32 (...) @wmb()
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %6, align 8
  %100 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = call i32 (...) @wmb()
  %102 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %103 = load i32, i32* @ENETDMA_CHANCFG_EN_MASK, align 4
  %104 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %105 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @ENETDMA_CHANCFG_REG(i32 %106)
  %108 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %102, i32 %103, i32 %107)
  %109 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %110 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %92
  %114 = load %struct.net_device*, %struct.net_device** %4, align 8
  %115 = call i32 @netif_stop_queue(%struct.net_device* %114)
  br label %116

116:                                              ; preds = %113, %92
  %117 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %121 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, %119
  store i32 %124, i32* %122, align 4
  %125 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %126 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* @jiffies, align 4
  %131 = load %struct.net_device*, %struct.net_device** %4, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %116, %22
  %135 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %136 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %135, i32 0, i32 2
  %137 = call i32 @spin_unlock(i32* %136)
  %138 = load i32, i32* %8, align 4
  ret i32 %138
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @enet_dma_writel(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @ENETDMA_CHANCFG_REG(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
