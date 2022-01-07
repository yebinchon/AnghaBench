; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_txq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_txq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, %struct.mwl8k_tx_queue* }
%struct.mwl8k_tx_queue = type { i64, %struct.mwl8k_tx_desc*, i32*, i64, i64, i64 }
%struct.mwl8k_tx_desc = type { i32, i64 }

@MWL8K_TX_DESCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to alloc TX descriptors\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @mwl8k_txq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_txq_init(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwl8k_priv*, align 8
  %7 = alloca %struct.mwl8k_tx_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mwl8k_tx_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 1
  %14 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %13, align 8
  store %struct.mwl8k_priv* %14, %struct.mwl8k_priv** %6, align 8
  %15 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %16 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %15, i32 0, i32 1
  %17 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %17, i64 %19
  store %struct.mwl8k_tx_queue* %20, %struct.mwl8k_tx_queue** %7, align 8
  %21 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %7, align 8
  %22 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %7, align 8
  %24 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %7, align 8
  %26 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @MWL8K_TX_DESCS, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 16
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %32 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %7, align 8
  %36 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %35, i32 0, i32 0
  %37 = call %struct.mwl8k_tx_desc* @pci_alloc_consistent(i32 %33, i32 %34, i64* %36)
  %38 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %7, align 8
  %39 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %38, i32 0, i32 1
  store %struct.mwl8k_tx_desc* %37, %struct.mwl8k_tx_desc** %39, align 8
  %40 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %7, align 8
  %41 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %40, i32 0, i32 1
  %42 = load %struct.mwl8k_tx_desc*, %struct.mwl8k_tx_desc** %41, align 8
  %43 = icmp eq %struct.mwl8k_tx_desc* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %2
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @wiphy_err(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %112

51:                                               ; preds = %2
  %52 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %7, align 8
  %53 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %52, i32 0, i32 1
  %54 = load %struct.mwl8k_tx_desc*, %struct.mwl8k_tx_desc** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @memset(%struct.mwl8k_tx_desc* %54, i32 0, i32 %55)
  %57 = load i32, i32* @MWL8K_TX_DESCS, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32* @kcalloc(i32 %57, i32 4, i32 %58)
  %60 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %7, align 8
  %61 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  %62 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %7, align 8
  %63 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %80

66:                                               ; preds = %51
  %67 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %68 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %7, align 8
  %72 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %71, i32 0, i32 1
  %73 = load %struct.mwl8k_tx_desc*, %struct.mwl8k_tx_desc** %72, align 8
  %74 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %7, align 8
  %75 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @pci_free_consistent(i32 %69, i32 %70, %struct.mwl8k_tx_desc* %73, i64 %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %112

80:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %108, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @MWL8K_TX_DESCS, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %111

85:                                               ; preds = %81
  %86 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %7, align 8
  %87 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %86, i32 0, i32 1
  %88 = load %struct.mwl8k_tx_desc*, %struct.mwl8k_tx_desc** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.mwl8k_tx_desc, %struct.mwl8k_tx_desc* %88, i64 %90
  store %struct.mwl8k_tx_desc* %91, %struct.mwl8k_tx_desc** %10, align 8
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* @MWL8K_TX_DESCS, align 4
  %95 = srem i32 %93, %94
  store i32 %95, i32* %11, align 4
  %96 = load %struct.mwl8k_tx_desc*, %struct.mwl8k_tx_desc** %10, align 8
  %97 = getelementptr inbounds %struct.mwl8k_tx_desc, %struct.mwl8k_tx_desc* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %7, align 8
  %99 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 16
  %104 = add i64 %100, %103
  %105 = call i32 @cpu_to_le32(i64 %104)
  %106 = load %struct.mwl8k_tx_desc*, %struct.mwl8k_tx_desc** %10, align 8
  %107 = getelementptr inbounds %struct.mwl8k_tx_desc, %struct.mwl8k_tx_desc* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %85
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %81

111:                                              ; preds = %81
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %66, %44
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.mwl8k_tx_desc* @pci_alloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @wiphy_err(i32, i8*) #1

declare dso_local i32 @memset(%struct.mwl8k_tx_desc*, i32, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.mwl8k_tx_desc*, i64) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
