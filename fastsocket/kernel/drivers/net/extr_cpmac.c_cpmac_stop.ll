; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cpmac.c_cpmac_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cpmac.c_cpmac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.cpmac_priv = type { i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.resource = type { i64, i64 }

@CPMAC_MBP = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@CPMAC_QUEUES = common dso_local global i64 0, align 8
@CPMAC_SKB_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cpmac_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpmac_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpmac_priv*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.cpmac_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.cpmac_priv* %7, %struct.cpmac_priv** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %8)
  %10 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %11 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %10, i32 0, i32 8
  %12 = call i32 @cancel_work_sync(i32* %11)
  %13 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %14 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %13, i32 0, i32 7
  %15 = call i32 @napi_disable(i32* %14)
  %16 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %17 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @phy_stop(i32 %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @cpmac_hw_stop(%struct.net_device* %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %32, %1
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %27 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @CPMAC_TX_PTR(i32 %29)
  %31 = call i32 @cpmac_write(i32 %28, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %22

35:                                               ; preds = %22
  %36 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %37 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CPMAC_RX_PTR(i32 0)
  %40 = call i32 @cpmac_write(i32 %38, i32 %39, i32 0)
  %41 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %42 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CPMAC_MBP, align 4
  %45 = call i32 @cpmac_write(i32 %43, i32 %44, i32 0)
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = call i32 @free_irq(i32 %48, %struct.net_device* %49)
  %51 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %52 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @iounmap(i32 %53)
  %55 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %56 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IORESOURCE_MEM, align 4
  %59 = call %struct.resource* @platform_get_resource_byname(i32 %57, i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %59, %struct.resource** %5, align 8
  %60 = load %struct.resource*, %struct.resource** %5, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.resource*, %struct.resource** %5, align 8
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.resource*, %struct.resource** %5, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = call i32 @release_mem_region(i64 %62, i64 %69)
  %71 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %72 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* @CPMAC_QUEUES, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %77 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %76, i32 0, i32 3
  store %struct.TYPE_2__* %75, %struct.TYPE_2__** %77, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %118, %35
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %81 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %121

84:                                               ; preds = %78
  %85 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %86 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %84
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 0
  %97 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %98 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @CPMAC_SKB_SIZE, align 4
  %106 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %107 = call i32 @dma_unmap_single(i32* %96, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %109 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %108, i32 0, i32 3
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @kfree_skb(i64 %115)
  br label %117

117:                                              ; preds = %94, %84
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %3, align 4
  br label %78

121:                                              ; preds = %78
  %122 = load %struct.net_device*, %struct.net_device** %2, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 0
  %124 = load i64, i64* @CPMAC_QUEUES, align 8
  %125 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %126 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = add i64 %124, %128
  %130 = mul i64 4, %129
  %131 = trunc i64 %130 to i32
  %132 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %133 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %132, i32 0, i32 2
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %136 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @dma_free_coherent(i32* %123, i32 %131, %struct.TYPE_2__* %134, i32 %137)
  ret i32 0
}

declare dso_local %struct.cpmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @cpmac_hw_stop(%struct.net_device*) #1

declare dso_local i32 @cpmac_write(i32, i32, i32) #1

declare dso_local i32 @CPMAC_TX_PTR(i32) #1

declare dso_local i32 @CPMAC_RX_PTR(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(i32, i32, i8*) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
