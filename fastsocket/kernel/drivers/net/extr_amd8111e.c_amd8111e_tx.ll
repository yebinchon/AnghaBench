; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.amd8111e_priv = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__, i64*, %struct.TYPE_6__**, i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@TX_RING_DR_MOD_MASK = common dso_local global i32 0, align 4
@OWN_BIT = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@NUM_TX_BUFFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @amd8111e_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd8111e_tx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.amd8111e_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.amd8111e_priv* %7, %struct.amd8111e_priv** %3, align 8
  %8 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %9 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @TX_RING_DR_MOD_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %140, %1
  %14 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %15 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %18 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %141

21:                                               ; preds = %13
  %22 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %23 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TX_RING_DR_MOD_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %4, align 4
  %27 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %28 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @le16_to_cpu(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @OWN_BIT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  br label %141

41:                                               ; preds = %21
  %42 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %43 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %50 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %49, i32 0, i32 5
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %51, i64 %53
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp ne %struct.TYPE_6__* %55, null
  br i1 %56, label %57, label %99

57:                                               ; preds = %41
  %58 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %59 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %62 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %61, i32 0, i32 4
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %69 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %68, i32 0, i32 5
  %70 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %70, i64 %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %78 = call i32 @pci_unmap_single(i32 %60, i64 %67, i32 %76, i32 %77)
  %79 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %80 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %79, i32 0, i32 5
  %81 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %81, i64 %83
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = call i32 @dev_kfree_skb_irq(%struct.TYPE_6__* %85)
  %87 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %88 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %87, i32 0, i32 5
  %89 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %89, i64 %91
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %92, align 8
  %93 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %94 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %93, i32 0, i32 4
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %57, %41
  %100 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %101 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %105 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %110 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %109, i32 0, i32 2
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @le16_to_cpu(i32 %116)
  %118 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %119 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, %117
  store i32 %122, i32* %120, align 8
  %123 = load %struct.net_device*, %struct.net_device** %2, align 8
  %124 = call i64 @netif_queue_stopped(%struct.net_device* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %99
  %127 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %128 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %131 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @NUM_TX_BUFFERS, align 4
  %134 = sub nsw i32 %132, %133
  %135 = add nsw i32 %134, 2
  %136 = icmp sgt i32 %129, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %126
  %138 = load %struct.net_device*, %struct.net_device** %2, align 8
  %139 = call i32 @netif_wake_queue(%struct.net_device* %138)
  br label %140

140:                                              ; preds = %137, %126, %99
  br label %13

141:                                              ; preds = %40, %13
  ret i32 0
}

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.TYPE_6__*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
