; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_tx.c_iwl_mvm_tx_skb_non_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_tx.c_iwl_mvm_tx_skb_non_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.iwl_device_cmd = type { i64 }
%struct.iwl_tx_cmd = type { i32 }
%struct.iwl_mvm_vif = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_SEND_AFTER_DTIM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"station Id %d, queue=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_tx_skb_non_sta(%struct.iwl_mvm* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.iwl_device_cmd*, align 8
  %9 = alloca %struct.iwl_tx_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_mvm_vif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %15, %struct.ieee80211_hdr** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %16)
  store %struct.ieee80211_tx_info* %17, %struct.ieee80211_tx_info** %7, align 8
  %18 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %22 = and i32 %20, %21
  %23 = call i64 @WARN_ON_ONCE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %142

26:                                               ; preds = %2
  %27 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IEEE80211_TX_CTL_SEND_AFTER_DTIM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %26
  %34 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %44 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %42, %48
  br label %50

50:                                               ; preds = %39, %33
  %51 = phi i1 [ true, %33 ], [ %49, %39 ]
  br label %52

52:                                               ; preds = %50, %26
  %53 = phi i1 [ false, %26 ], [ %51, %50 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @WARN_ON_ONCE(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %142

58:                                               ; preds = %52
  %59 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %60 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = icmp ne %struct.TYPE_8__* %62, null
  br i1 %63, label %64, label %92

64:                                               ; preds = %58
  %65 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %82, label %73

73:                                               ; preds = %64
  %74 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %75 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %73, %64
  %83 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %84 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.TYPE_8__* %86)
  store %struct.iwl_mvm_vif* %87, %struct.iwl_mvm_vif** %11, align 8
  %88 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %11, align 8
  %89 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %10, align 4
  br label %97

92:                                               ; preds = %73, %58
  %93 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %94 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %92, %82
  %98 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %101 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @IWL_DEBUG_TX(%struct.iwl_mvm* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %99, i64 %102)
  %104 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call %struct.iwl_device_cmd* @iwl_mvm_set_tx_params(%struct.iwl_mvm* %104, %struct.sk_buff* %105, i32* null, i32 %106)
  store %struct.iwl_device_cmd* %107, %struct.iwl_device_cmd** %8, align 8
  %108 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %8, align 8
  %109 = icmp ne %struct.iwl_device_cmd* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %97
  store i32 -1, i32* %3, align 4
  br label %142

111:                                              ; preds = %97
  %112 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %8, align 8
  %113 = getelementptr inbounds %struct.iwl_device_cmd, %struct.iwl_device_cmd* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to %struct.iwl_tx_cmd*
  store %struct.iwl_tx_cmd* %115, %struct.iwl_tx_cmd** %9, align 8
  %116 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %117 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %120 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %121 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ieee80211_hdrlen(i32 %122)
  %124 = call i32 @memcpy(i32 %118, %struct.ieee80211_hdr* %119, i32 %123)
  %125 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %126 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %8, align 8
  %130 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %131 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @iwl_trans_tx(i32 %127, %struct.sk_buff* %128, %struct.iwl_device_cmd* %129, i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %111
  %136 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %137 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %8, align 8
  %140 = call i32 @iwl_trans_free_tx_cmd(i32 %138, %struct.iwl_device_cmd* %139)
  store i32 -1, i32* %3, align 4
  br label %142

141:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %135, %110, %57, %25
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.TYPE_8__*) #1

declare dso_local i32 @IWL_DEBUG_TX(%struct.iwl_mvm*, i8*, i32, i64) #1

declare dso_local %struct.iwl_device_cmd* @iwl_mvm_set_tx_params(%struct.iwl_mvm*, %struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211_hdr*, i32) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i64 @iwl_trans_tx(i32, %struct.sk_buff*, %struct.iwl_device_cmd*, i64) #1

declare dso_local i32 @iwl_trans_free_tx_cmd(i32, %struct.iwl_device_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
