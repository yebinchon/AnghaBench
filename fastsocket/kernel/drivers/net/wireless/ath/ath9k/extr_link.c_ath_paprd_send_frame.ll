; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_link.c_ath_paprd_send_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_link.c_ath_paprd_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_7__, %struct.ath_hw*, %struct.ieee80211_hw* }
%struct.TYPE_7__ = type { i32* }
%struct.ath_hw = type { i32 }
%struct.ieee80211_hw = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.ath_common = type { i32 }
%struct.ath_tx_control = type { i32, %struct.TYPE_12__, i32, i32, i32 }

@IEEE80211_AC_BE = common dso_local global i64 0, align 8
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"PAPRD TX failed\0A\00", align 1
@ATH_PAPRD_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Timeout waiting for paprd training on TX chain %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, %struct.sk_buff*, i32)* @ath_paprd_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_paprd_send_frame(%struct.ath_softc* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.ath_hw*, align 8
  %11 = alloca %struct.ath_common*, align 8
  %12 = alloca %struct.ath_tx_control, align 8
  %13 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 3
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %15, align 8
  store %struct.ieee80211_hw* %16, %struct.ieee80211_hw** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %17)
  store %struct.ieee80211_tx_info* %18, %struct.ieee80211_tx_info** %9, align 8
  %19 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 2
  %21 = load %struct.ath_hw*, %struct.ath_hw** %20, align 8
  store %struct.ath_hw* %21, %struct.ath_hw** %10, align 8
  %22 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %23 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %22)
  store %struct.ath_common* %23, %struct.ath_common** %11, align 8
  %24 = bitcast %struct.ath_tx_control* %12 to %struct.ieee80211_tx_info*
  %25 = call i32 @memset(%struct.ieee80211_tx_info* %24, i32 0, i32 32)
  %26 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @IEEE80211_AC_BE, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.ath_tx_control, %struct.ath_tx_control* %12, i32 0, i32 4
  store i32 %32, i32* %33, align 8
  %34 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %35 = call i32 @memset(%struct.ieee80211_tx_info* %34, i32 0, i32 32)
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %37 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %44 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %46 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %47 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %51 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  %56 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %57 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %63 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  store i32 %62, i32* %68, align 4
  %69 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %70 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  store i32 -1, i32* %74, align 4
  %75 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %76 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %75, i32 0, i32 0
  %77 = call i32 @init_completion(i32* %76)
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = getelementptr inbounds %struct.ath_tx_control, %struct.ath_tx_control* %12, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = bitcast %struct.ath_tx_control* %12 to %struct.ieee80211_tx_info*
  %84 = call i64 @ath_tx_start(%struct.ieee80211_hw* %81, %struct.sk_buff* %82, %struct.ieee80211_tx_info* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %3
  %87 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %88 = load i32, i32* @CALIBRATE, align 4
  %89 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %87, i32 %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %90)
  store i32 0, i32* %4, align 4
  br label %111

92:                                               ; preds = %3
  %93 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %94 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %93, i32 0, i32 0
  %95 = load i32, i32* @ATH_PAPRD_TIMEOUT, align 4
  %96 = call i32 @msecs_to_jiffies(i32 %95)
  %97 = call i32 @wait_for_completion_timeout(i32* %94, i32 %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %92
  %101 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %102 = load i32, i32* @CALIBRATE, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %101, i32 %102, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %100, %92
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %105, %86
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @memset(%struct.ieee80211_tx_info*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @ath_tx_start(%struct.ieee80211_hw*, %struct.sk_buff*, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
