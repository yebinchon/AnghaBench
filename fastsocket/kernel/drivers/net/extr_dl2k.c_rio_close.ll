; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_dl2k.c_rio_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_dl2k.c_rio_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.netdev_private = type { %struct.sk_buff**, %struct.TYPE_2__*, i32, %struct.sk_buff**, %struct.TYPE_2__*, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64, i64 }

@IntEnable = common dso_local global i64 0, align 8
@TxDisable = common dso_local global i32 0, align 4
@RxDisable = common dso_local global i32 0, align 4
@StatsDisable = common dso_local global i32 0, align 4
@MACCtrl = common dso_local global i64 0, align 8
@RX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rio_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.netdev_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %10)
  store %struct.netdev_private* %11, %struct.netdev_private** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @netif_stop_queue(%struct.net_device* %12)
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @IntEnable, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writew(i32 0, i64 %16)
  %18 = load i32, i32* @TxDisable, align 4
  %19 = load i32, i32* @RxDisable, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @StatsDisable, align 4
  %22 = or i32 %20, %21
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @MACCtrl, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %22, i64 %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @free_irq(i32 %29, %struct.net_device* %30)
  %32 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %33 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %32, i32 0, i32 5
  %34 = call i32 @del_timer_sync(i32* %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %88, %1
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @RX_RING_SIZE, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %91

39:                                               ; preds = %35
  %40 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %41 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %40, i32 0, i32 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %48 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %47, i32 0, i32 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %55 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %54, i32 0, i32 3
  %56 = load %struct.sk_buff**, %struct.sk_buff*** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %56, i64 %58
  %60 = load %struct.sk_buff*, %struct.sk_buff** %59, align 8
  store %struct.sk_buff* %60, %struct.sk_buff** %5, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = icmp ne %struct.sk_buff* %61, null
  br i1 %62, label %63, label %87

63:                                               ; preds = %39
  %64 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %65 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %68 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %67, i32 0, i32 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = call i32 @desc_to_dma(%struct.TYPE_2__* %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %78 = call i32 @pci_unmap_single(i32 %66, i32 %73, i32 %76, i32 %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = call i32 @dev_kfree_skb(%struct.sk_buff* %79)
  %81 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %82 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %81, i32 0, i32 3
  %83 = load %struct.sk_buff**, %struct.sk_buff*** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %83, i64 %85
  store %struct.sk_buff* null, %struct.sk_buff** %86, align 8
  br label %87

87:                                               ; preds = %63, %39
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %35

91:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %131, %91
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @TX_RING_SIZE, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %134

96:                                               ; preds = %92
  %97 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %98 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %97, i32 0, i32 0
  %99 = load %struct.sk_buff**, %struct.sk_buff*** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %99, i64 %101
  %103 = load %struct.sk_buff*, %struct.sk_buff** %102, align 8
  store %struct.sk_buff* %103, %struct.sk_buff** %5, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = icmp ne %struct.sk_buff* %104, null
  br i1 %105, label %106, label %130

106:                                              ; preds = %96
  %107 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %108 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %111 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = call i32 @desc_to_dma(%struct.TYPE_2__* %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %121 = call i32 @pci_unmap_single(i32 %109, i32 %116, i32 %119, i32 %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = call i32 @dev_kfree_skb(%struct.sk_buff* %122)
  %124 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %125 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %124, i32 0, i32 0
  %126 = load %struct.sk_buff**, %struct.sk_buff*** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %126, i64 %128
  store %struct.sk_buff* null, %struct.sk_buff** %129, align 8
  br label %130

130:                                              ; preds = %106, %96
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %92

134:                                              ; preds = %92
  ret i32 0
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @desc_to_dma(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
