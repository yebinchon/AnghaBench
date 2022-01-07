; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcm_enet_priv = type { i32, i32*, i64, i32, i32, i32, %struct.bcm_enet_desc*, i32, i32, %struct.bcm_enet_desc*, i32, i32*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.bcm_enet_desc = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@ENET_IRMASK_REG = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bcm_enet_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enet_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bcm_enet_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm_enet_desc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.bcm_enet_priv* %8, %struct.bcm_enet_priv** %3, align 8
  %9 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %10 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %9, i32 0, i32 18
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @netif_stop_queue(%struct.net_device* %13)
  %15 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %16 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %15, i32 0, i32 17
  %17 = call i32 @napi_disable(i32* %16)
  %18 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %19 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %24 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @phy_stop(i32* %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %29 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %28, i32 0, i32 16
  %30 = call i32 @del_timer_sync(i32* %29)
  %31 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %32 = load i32, i32* @ENET_IRMASK_REG, align 4
  %33 = call i32 @enet_writel(%struct.bcm_enet_priv* %31, i32 0, i32 %32)
  %34 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %35 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %36 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %35, i32 0, i32 14
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ENETDMA_IRMASK_REG(i32 %37)
  %39 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %34, i32 0, i32 %38)
  %40 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %41 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %42 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %41, i32 0, i32 15
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ENETDMA_IRMASK_REG(i32 %43)
  %45 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %40, i32 0, i32 %44)
  %46 = call i32 (...) @flush_scheduled_work()
  %47 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %48 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %49 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %48, i32 0, i32 15
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bcm_enet_disable_dma(%struct.bcm_enet_priv* %47, i32 %50)
  %52 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %53 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %54 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %53, i32 0, i32 14
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @bcm_enet_disable_dma(%struct.bcm_enet_priv* %52, i32 %55)
  %57 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %58 = call i32 @bcm_enet_disable_mac(%struct.bcm_enet_priv* %57)
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = call i32 @bcm_enet_tx_reclaim(%struct.net_device* %59, i32 1)
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %101, %27
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %64 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %104

67:                                               ; preds = %61
  %68 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %69 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %68, i32 0, i32 12
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  br label %101

77:                                               ; preds = %67
  %78 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %79 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %78, i32 0, i32 9
  %80 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %80, i64 %82
  store %struct.bcm_enet_desc* %83, %struct.bcm_enet_desc** %6, align 8
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %6, align 8
  %86 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %89 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %88, i32 0, i32 13
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %92 = call i32 @dma_unmap_single(%struct.device* %84, i32 %87, i32 %90, i32 %91)
  %93 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %94 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %93, i32 0, i32 12
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @kfree_skb(i32 %99)
  br label %101

101:                                              ; preds = %77, %76
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %61

104:                                              ; preds = %61
  %105 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %106 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %105, i32 0, i32 12
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @kfree(i32* %107)
  %109 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %110 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %109, i32 0, i32 11
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @kfree(i32* %111)
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %115 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %118 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %117, i32 0, i32 9
  %119 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %118, align 8
  %120 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %121 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @dma_free_coherent(%struct.device* %113, i32 %116, %struct.bcm_enet_desc* %119, i32 %122)
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %126 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %129 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %128, i32 0, i32 6
  %130 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %129, align 8
  %131 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %132 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @dma_free_coherent(%struct.device* %124, i32 %127, %struct.bcm_enet_desc* %130, i32 %133)
  %135 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %136 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.net_device*, %struct.net_device** %2, align 8
  %139 = call i32 @free_irq(i32 %137, %struct.net_device* %138)
  %140 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %141 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.net_device*, %struct.net_device** %2, align 8
  %144 = call i32 @free_irq(i32 %142, %struct.net_device* %143)
  %145 = load %struct.net_device*, %struct.net_device** %2, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.net_device*, %struct.net_device** %2, align 8
  %149 = call i32 @free_irq(i32 %147, %struct.net_device* %148)
  %150 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %151 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %104
  %155 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %156 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @phy_disconnect(i32* %157)
  %159 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %160 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %159, i32 0, i32 1
  store i32* null, i32** %160, align 8
  br label %161

161:                                              ; preds = %154, %104
  ret i32 0
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @phy_stop(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @enet_writel(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @enet_dma_writel(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @ENETDMA_IRMASK_REG(i32) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @bcm_enet_disable_dma(%struct.bcm_enet_priv*, i32) #1

declare dso_local i32 @bcm_enet_disable_mac(%struct.bcm_enet_priv*) #1

declare dso_local i32 @bcm_enet_tx_reclaim(%struct.net_device*, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, %struct.bcm_enet_desc*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @phy_disconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
