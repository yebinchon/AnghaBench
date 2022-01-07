; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54pci.c_p54p_check_tx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54pci.c_p54p_check_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54p_priv* }
%struct.p54p_priv = type { i32, %struct.p54p_ring_control* }
%struct.p54p_ring_control = type { i64* }
%struct.p54p_desc = type { i64, i64, i64, i64 }
%struct.sk_buff = type { i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64*, i32, %struct.p54p_desc*, i64, %struct.sk_buff**)* @p54p_check_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54p_check_tx_ring(%struct.ieee80211_hw* %0, i64* %1, i32 %2, %struct.p54p_desc* %3, i64 %4, %struct.sk_buff** %5) #0 {
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.p54p_desc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff**, align 8
  %13 = alloca %struct.p54p_priv*, align 8
  %14 = alloca %struct.p54p_ring_control*, align 8
  %15 = alloca %struct.p54p_desc*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.p54p_desc* %3, %struct.p54p_desc** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.sk_buff** %5, %struct.sk_buff*** %12, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 0
  %21 = load %struct.p54p_priv*, %struct.p54p_priv** %20, align 8
  store %struct.p54p_priv* %21, %struct.p54p_priv** %13, align 8
  %22 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %23 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %22, i32 0, i32 1
  %24 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %23, align 8
  store %struct.p54p_ring_control* %24, %struct.p54p_ring_control** %14, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %11, align 8
  %28 = urem i64 %26, %27
  store i64 %28, i64* %18, align 8
  %29 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %14, align 8
  %30 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @le32_to_cpu(i64 %35)
  store i64 %36, i64* %17, align 8
  %37 = load i64*, i64** %8, align 8
  store i64 %36, i64* %37, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %17, align 8
  %40 = urem i64 %39, %38
  store i64 %40, i64* %17, align 8
  br label %41

41:                                               ; preds = %87, %6
  %42 = load i64, i64* %18, align 8
  %43 = load i64, i64* %17, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %93

45:                                               ; preds = %41
  %46 = load %struct.p54p_desc*, %struct.p54p_desc** %10, align 8
  %47 = load i64, i64* %18, align 8
  %48 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %46, i64 %47
  store %struct.p54p_desc* %48, %struct.p54p_desc** %15, align 8
  %49 = load %struct.sk_buff**, %struct.sk_buff*** %12, align 8
  %50 = load i64, i64* %18, align 8
  %51 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %49, i64 %50
  %52 = load %struct.sk_buff*, %struct.sk_buff** %51, align 8
  store %struct.sk_buff* %52, %struct.sk_buff** %16, align 8
  %53 = load %struct.sk_buff**, %struct.sk_buff*** %12, align 8
  %54 = load i64, i64* %18, align 8
  %55 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %53, i64 %54
  store %struct.sk_buff* null, %struct.sk_buff** %55, align 8
  %56 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %57 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.p54p_desc*, %struct.p54p_desc** %15, align 8
  %60 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @le32_to_cpu(i64 %61)
  %63 = load %struct.p54p_desc*, %struct.p54p_desc** %15, align 8
  %64 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @le16_to_cpu(i64 %65)
  %67 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %68 = call i32 @pci_unmap_single(i32 %58, i64 %62, i32 %66, i32 %67)
  %69 = load %struct.p54p_desc*, %struct.p54p_desc** %15, align 8
  %70 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load %struct.p54p_desc*, %struct.p54p_desc** %15, align 8
  %72 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.p54p_desc*, %struct.p54p_desc** %15, align 8
  %74 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.p54p_desc*, %struct.p54p_desc** %15, align 8
  %76 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %78 = icmp ne %struct.sk_buff* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %45
  %80 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %81 = call i64 @FREE_AFTER_TX(%struct.sk_buff* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %86 = call i32 @p54_free_skb(%struct.ieee80211_hw* %84, %struct.sk_buff* %85)
  br label %87

87:                                               ; preds = %83, %79, %45
  %88 = load i64, i64* %18, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %18, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %18, align 8
  %92 = urem i64 %91, %90
  store i64 %92, i64* %18, align 8
  br label %41

93:                                               ; preds = %41
  ret void
}

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i64 @FREE_AFTER_TX(%struct.sk_buff*) #1

declare dso_local i32 @p54_free_skb(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
