; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_dump_tx_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_dump_tx_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { %struct.mwl8k_tx_queue* }
%struct.mwl8k_tx_queue = type { i32, i32, i32, %struct.mwl8k_tx_desc* }
%struct.mwl8k_tx_desc = type { i64, i32 }

@MWL8K_TX_DESCS = common dso_local global i32 0, align 4
@MWL8K_TXD_STATUS_FW_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"txq[%d] len=%d head=%d tail=%d fw_owned=%d drv_owned=%d unused=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @mwl8k_dump_tx_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_dump_tx_rings(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.mwl8k_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwl8k_tx_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mwl8k_tx_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 1
  %14 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %13, align 8
  store %struct.mwl8k_priv* %14, %struct.mwl8k_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %82, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %18 = call i32 @mwl8k_tx_queues(%struct.mwl8k_priv* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %85

20:                                               ; preds = %15
  %21 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %22 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %21, i32 0, i32 0
  %23 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %23, i64 %25
  store %struct.mwl8k_tx_queue* %26, %struct.mwl8k_tx_queue** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %61, %20
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @MWL8K_TX_DESCS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %5, align 8
  %33 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %32, i32 0, i32 3
  %34 = load %struct.mwl8k_tx_desc*, %struct.mwl8k_tx_desc** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mwl8k_tx_desc, %struct.mwl8k_tx_desc* %34, i64 %36
  store %struct.mwl8k_tx_desc* %37, %struct.mwl8k_tx_desc** %10, align 8
  %38 = load %struct.mwl8k_tx_desc*, %struct.mwl8k_tx_desc** %10, align 8
  %39 = getelementptr inbounds %struct.mwl8k_tx_desc, %struct.mwl8k_tx_desc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @le32_to_cpu(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @MWL8K_TXD_STATUS_FW_OWNED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %31
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %52

49:                                               ; preds = %31
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.mwl8k_tx_desc*, %struct.mwl8k_tx_desc** %10, align 8
  %54 = getelementptr inbounds %struct.mwl8k_tx_desc, %struct.mwl8k_tx_desc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %52
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %27

64:                                               ; preds = %27
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %66 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %5, align 8
  %70 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %5, align 8
  %73 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mwl8k_tx_queue*, %struct.mwl8k_tx_queue** %5, align 8
  %76 = getelementptr inbounds %struct.mwl8k_tx_queue, %struct.mwl8k_tx_queue* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @wiphy_err(i32 %67, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %71, i32 %74, i32 %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %64
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %15

85:                                               ; preds = %15
  ret void
}

declare dso_local i32 @mwl8k_tx_queues(%struct.mwl8k_priv*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
