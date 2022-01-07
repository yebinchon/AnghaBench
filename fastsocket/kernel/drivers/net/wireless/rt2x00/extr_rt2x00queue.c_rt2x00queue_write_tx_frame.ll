; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_write_tx_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_write_tx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.queue_entry = type { i32, %struct.sk_buff* }
%struct.txentry_desc = type { i32, i32 }
%struct.skb_frame_desc = type { %struct.queue_entry*, i32, i8*, i8* }

@SKBDESC_NOT_MAC80211 = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT_IV = common dso_local global i32 0, align 4
@REQUIRE_COPY_IV = common dso_local global i32 0, align 4
@REQUIRE_L2PAD = common dso_local global i32 0, align 4
@REQUIRE_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Dropping frame due to full tx queue %d\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@Q_INDEX = common dso_local global i32 0, align 4
@ENTRY_OWNER_DEVICE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"Arrived at non-free entry in the non-full queue %d\0APlease file bug report to %s\0A\00", align 1
@DRV_PROJECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENTRY_DATA_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00queue_write_tx_frame(%struct.data_queue* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.data_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.queue_entry*, align 8
  %9 = alloca %struct.txentry_desc, align 4
  %10 = alloca %struct.skb_frame_desc*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.data_queue* %0, %struct.data_queue** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %15 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i32 @rt2x00queue_create_tx_descriptor(%struct.TYPE_7__* %16, %struct.sk_buff* %17, %struct.txentry_desc* %9, i32* null)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %19)
  store %struct.ieee80211_tx_info* %20, %struct.ieee80211_tx_info** %7, align 8
  %21 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %11, align 8
  %28 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %12, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.sk_buff* %35)
  store %struct.skb_frame_desc* %36, %struct.skb_frame_desc** %10, align 8
  %37 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %10, align 8
  %38 = call i32 @memset(%struct.skb_frame_desc* %37, i32 0, i32 32)
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %10, align 8
  %41 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %10, align 8
  %44 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %3
  %48 = load i32, i32* @SKBDESC_NOT_MAC80211, align 4
  %49 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %10, align 8
  %50 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %3
  %54 = load i32, i32* @ENTRY_TXD_ENCRYPT, align 4
  %55 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %9, i32 0, i32 1
  %56 = call i64 @test_bit(i32 %54, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = load i32, i32* @ENTRY_TXD_ENCRYPT_IV, align 4
  %60 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %9, i32 0, i32 1
  %61 = call i64 @test_bit(i32 %59, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @REQUIRE_COPY_IV, align 4
  %65 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %66 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = call i64 @test_bit(i32 %64, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call i32 @rt2x00crypto_tx_copy_iv(%struct.sk_buff* %72, %struct.txentry_desc* %9)
  br label %77

74:                                               ; preds = %63
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = call i32 @rt2x00crypto_tx_remove_iv(%struct.sk_buff* %75, %struct.txentry_desc* %9)
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %58, %53
  %79 = load i32, i32* @REQUIRE_L2PAD, align 4
  %80 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %81 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %80, i32 0, i32 2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = call i64 @test_bit(i32 %79, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %9, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @rt2x00queue_insert_l2pad(%struct.sk_buff* %87, i32 %89)
  br label %103

91:                                               ; preds = %78
  %92 = load i32, i32* @REQUIRE_DMA, align 4
  %93 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %94 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %93, i32 0, i32 2
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = call i64 @test_bit(i32 %92, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = call i32 @rt2x00queue_align_frame(%struct.sk_buff* %100)
  br label %102

102:                                              ; preds = %99, %91
  br label %103

103:                                              ; preds = %102, %86
  %104 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %105 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %104, i32 0, i32 0
  %106 = call i32 @spin_lock(i32* %105)
  %107 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %108 = call i32 @rt2x00queue_full(%struct.data_queue* %107)
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %103
  %112 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %113 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %112, i32 0, i32 2
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %116 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @rt2x00_err(%struct.TYPE_7__* %114, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @ENOBUFS, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %13, align 4
  br label %176

121:                                              ; preds = %103
  %122 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %123 = load i32, i32* @Q_INDEX, align 4
  %124 = call %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue* %122, i32 %123)
  store %struct.queue_entry* %124, %struct.queue_entry** %8, align 8
  %125 = load i32, i32* @ENTRY_OWNER_DEVICE_DATA, align 4
  %126 = load %struct.queue_entry*, %struct.queue_entry** %8, align 8
  %127 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %126, i32 0, i32 0
  %128 = call i32 @test_and_set_bit(i32 %125, i32* %127)
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %121
  %132 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %133 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %132, i32 0, i32 2
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %136 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @DRV_PROJECT, align 4
  %139 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @rt2x00_err(%struct.TYPE_7__* %134, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %137, i32 %138)
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %13, align 4
  br label %176

142:                                              ; preds = %121
  %143 = load %struct.queue_entry*, %struct.queue_entry** %8, align 8
  %144 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %10, align 8
  %145 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %144, i32 0, i32 0
  store %struct.queue_entry* %143, %struct.queue_entry** %145, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %147 = load %struct.queue_entry*, %struct.queue_entry** %8, align 8
  %148 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %147, i32 0, i32 1
  store %struct.sk_buff* %146, %struct.sk_buff** %148, align 8
  %149 = load %struct.queue_entry*, %struct.queue_entry** %8, align 8
  %150 = call i32 @rt2x00queue_write_tx_data(%struct.queue_entry* %149, %struct.txentry_desc* %9)
  %151 = call i64 @unlikely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %142
  %154 = load i32, i32* @ENTRY_OWNER_DEVICE_DATA, align 4
  %155 = load %struct.queue_entry*, %struct.queue_entry** %8, align 8
  %156 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %155, i32 0, i32 0
  %157 = call i32 @clear_bit(i32 %154, i32* %156)
  %158 = load %struct.queue_entry*, %struct.queue_entry** %8, align 8
  %159 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %158, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %159, align 8
  %160 = load i32, i32* @EIO, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %13, align 4
  br label %176

162:                                              ; preds = %142
  %163 = load %struct.queue_entry*, %struct.queue_entry** %8, align 8
  %164 = call i32 @rt2x00queue_bar_check(%struct.queue_entry* %163)
  %165 = load i32, i32* @ENTRY_DATA_PENDING, align 4
  %166 = load %struct.queue_entry*, %struct.queue_entry** %8, align 8
  %167 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %166, i32 0, i32 0
  %168 = call i32 @set_bit(i32 %165, i32* %167)
  %169 = load %struct.queue_entry*, %struct.queue_entry** %8, align 8
  %170 = load i32, i32* @Q_INDEX, align 4
  %171 = call i32 @rt2x00queue_index_inc(%struct.queue_entry* %169, i32 %170)
  %172 = load %struct.queue_entry*, %struct.queue_entry** %8, align 8
  %173 = call i32 @rt2x00queue_write_tx_descriptor(%struct.queue_entry* %172, %struct.txentry_desc* %9)
  %174 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %175 = call i32 @rt2x00queue_kick_tx_queue(%struct.data_queue* %174, %struct.txentry_desc* %9)
  br label %176

176:                                              ; preds = %162, %153, %131, %111
  %177 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %178 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %177, i32 0, i32 0
  %179 = call i32 @spin_unlock(i32* %178)
  %180 = load i32, i32* %13, align 4
  ret i32 %180
}

declare dso_local i32 @rt2x00queue_create_tx_descriptor(%struct.TYPE_7__*, %struct.sk_buff*, %struct.txentry_desc*, i32*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.skb_frame_desc*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00crypto_tx_copy_iv(%struct.sk_buff*, %struct.txentry_desc*) #1

declare dso_local i32 @rt2x00crypto_tx_remove_iv(%struct.sk_buff*, %struct.txentry_desc*) #1

declare dso_local i32 @rt2x00queue_insert_l2pad(%struct.sk_buff*, i32) #1

declare dso_local i32 @rt2x00queue_align_frame(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00queue_full(%struct.data_queue*) #1

declare dso_local i32 @rt2x00_err(%struct.TYPE_7__*, i8*, i32, ...) #1

declare dso_local %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rt2x00queue_write_tx_data(%struct.queue_entry*, %struct.txentry_desc*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rt2x00queue_bar_check(%struct.queue_entry*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rt2x00queue_index_inc(%struct.queue_entry*, i32) #1

declare dso_local i32 @rt2x00queue_write_tx_descriptor(%struct.queue_entry*, %struct.txentry_desc*) #1

declare dso_local i32 @rt2x00queue_kick_tx_queue(%struct.data_queue*, %struct.txentry_desc*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
