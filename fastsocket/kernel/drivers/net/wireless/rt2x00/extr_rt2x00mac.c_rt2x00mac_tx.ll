; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00mac.c_rt2x00mac_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00mac.c_rt2x00mac_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.data_queue = type { i32 }

@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_SEND_AFTER_DTIM = common dso_local global i32 0, align 4
@REQUIRE_ATIM_QUEUE = common dso_local global i32 0, align 4
@QID_ATIM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Attempt to send packet over invalid queue %d\0APlease file bug report to %s\0A\00", align 1
@DRV_PROJECT = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_CTS_PROTECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00mac_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rt2x00_dev*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.data_queue*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %12, align 8
  store %struct.rt2x00_dev* %13, %struct.rt2x00_dev** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %14)
  store %struct.ieee80211_tx_info* %15, %struct.ieee80211_tx_info** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %16)
  store i32 %17, i32* %9, align 4
  store %struct.data_queue* null, %struct.data_queue** %10, align 8
  %18 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %20 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %19, i32 0, i32 2
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %119

24:                                               ; preds = %3
  %25 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IEEE80211_TX_CTL_SEND_AFTER_DTIM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i32, i32* @REQUIRE_ATIM_QUEUE, align 4
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %34 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %33, i32 0, i32 1
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @QID_ATIM, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %37, %31, %24
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev* %40, i32 %41)
  store %struct.data_queue* %42, %struct.data_queue** %10, align 8
  %43 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %44 = icmp ne %struct.data_queue* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @DRV_PROJECT, align 4
  %53 = call i32 @rt2x00_err(%struct.rt2x00_dev* %50, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  br label %119

54:                                               ; preds = %39
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %56 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %89, label %63

63:                                               ; preds = %54
  %64 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %65 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %72 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %63
  %77 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %78 = call i32 @rt2x00queue_available(%struct.data_queue* %77)
  %79 = icmp sle i32 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %110

81:                                               ; preds = %76
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %83 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = call i64 @rt2x00mac_tx_rts_cts(%struct.rt2x00_dev* %82, %struct.data_queue* %83, %struct.sk_buff* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %110

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %63, %54
  %90 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = call i32 @rt2x00queue_write_tx_frame(%struct.data_queue* %90, %struct.sk_buff* %91, i32 0)
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %110

96:                                               ; preds = %89
  %97 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %98 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %97, i32 0, i32 0
  %99 = call i32 @spin_lock(i32* %98)
  %100 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %101 = call i64 @rt2x00queue_threshold(%struct.data_queue* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %105 = call i32 @rt2x00queue_pause_queue(%struct.data_queue* %104)
  br label %106

106:                                              ; preds = %103, %96
  %107 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %108 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %107, i32 0, i32 0
  %109 = call i32 @spin_unlock(i32* %108)
  br label %123

110:                                              ; preds = %95, %87, %80
  %111 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %112 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %111, i32 0, i32 0
  %113 = call i32 @spin_lock(i32* %112)
  %114 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %115 = call i32 @rt2x00queue_pause_queue(%struct.data_queue* %114)
  %116 = load %struct.data_queue*, %struct.data_queue** %10, align 8
  %117 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock(i32* %117)
  br label %119

119:                                              ; preds = %110, %49, %23
  %120 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = call i32 @ieee80211_free_txskb(%struct.ieee80211_hw* %120, %struct.sk_buff* %121)
  br label %123

123:                                              ; preds = %119, %106
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*, i32, i32) #1

declare dso_local i32 @rt2x00queue_available(%struct.data_queue*) #1

declare dso_local i64 @rt2x00mac_tx_rts_cts(%struct.rt2x00_dev*, %struct.data_queue*, %struct.sk_buff*) #1

declare dso_local i32 @rt2x00queue_write_tx_frame(%struct.data_queue*, %struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @rt2x00queue_threshold(%struct.data_queue*) #1

declare dso_local i32 @rt2x00queue_pause_queue(%struct.data_queue*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ieee80211_free_txskb(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
