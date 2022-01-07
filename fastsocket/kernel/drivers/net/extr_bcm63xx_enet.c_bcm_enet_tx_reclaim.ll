; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_tx_reclaim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_tx_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcm_enet_priv = type { i64, i64, i64, %struct.TYPE_4__, i32, %struct.TYPE_3__*, %struct.sk_buff**, %struct.bcm_enet_desc* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.bcm_enet_desc = type { i32, i32 }

@DMADESC_OWNER_MASK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMADESC_UNDER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bcm_enet_tx_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enet_tx_reclaim(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_enet_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcm_enet_desc*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.bcm_enet_priv* %10, %struct.bcm_enet_priv** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %106, %2
  %12 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %13 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %16 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %111

19:                                               ; preds = %11
  %20 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %21 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %20, i32 0, i32 4
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %24 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %23, i32 0, i32 7
  %25 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %24, align 8
  %26 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %27 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %25, i64 %28
  store %struct.bcm_enet_desc* %29, %struct.bcm_enet_desc** %7, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %19
  %33 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %7, align 8
  %34 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DMADESC_OWNER_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %41 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %40, i32 0, i32 4
  %42 = call i32 @spin_unlock(i32* %41)
  br label %111

43:                                               ; preds = %32, %19
  %44 = call i32 (...) @rmb()
  %45 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %46 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %45, i32 0, i32 6
  %47 = load %struct.sk_buff**, %struct.sk_buff*** %46, align 8
  %48 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %49 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %47, i64 %50
  %52 = load %struct.sk_buff*, %struct.sk_buff** %51, align 8
  store %struct.sk_buff* %52, %struct.sk_buff** %8, align 8
  %53 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %54 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %53, i32 0, i32 6
  %55 = load %struct.sk_buff**, %struct.sk_buff*** %54, align 8
  %56 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %57 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %55, i64 %58
  store %struct.sk_buff* null, %struct.sk_buff** %59, align 8
  %60 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %61 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %60, i32 0, i32 5
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %7, align 8
  %65 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DMA_TO_DEVICE, align 4
  %71 = call i32 @dma_unmap_single(i32* %63, i32 %66, i32 %69, i32 %70)
  %72 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %73 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %73, align 8
  %76 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %77 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %80 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %43
  %84 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %85 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %43
  %87 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %88 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %88, align 8
  %91 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %92 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %91, i32 0, i32 4
  %93 = call i32 @spin_unlock(i32* %92)
  %94 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %7, align 8
  %95 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @DMADESC_UNDER_MASK, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %86
  %101 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %102 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %100, %86
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = call i32 @dev_kfree_skb(%struct.sk_buff* %107)
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %11

111:                                              ; preds = %39, %11
  %112 = load %struct.net_device*, %struct.net_device** %3, align 8
  %113 = call i64 @netif_queue_stopped(%struct.net_device* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.net_device*, %struct.net_device** %3, align 8
  %120 = call i32 @netif_wake_queue(%struct.net_device* %119)
  br label %121

121:                                              ; preds = %118, %115, %111
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
