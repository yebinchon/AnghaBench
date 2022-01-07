; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_interrupt_tci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_interrupt_tci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.adm8211_priv* }
%struct.adm8211_priv = type { i32, i32, i32, i32, i32, %struct.adm8211_tx_ring_info*, %struct.TYPE_2__* }
%struct.adm8211_tx_ring_info = type { %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_tx_info = type { i32 }

@TDES0_CONTROL_OWN = common dso_local global i32 0, align 4
@TDES0_CONTROL_DONE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@TDES0_STATUS_ES = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @adm8211_interrupt_tci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm8211_interrupt_tci(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.adm8211_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.adm8211_tx_ring_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.adm8211_priv*, %struct.adm8211_priv** %11, align 8
  store %struct.adm8211_priv* %12, %struct.adm8211_priv** %3, align 8
  %13 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %14 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %13, i32 0, i32 3
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %17 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %115, %1
  %20 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %21 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sub i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %118

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %29 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = urem i32 %27, %30
  store i32 %31, i32* %5, align 4
  %32 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %33 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %32, i32 0, i32 6
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @TDES0_CONTROL_OWN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %26
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @TDES0_CONTROL_DONE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45, %26
  br label %118

51:                                               ; preds = %45
  %52 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %53 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %52, i32 0, i32 5
  %54 = load %struct.adm8211_tx_ring_info*, %struct.adm8211_tx_ring_info** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.adm8211_tx_ring_info, %struct.adm8211_tx_ring_info* %54, i64 %56
  store %struct.adm8211_tx_ring_info* %57, %struct.adm8211_tx_ring_info** %8, align 8
  %58 = load %struct.adm8211_tx_ring_info*, %struct.adm8211_tx_ring_info** %8, align 8
  %59 = getelementptr inbounds %struct.adm8211_tx_ring_info, %struct.adm8211_tx_ring_info* %58, i32 0, i32 0
  %60 = load %struct.sk_buff*, %struct.sk_buff** %59, align 8
  store %struct.sk_buff* %60, %struct.sk_buff** %9, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %61)
  store %struct.ieee80211_tx_info* %62, %struct.ieee80211_tx_info** %7, align 8
  %63 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %64 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.adm8211_tx_ring_info*, %struct.adm8211_tx_ring_info** %8, align 8
  %67 = getelementptr inbounds %struct.adm8211_tx_ring_info, %struct.adm8211_tx_ring_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.adm8211_tx_ring_info*, %struct.adm8211_tx_ring_info** %8, align 8
  %70 = getelementptr inbounds %struct.adm8211_tx_ring_info, %struct.adm8211_tx_ring_info* %69, i32 0, i32 0
  %71 = load %struct.sk_buff*, %struct.sk_buff** %70, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %75 = call i32 @pci_unmap_single(i32 %65, i32 %68, i32 %73, i32 %74)
  %76 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %77 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = call i32 @skb_pull(%struct.sk_buff* %78, i32 4)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = load %struct.adm8211_tx_ring_info*, %struct.adm8211_tx_ring_info** %8, align 8
  %82 = getelementptr inbounds %struct.adm8211_tx_ring_info, %struct.adm8211_tx_ring_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @skb_push(%struct.sk_buff* %80, i32 %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.adm8211_tx_ring_info*, %struct.adm8211_tx_ring_info** %8, align 8
  %89 = getelementptr inbounds %struct.adm8211_tx_ring_info, %struct.adm8211_tx_ring_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @memcpy(i32 %84, i32 %87, i32 %90)
  %92 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %93 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %51
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @TDES0_STATUS_ES, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %105 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %106 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %98, %51
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %112 = call i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw* %110, %struct.sk_buff* %111)
  %113 = load %struct.adm8211_tx_ring_info*, %struct.adm8211_tx_ring_info** %8, align 8
  %114 = getelementptr inbounds %struct.adm8211_tx_ring_info, %struct.adm8211_tx_ring_info* %113, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %114, align 8
  br label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %4, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %4, align 4
  br label %19

118:                                              ; preds = %50, %19
  %119 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %120 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %4, align 4
  %123 = sub i32 %121, %122
  %124 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %125 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = sub i32 %126, 2
  %128 = icmp ult i32 %123, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %118
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %131 = call i32 @ieee80211_wake_queue(%struct.ieee80211_hw* %130, i32 0)
  br label %132

132:                                              ; preds = %129, %118
  %133 = load i32, i32* %4, align 4
  %134 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %135 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %137 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %136, i32 0, i32 3
  %138 = call i32 @spin_unlock(i32* %137)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_wake_queue(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
