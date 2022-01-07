; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_tx_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_tx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i64, i64*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i64 }
%struct.ath9k_htc_sta = type { i64 }
%struct.ath9k_htc_vif = type { i64 }

@XMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"VIF is null, but no monitor interface !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_htc_tx_start(%struct.ath9k_htc_priv* %0, %struct.ieee80211_sta* %1, %struct.sk_buff* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath9k_htc_priv*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_hdr*, align 8
  %13 = alloca %struct.ieee80211_tx_info*, align 8
  %14 = alloca %struct.ieee80211_vif*, align 8
  %15 = alloca %struct.ath9k_htc_sta*, align 8
  %16 = alloca %struct.ath9k_htc_vif*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %7, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %19)
  store %struct.ieee80211_tx_info* %20, %struct.ieee80211_tx_info** %13, align 8
  %21 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %22 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %23, align 8
  store %struct.ieee80211_vif* %24, %struct.ieee80211_vif** %14, align 8
  store %struct.ath9k_htc_vif* null, %struct.ath9k_htc_vif** %16, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %28, %struct.ieee80211_hdr** %12, align 8
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %14, align 8
  %30 = icmp ne %struct.ieee80211_vif* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %5
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %14, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.ath9k_htc_vif*
  store %struct.ath9k_htc_vif* %35, %struct.ath9k_htc_vif** %16, align 8
  %36 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %16, align 8
  %37 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %18, align 8
  br label %59

39:                                               ; preds = %5
  %40 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %41 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %39
  %47 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %48 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = call i32 @ath9k_hw_common(%struct.TYPE_4__* %49)
  %51 = load i32, i32* @XMIT, align 4
  %52 = call i32 @ath_dbg(i32 %50, i32 %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %106

55:                                               ; preds = %39
  %56 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %57 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %18, align 8
  br label %59

59:                                               ; preds = %55, %31
  %60 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %61 = icmp ne %struct.ieee80211_sta* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.ath9k_htc_sta*
  store %struct.ath9k_htc_sta* %66, %struct.ath9k_htc_sta** %15, align 8
  %67 = load %struct.ath9k_htc_sta*, %struct.ath9k_htc_sta** %15, align 8
  %68 = getelementptr inbounds %struct.ath9k_htc_sta, %struct.ath9k_htc_sta* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %17, align 8
  br label %77

70:                                               ; preds = %59
  %71 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %72 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %18, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %17, align 8
  br label %77

77:                                               ; preds = %70, %62
  %78 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %79 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @ieee80211_is_data(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %85 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %14, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %87 = load i64, i64* %17, align 8
  %88 = load i64, i64* %18, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @ath9k_htc_tx_data(%struct.ath9k_htc_priv* %84, %struct.ieee80211_vif* %85, %struct.sk_buff* %86, i64 %87, i64 %88, i64 %89, i32 %90)
  br label %100

92:                                               ; preds = %77
  %93 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %94 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %16, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %96 = load i64, i64* %17, align 8
  %97 = load i64, i64* %18, align 8
  %98 = load i64, i64* %10, align 8
  %99 = call i32 @ath9k_htc_tx_mgmt(%struct.ath9k_htc_priv* %93, %struct.ath9k_htc_vif* %94, %struct.sk_buff* %95, i64 %96, i64 %97, i64 %98)
  br label %100

100:                                              ; preds = %92, %83
  %101 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %102 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %105 = call i32 @htc_send(i32 %103, %struct.sk_buff* %104)
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %100, %46
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*) #1

declare dso_local i32 @ath9k_hw_common(%struct.TYPE_4__*) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i32 @ath9k_htc_tx_data(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*, %struct.sk_buff*, i64, i64, i64, i32) #1

declare dso_local i32 @ath9k_htc_tx_mgmt(%struct.ath9k_htc_priv*, %struct.ath9k_htc_vif*, %struct.sk_buff*, i64, i64, i64) #1

declare dso_local i32 @htc_send(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
