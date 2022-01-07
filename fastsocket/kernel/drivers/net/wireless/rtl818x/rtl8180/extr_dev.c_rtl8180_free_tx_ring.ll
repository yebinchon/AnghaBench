; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_dev.c_rtl8180_free_tx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_dev.c_rtl8180_free_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i32, %struct.rtl8180_tx_ring* }
%struct.rtl8180_tx_ring = type { i64, i32, %struct.rtl8180_tx_desc*, i32, i32 }
%struct.rtl8180_tx_desc = type { i32 }
%struct.sk_buff = type { i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @rtl8180_free_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8180_free_tx_ring(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8180_priv*, align 8
  %6 = alloca %struct.rtl8180_tx_ring*, align 8
  %7 = alloca %struct.rtl8180_tx_desc*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %10, align 8
  store %struct.rtl8180_priv* %11, %struct.rtl8180_priv** %5, align 8
  %12 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %13 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %12, i32 0, i32 1
  %14 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %14, i64 %16
  store %struct.rtl8180_tx_ring* %17, %struct.rtl8180_tx_ring** %6, align 8
  br label %18

18:                                               ; preds = %23, %2
  %19 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %20 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %19, i32 0, i32 4
  %21 = call i64 @skb_queue_len(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %59

23:                                               ; preds = %18
  %24 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %25 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %24, i32 0, i32 2
  %26 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %25, align 8
  %27 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %28 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.rtl8180_tx_desc, %struct.rtl8180_tx_desc* %26, i64 %29
  store %struct.rtl8180_tx_desc* %30, %struct.rtl8180_tx_desc** %7, align 8
  %31 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %32 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %31, i32 0, i32 4
  %33 = call %struct.sk_buff* @__skb_dequeue(i32* %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %8, align 8
  %34 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %35 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %7, align 8
  %38 = getelementptr inbounds %struct.rtl8180_tx_desc, %struct.rtl8180_tx_desc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %45 = call i32 @pci_unmap_single(i32 %36, i32 %40, i32 %43, i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call i32 @kfree_skb(%struct.sk_buff* %46)
  %48 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %49 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  %52 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %53 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = urem i64 %51, %55
  %57 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %58 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %18

59:                                               ; preds = %18
  %60 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %61 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %64 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %70 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %69, i32 0, i32 2
  %71 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %70, align 8
  %72 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %73 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @pci_free_consistent(i32 %62, i32 %68, %struct.rtl8180_tx_desc* %71, i32 %74)
  %76 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %77 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %76, i32 0, i32 2
  store %struct.rtl8180_tx_desc* null, %struct.rtl8180_tx_desc** %77, align 8
  ret void
}

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.rtl8180_tx_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
