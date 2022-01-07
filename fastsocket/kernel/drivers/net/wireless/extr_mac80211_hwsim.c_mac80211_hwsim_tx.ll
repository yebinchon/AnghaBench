; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.mac80211_hwsim_data* }
%struct.mac80211_hwsim_data = type { %struct.ieee80211_channel*, i64, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_tx_info = type { i32, i32, %struct.TYPE_8__, %struct.ieee80211_channel** }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_hdr = type { i32 }

@channels = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"TX w/o channel - queue = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Trying to TX when idle - reject\0A\00", align 1
@rctbl = common dso_local global i64 0, align 8
@wmediumd_portid = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @mac80211_hwsim_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac80211_hwsim_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.mac80211_hwsim_data*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 1
  %16 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %15, align 8
  store %struct.mac80211_hwsim_data* %16, %struct.mac80211_hwsim_data** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %17)
  store %struct.ieee80211_tx_info* %18, %struct.ieee80211_tx_info** %8, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 10
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i32 @dev_kfree_skb(%struct.sk_buff* %27)
  br label %211

29:                                               ; preds = %3
  %30 = load i32, i32* @channels, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %34 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %33, i32 0, i32 2
  %35 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %34, align 8
  store %struct.ieee80211_channel* %35, %struct.ieee80211_channel** %10, align 8
  br label %63

36:                                               ; preds = %29
  %37 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %38 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %43 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %42, i32 0, i32 0
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %43, align 8
  store %struct.ieee80211_channel* %44, %struct.ieee80211_channel** %10, align 8
  br label %62

45:                                               ; preds = %36
  %46 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %47 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %51)
  store %struct.ieee80211_chanctx_conf* %52, %struct.ieee80211_chanctx_conf** %9, align 8
  %53 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %9, align 8
  %54 = icmp ne %struct.ieee80211_chanctx_conf* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %9, align 8
  %57 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %58, align 8
  store %struct.ieee80211_channel* %59, %struct.ieee80211_channel** %10, align 8
  br label %61

60:                                               ; preds = %45
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %10, align 8
  br label %61

61:                                               ; preds = %60, %55
  br label %62

62:                                               ; preds = %61, %41
  br label %63

63:                                               ; preds = %62, %32
  %64 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %65 = icmp ne %struct.ieee80211_channel* %64, null
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %69 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @WARN(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = call i32 @dev_kfree_skb(%struct.sk_buff* %74)
  br label %211

76:                                               ; preds = %63
  %77 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %78 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %83 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %82, i32 0, i32 0
  %84 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %83, align 8
  %85 = icmp ne %struct.ieee80211_channel* %84, null
  br i1 %85, label %93, label %86

86:                                               ; preds = %81
  %87 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %88 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @wiphy_debug(i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = call i32 @dev_kfree_skb(%struct.sk_buff* %91)
  br label %211

93:                                               ; preds = %81, %76
  %94 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %95 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = icmp ne %struct.TYPE_9__* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %101 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = call i32 @hwsim_check_magic(%struct.TYPE_9__* %103)
  br label %105

105:                                              ; preds = %99, %93
  %106 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %107 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %112 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @hwsim_check_sta_magic(i32 %113)
  br label %115

115:                                              ; preds = %110, %105
  %116 = load i64, i64* @rctbl, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %137

118:                                              ; preds = %115
  %119 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %120 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %124 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %127 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %128 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %132 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %134)
  %136 = call i32 @ieee80211_get_tx_rates(%struct.TYPE_9__* %122, i32 %125, %struct.sk_buff* %126, %struct.TYPE_10__* %130, i32 %135)
  br label %137

137:                                              ; preds = %118, %115
  %138 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %139 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %140 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %139, i32 0, i32 3
  %141 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %140, align 8
  %142 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %141, i64 0
  store %struct.ieee80211_channel* %138, %struct.ieee80211_channel** %142, align 8
  %143 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %145 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %146 = call i32 @mac80211_hwsim_monitor_rx(%struct.ieee80211_hw* %143, %struct.sk_buff* %144, %struct.ieee80211_channel* %145)
  %147 = load i32, i32* @wmediumd_portid, align 4
  %148 = call i64 @ACCESS_ONCE(i32 %147)
  store i64 %148, i64* %12, align 8
  %149 = load i64, i64* %12, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %137
  %152 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %154 = load i64, i64* %12, align 8
  call void @mac80211_hwsim_tx_frame_nl(%struct.ieee80211_hw* %152, %struct.sk_buff* %153, i64 %154)
  br label %211

155:                                              ; preds = %137
  %156 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %158 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %159 = call i32 @mac80211_hwsim_tx_frame_no_nl(%struct.ieee80211_hw* %156, %struct.sk_buff* %157, %struct.ieee80211_channel* %158)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %155
  %163 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp sge i32 %165, 16
  br i1 %166, label %167, label %177

167:                                              ; preds = %162
  %168 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %171, %struct.ieee80211_hdr** %13, align 8
  %172 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %173 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %174 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @mac80211_hwsim_monitor_ack(%struct.ieee80211_channel* %172, i32 %175)
  br label %177

177:                                              ; preds = %167, %162, %155
  %178 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %179 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %178)
  %180 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %181 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i64 0
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  store i32 1, i32* %185, align 4
  %186 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %187 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i64 1
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  store i32 -1, i32* %191, align 4
  %192 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %193 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %207, label %198

198:                                              ; preds = %177
  %199 = load i32, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %198
  %202 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %203 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %204 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %201, %198, %177
  %208 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %209 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %210 = call i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw* %208, %struct.sk_buff* %209)
  br label %211

211:                                              ; preds = %207, %151, %86, %73, %26
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i64 @WARN(i32, i8*, i32) #1

declare dso_local i32 @wiphy_debug(i32, i8*) #1

declare dso_local i32 @hwsim_check_magic(%struct.TYPE_9__*) #1

declare dso_local i32 @hwsim_check_sta_magic(i32) #1

declare dso_local i32 @ieee80211_get_tx_rates(%struct.TYPE_9__*, i32, %struct.sk_buff*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @mac80211_hwsim_monitor_rx(%struct.ieee80211_hw*, %struct.sk_buff*, %struct.ieee80211_channel*) #1

declare dso_local i64 @ACCESS_ONCE(i32) #1

declare dso_local void @mac80211_hwsim_tx_frame_nl(%struct.ieee80211_hw*, %struct.sk_buff*, i64) #1

declare dso_local i32 @mac80211_hwsim_tx_frame_no_nl(%struct.ieee80211_hw*, %struct.sk_buff*, %struct.ieee80211_channel*) #1

declare dso_local i32 @mac80211_hwsim_monitor_ack(%struct.ieee80211_channel*, i32) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
