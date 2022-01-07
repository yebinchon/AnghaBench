; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_receive_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_receive_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_5__, i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32* }
%struct.sk_buff = type { i32 }
%struct.ath5k_rx_status = type { i32, i32, i64, i64, i32 }
%struct.ieee80211_rx_status = type { i64, i32, i64, i32, i64, i32, i32 }

@AR5K_RXERR_MIC = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@RX_FLAG_MACTIME_END = common dso_local global i32 0, align 4
@RX_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, %struct.sk_buff*, %struct.ath5k_rx_status*)* @ath5k_receive_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_receive_frame(%struct.ath5k_hw* %0, %struct.sk_buff* %1, %struct.ath5k_rx_status* %2) #0 {
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ath5k_rx_status*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.ath5k_rx_status* %2, %struct.ath5k_rx_status** %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call i32 @ath5k_remove_padding(%struct.sk_buff* %8)
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %10)
  store %struct.ieee80211_rx_status* %11, %struct.ieee80211_rx_status** %7, align 8
  %12 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %12, i32 0, i32 3
  store i32 0, i32* %13, align 8
  %14 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %15 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @AR5K_RXERR_MIC, align 4
  %18 = and i32 %16, %17
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %23 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %21, %3
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %29 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %30 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ath5k_extend_tsf(%struct.ath5k_hw* %28, i32 %31)
  %33 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @RX_FLAG_MACTIME_END, align 4
  %36 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %41 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %40, i32 0, i32 2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %46 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %48 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %53 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %55 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %58 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %61, i32 0, i32 4
  store i64 %60, i64* %62, align 8
  %63 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %64 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %69 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %27
  %73 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %74 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 5
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %79 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %83 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %97

89:                                               ; preds = %72, %27
  %90 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %91 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %89, %77
  %98 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %99 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %100 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @ath5k_hw_to_driver_rix(%struct.ath5k_hw* %98, i64 %101)
  %103 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %104 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %108 = call i32 @ath5k_rx_decrypted(%struct.ath5k_hw* %105, %struct.sk_buff* %106, %struct.ath5k_rx_status* %107)
  %109 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %110 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %114 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp uge i64 %115, 0
  br i1 %116, label %117, label %145

117:                                              ; preds = %97
  %118 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %119 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %122 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %121, i32 0, i32 3
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %125 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %124, i32 0, i32 2
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %133 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %120, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %117
  %140 = load i32, i32* @RX_FLAG_SHORTPRE, align 4
  %141 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %142 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %139, %117, %97
  %146 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %148 = call i32 @trace_ath5k_rx(%struct.ath5k_hw* %146, %struct.sk_buff* %147)
  %149 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %151 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %6, align 8
  %152 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @ath5k_update_beacon_rssi(%struct.ath5k_hw* %149, %struct.sk_buff* %150, i64 %153)
  %155 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %156 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %145
  %161 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %163 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %164 = call i32 @ath5k_check_ibss_tsf(%struct.ath5k_hw* %161, %struct.sk_buff* %162, %struct.ieee80211_rx_status* %163)
  br label %165

165:                                              ; preds = %160, %145
  %166 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %167 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %170 = call i32 @ieee80211_rx(i32 %168, %struct.sk_buff* %169)
  ret void
}

declare dso_local i32 @ath5k_remove_padding(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ath5k_extend_tsf(%struct.ath5k_hw*, i32) #1

declare dso_local i64 @ath5k_hw_to_driver_rix(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @ath5k_rx_decrypted(%struct.ath5k_hw*, %struct.sk_buff*, %struct.ath5k_rx_status*) #1

declare dso_local i32 @trace_ath5k_rx(%struct.ath5k_hw*, %struct.sk_buff*) #1

declare dso_local i32 @ath5k_update_beacon_rssi(%struct.ath5k_hw*, %struct.sk_buff*, i64) #1

declare dso_local i32 @ath5k_check_ibss_tsf(%struct.ath5k_hw*, %struct.sk_buff*, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @ieee80211_rx(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
