; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_refill_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_refill_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcm_enet_priv = type { i64, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32, %struct.sk_buff**, %struct.bcm_enet_desc* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.bcm_enet_desc = type { i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMADESC_LENGTH_SHIFT = common dso_local global i32 0, align 4
@DMADESC_OWNER_MASK = common dso_local global i32 0, align 4
@DMADESC_WRAP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unable to refill rx ring\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bcm_enet_refill_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enet_refill_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bcm_enet_priv*, align 8
  %4 = alloca %struct.bcm_enet_desc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.bcm_enet_priv* %10, %struct.bcm_enet_priv** %3, align 8
  br label %11

11:                                               ; preds = %98, %1
  %12 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %13 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %16 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %113

19:                                               ; preds = %11
  %20 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %21 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %24 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %23, i32 0, i32 8
  %25 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %25, i64 %27
  store %struct.bcm_enet_desc* %28, %struct.bcm_enet_desc** %4, align 8
  %29 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %30 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %29, i32 0, i32 7
  %31 = load %struct.sk_buff**, %struct.sk_buff*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %31, i64 %33
  %35 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %69, label %37

37:                                               ; preds = %19
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %40 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %38, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %5, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %113

46:                                               ; preds = %37
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %49 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %48, i32 0, i32 7
  %50 = load %struct.sk_buff**, %struct.sk_buff*** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %50, i64 %52
  store %struct.sk_buff* %47, %struct.sk_buff** %53, align 8
  %54 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %55 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %54, i32 0, i32 5
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %62 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %65 = call i32 @dma_map_single(i32* %57, i32 %60, i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %4, align 8
  %68 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %46, %19
  %70 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %71 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DMADESC_LENGTH_SHIFT, align 4
  %74 = shl i32 %72, %73
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* @DMADESC_OWNER_MASK, align 4
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %79 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %83 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, 1
  %86 = icmp eq i64 %81, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %69
  %88 = load i32, i32* @DMADESC_WRAP_MASK, align 4
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  %91 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %92 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %91, i32 0, i32 2
  store i32 0, i32* %92, align 8
  br label %98

93:                                               ; preds = %69
  %94 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %95 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %93, %87
  %99 = call i32 (...) @wmb()
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %4, align 8
  %102 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %104 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %108 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %109 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @ENETDMA_BUFALLOC_REG(i32 %110)
  %112 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %107, i32 1, i32 %111)
  br label %11

113:                                              ; preds = %45, %11
  %114 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %115 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %137

118:                                              ; preds = %113
  %119 = load %struct.net_device*, %struct.net_device** %2, align 8
  %120 = call i64 @netif_running(%struct.net_device* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %118
  %123 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %124 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %123, i32 0, i32 5
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = call i32 @dev_warn(i32* %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %128 = load i64, i64* @jiffies, align 8
  %129 = load i64, i64* @HZ, align 8
  %130 = add nsw i64 %128, %129
  %131 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %132 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i64 %130, i64* %133, align 8
  %134 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %135 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %134, i32 0, i32 4
  %136 = call i32 @add_timer(%struct.TYPE_4__* %135)
  br label %137

137:                                              ; preds = %122, %118, %113
  ret i32 0
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @enet_dma_writel(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @ENETDMA_BUFALLOC_REG(i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
