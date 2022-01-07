; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_beacon_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_beacon_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i64, i64, i32, i32 (%struct.ath5k_hw*, %struct.ath5k_desc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32, i32, %struct.TYPE_3__ }
%struct.ath5k_desc = type opaque
%struct.TYPE_3__ = type { i32 }
%struct.ath5k_buf = type { i64, i64, %struct.ath5k_desc.0*, %struct.sk_buff* }
%struct.ath5k_desc.0 = type { i64, i64 }
%struct.sk_buff = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ATH5K_DEBUG_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"skb %p [data %p len %u] skbaddr %llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"beacon DMA mapping failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AR5K_TXDESC_NOACK = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@AR5K_TXDESC_VEOL = common dso_local global i32 0, align 4
@AR5K_ANTMODE_SECTOR_AP = common dso_local global i64 0, align 8
@AR5K_PKT_TYPE_BEACON = common dso_local global i32 0, align 4
@AR5K_TXKEYIX_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ath5k_buf*)* @ath5k_beacon_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_beacon_setup(%struct.ath5k_hw* %0, %struct.ath5k_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.ath5k_buf*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.ath5k_desc.0*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.ath5k_buf* %1, %struct.ath5k_buf** %5, align 8
  %13 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %14 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %13, i32 0, i32 3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %16)
  store %struct.ieee80211_tx_info* %17, %struct.ieee80211_tx_info** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %19 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DMA_TO_DEVICE, align 4
  %28 = call i64 @dma_map_single(i32 %20, i32 %23, i32 %26, i32 %27)
  %29 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %30 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %32 = load i32, i32* @ATH5K_DEBUG_BEACON, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %41 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %31, i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %33, i32 %36, i32 %39, i64 %42)
  %44 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %45 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %48 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @dma_mapping_error(i32 %46, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %2
  %53 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %54 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %55)
  %57 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %58 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %57, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %58, align 8
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %155

61:                                               ; preds = %2
  %62 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %63 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %62, i32 0, i32 2
  %64 = load %struct.ath5k_desc.0*, %struct.ath5k_desc.0** %63, align 8
  store %struct.ath5k_desc.0* %64, %struct.ath5k_desc.0** %8, align 8
  %65 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %66 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @AR5K_TXDESC_NOACK, align 4
  store i32 %68, i32* %11, align 4
  %69 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %70 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %61
  %75 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %76 = call i64 @ath5k_hw_hasveol(%struct.ath5k_hw* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %80 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ath5k_desc.0*, %struct.ath5k_desc.0** %8, align 8
  %83 = getelementptr inbounds %struct.ath5k_desc.0, %struct.ath5k_desc.0* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* @AR5K_TXDESC_VEOL, align 4
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %90

87:                                               ; preds = %74, %61
  %88 = load %struct.ath5k_desc.0*, %struct.ath5k_desc.0** %8, align 8
  %89 = getelementptr inbounds %struct.ath5k_desc.0, %struct.ath5k_desc.0* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %87, %78
  %91 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %92 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AR5K_ANTMODE_SECTOR_AP, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %98 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 2, i32 1
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %96, %90
  %105 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %106 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.ath5k_desc.0*, %struct.ath5k_desc.0** %8, align 8
  %109 = getelementptr inbounds %struct.ath5k_desc.0, %struct.ath5k_desc.0* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %111 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %110, i32 0, i32 4
  %112 = load i32 (%struct.ath5k_hw*, %struct.ath5k_desc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.ath5k_hw*, %struct.ath5k_desc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %111, align 8
  %113 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %114 = load %struct.ath5k_desc.0*, %struct.ath5k_desc.0** %8, align 8
  %115 = bitcast %struct.ath5k_desc.0* %114 to %struct.ath5k_desc*
  %116 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %119)
  %121 = load i32, i32* @AR5K_PKT_TYPE_BEACON, align 4
  %122 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %123 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %122, i32 0, i32 7
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 %125, 2
  %127 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %128 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %131 = call %struct.TYPE_4__* @ieee80211_get_tx_rate(i32 %129, %struct.ieee80211_tx_info* %130)
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @AR5K_TXKEYIX_INVALID, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i32 %112(%struct.ath5k_hw* %113, %struct.ath5k_desc* %115, i32 %118, i32 %120, i32 0, i32 %121, i32 %126, i32 %133, i32 1, i32 %134, i32 %135, i32 %136, i32 0, i32 0)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %104
  br label %142

141:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %155

142:                                              ; preds = %140
  %143 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %144 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %147 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @DMA_TO_DEVICE, align 4
  %153 = call i32 @dma_unmap_single(i32 %145, i64 %148, i32 %151, i32 %152)
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %142, %141, %52
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, %struct.sk_buff*, i32, i32, i64) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @ath5k_hw_hasveol(%struct.ath5k_hw*) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @ieee80211_get_tx_rate(i32, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
