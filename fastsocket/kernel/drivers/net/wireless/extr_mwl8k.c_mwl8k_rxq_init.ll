; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_rxq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_rxq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { %struct.TYPE_2__*, i32, %struct.mwl8k_rx_queue* }
%struct.TYPE_2__ = type { i32, i32 (i8*, i64)* }
%struct.mwl8k_rx_queue = type { i64, i32*, i32*, i64, i64, i64 }

@MWL8K_RX_DESCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to alloc RX descriptors\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @mwl8k_rxq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_rxq_init(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwl8k_priv*, align 8
  %7 = alloca %struct.mwl8k_rx_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 1
  %16 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %15, align 8
  store %struct.mwl8k_priv* %16, %struct.mwl8k_priv** %6, align 8
  %17 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %18 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %17, i32 0, i32 2
  %19 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %19, i64 %21
  store %struct.mwl8k_rx_queue* %22, %struct.mwl8k_rx_queue** %7, align 8
  %23 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %24 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %26 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %28 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @MWL8K_RX_DESCS, align 4
  %30 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %31 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %29, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %37 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %41 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %40, i32 0, i32 0
  %42 = call i32* @pci_alloc_consistent(i32 %38, i32 %39, i64* %41)
  %43 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %44 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %46 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %2
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %51 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @wiphy_err(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %136

56:                                               ; preds = %2
  %57 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %58 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @memset(i32* %59, i32 0, i32 %60)
  %62 = load i32, i32* @MWL8K_RX_DESCS, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i32* @kcalloc(i32 %62, i32 4, i32 %63)
  %65 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %66 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  %67 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %68 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %56
  %72 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %73 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %77 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %80 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @pci_free_consistent(i32 %74, i32 %75, i32* %78, i64 %81)
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %136

85:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %132, %85
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @MWL8K_RX_DESCS, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %135

90:                                               ; preds = %86
  %91 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %92 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %10, align 4
  %96 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %97 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %101 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %99, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %98, i64 %106
  %108 = bitcast i32* %107 to i8*
  store i8* %108, i8** %11, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @MWL8K_RX_DESCS, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %90
  store i32 0, i32* %12, align 4
  br label %115

115:                                              ; preds = %114, %90
  %116 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %117 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %10, align 4
  %121 = mul nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %118, %122
  store i64 %123, i64* %13, align 8
  %124 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %125 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32 (i8*, i64)*, i32 (i8*, i64)** %127, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = load i64, i64* %13, align 8
  %131 = call i32 %128(i8* %129, i64 %130)
  br label %132

132:                                              ; preds = %115
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %86

135:                                              ; preds = %86
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %71, %49
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32* @pci_alloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @wiphy_err(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
