; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54pci.c_p54p_check_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54pci.c_p54p_check_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54p_priv* }
%struct.p54p_priv = type { %struct.TYPE_5__, %struct.TYPE_6__*, %struct.p54p_ring_control* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.p54p_ring_control = type { i32* }
%struct.p54p_desc = type { i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"rx'd frame size exceeds length threshold.\0A\00", align 1
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64*, i32, %struct.p54p_desc*, i64, %struct.sk_buff**)* @p54p_check_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54p_check_rx_ring(%struct.ieee80211_hw* %0, i64* %1, i32 %2, %struct.p54p_desc* %3, i64 %4, %struct.sk_buff** %5) #0 {
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.p54p_desc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff**, align 8
  %13 = alloca %struct.p54p_priv*, align 8
  %14 = alloca %struct.p54p_ring_control*, align 8
  %15 = alloca %struct.p54p_desc*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i8*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.p54p_desc* %3, %struct.p54p_desc** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.sk_buff** %5, %struct.sk_buff*** %12, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 0
  %23 = load %struct.p54p_priv*, %struct.p54p_priv** %22, align 8
  store %struct.p54p_priv* %23, %struct.p54p_priv** %13, align 8
  %24 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %25 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %24, i32 0, i32 2
  %26 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %25, align 8
  store %struct.p54p_ring_control* %26, %struct.p54p_ring_control** %14, align 8
  %27 = load i64*, i64** %8, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %11, align 8
  %30 = urem i64 %28, %29
  store i64 %30, i64* %17, align 8
  %31 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %14, align 8
  %32 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @le32_to_cpu(i32 %37)
  %39 = ptrtoint i8* %38 to i64
  store i64 %39, i64* %16, align 8
  %40 = load i64*, i64** %8, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %16, align 8
  %43 = urem i64 %42, %41
  store i64 %43, i64* %16, align 8
  br label %44

44:                                               ; preds = %155, %62, %6
  %45 = load i64, i64* %17, align 8
  %46 = load i64, i64* %16, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %161

48:                                               ; preds = %44
  %49 = load %struct.p54p_desc*, %struct.p54p_desc** %10, align 8
  %50 = load i64, i64* %17, align 8
  %51 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %49, i64 %50
  store %struct.p54p_desc* %51, %struct.p54p_desc** %15, align 8
  %52 = load %struct.p54p_desc*, %struct.p54p_desc** %15, align 8
  %53 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @le16_to_cpu(i32 %54)
  store i64 %55, i64* %18, align 8
  %56 = load %struct.sk_buff**, %struct.sk_buff*** %12, align 8
  %57 = load i64, i64* %17, align 8
  %58 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %56, i64 %57
  %59 = load %struct.sk_buff*, %struct.sk_buff** %58, align 8
  store %struct.sk_buff* %59, %struct.sk_buff** %19, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %48
  %63 = load i64, i64* %17, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %17, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %17, align 8
  %67 = urem i64 %66, %65
  store i64 %67, i64* %17, align 8
  br label %44

68:                                               ; preds = %48
  %69 = load i64, i64* %18, align 8
  %70 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %71 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %69, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %68
  %79 = call i64 (...) @net_ratelimit()
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %83 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %81, %78
  %88 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %89 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %18, align 8
  br label %92

92:                                               ; preds = %87, %68
  %93 = load %struct.p54p_desc*, %struct.p54p_desc** %15, align 8
  %94 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @le32_to_cpu(i32 %95)
  store i8* %96, i8** %20, align 8
  %97 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %98 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i8*, i8** %20, align 8
  %101 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %102 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 32
  %106 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %107 = call i32 @pci_dma_sync_single_for_cpu(%struct.TYPE_6__* %99, i8* %100, i64 %105, i32 %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %109 = load i64, i64* %18, align 8
  %110 = call i32 @skb_put(%struct.sk_buff* %108, i64 %109)
  %111 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %113 = call i64 @p54_rx(%struct.ieee80211_hw* %111, %struct.sk_buff* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %92
  %116 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %117 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %116, i32 0, i32 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i8*, i8** %20, align 8
  %120 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %121 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 32
  %125 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %126 = call i32 @pci_unmap_single(%struct.TYPE_6__* %118, i8* %119, i64 %124, i32 %125)
  %127 = load %struct.sk_buff**, %struct.sk_buff*** %12, align 8
  %128 = load i64, i64* %17, align 8
  %129 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %127, i64 %128
  store %struct.sk_buff* null, %struct.sk_buff** %129, align 8
  %130 = call i32 @cpu_to_le32(i32 0)
  %131 = load %struct.p54p_desc*, %struct.p54p_desc** %15, align 8
  %132 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  br label %155

133:                                              ; preds = %92
  %134 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %135 = call i32 @skb_trim(%struct.sk_buff* %134, i32 0)
  %136 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %137 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i8*, i8** %20, align 8
  %140 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %141 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, 32
  %145 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %146 = call i32 @pci_dma_sync_single_for_device(%struct.TYPE_6__* %138, i8* %139, i64 %144, i32 %145)
  %147 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %148 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 32
  %152 = call i32 @cpu_to_le16(i64 %151)
  %153 = load %struct.p54p_desc*, %struct.p54p_desc** %15, align 8
  %154 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %133, %115
  %156 = load i64, i64* %17, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %17, align 8
  %158 = load i64, i64* %11, align 8
  %159 = load i64, i64* %17, align 8
  %160 = urem i64 %159, %158
  store i64 %160, i64* %17, align 8
  br label %44

161:                                              ; preds = %44
  %162 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.p54p_desc*, %struct.p54p_desc** %10, align 8
  %165 = load i64, i64* %11, align 8
  %166 = load %struct.sk_buff**, %struct.sk_buff*** %12, align 8
  %167 = load i64*, i64** %8, align 8
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @p54p_refill_rx_ring(%struct.ieee80211_hw* %162, i32 %163, %struct.p54p_desc* %164, i64 %165, %struct.sk_buff** %166, i64 %168)
  ret void
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(%struct.TYPE_6__*, i8*, i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i64 @p54_rx(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_single(%struct.TYPE_6__*, i8*, i64, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_device(%struct.TYPE_6__*, i8*, i64, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @p54p_refill_rx_ring(%struct.ieee80211_hw*, i32, %struct.p54p_desc*, i64, %struct.sk_buff**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
