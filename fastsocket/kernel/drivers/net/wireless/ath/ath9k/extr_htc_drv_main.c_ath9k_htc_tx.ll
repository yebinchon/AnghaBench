; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32 }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ath_common = type { i32 }

@XMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No room for padding\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"No free TX slot\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Tx failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @ath9k_htc_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ath9k_htc_priv*, align 8
  %9 = alloca %struct.ath_common*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %15, align 8
  store %struct.ath9k_htc_priv* %16, %struct.ath9k_htc_priv** %8, align 8
  %17 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %8, align 8
  %18 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ath_common* @ath9k_hw_common(i32 %19)
  store %struct.ath_common* %20, %struct.ath_common** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %24, %struct.ieee80211_hdr** %7, align 8
  %25 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ieee80211_hdrlen(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 3
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %33
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call i32 @skb_headroom(%struct.sk_buff* %40)
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %46 = load i32, i32* @XMIT, align 4
  %47 = call i32 @ath_dbg(%struct.ath_common* %45, i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %93

48:                                               ; preds = %39
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @skb_push(%struct.sk_buff* %49, i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @memmove(i64 %54, i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %48, %33, %3
  %64 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %8, align 8
  %65 = call i32 @ath9k_htc_tx_get_slot(%struct.ath9k_htc_priv* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %70 = load i32, i32* @XMIT, align 4
  %71 = call i32 @ath_dbg(%struct.ath_common* %69, i32 %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %93

72:                                               ; preds = %63
  %73 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %8, align 8
  %74 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %75 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @ath9k_htc_tx_start(%struct.ath9k_htc_priv* %73, i32 %76, %struct.sk_buff* %77, i32 %78, i32 0)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %84 = load i32, i32* @XMIT, align 4
  %85 = call i32 @ath_dbg(%struct.ath_common* %83, i32 %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %89

86:                                               ; preds = %72
  %87 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %8, align 8
  %88 = call i32 @ath9k_htc_check_stop_queues(%struct.ath9k_htc_priv* %87)
  br label %96

89:                                               ; preds = %82
  %90 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %8, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @ath9k_htc_tx_clear_slot(%struct.ath9k_htc_priv* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %68, %44
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %94)
  br label %96

96:                                               ; preds = %93, %86
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @ath9k_htc_tx_get_slot(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_tx_start(%struct.ath9k_htc_priv*, i32, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ath9k_htc_check_stop_queues(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_tx_clear_slot(%struct.ath9k_htc_priv*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
