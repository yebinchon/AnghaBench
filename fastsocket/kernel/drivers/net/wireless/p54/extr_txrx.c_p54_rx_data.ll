; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_txrx.c_p54_rx_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_txrx.c_p54_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i64, i32, i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.sk_buff = type { i64 }
%struct.p54_rx_data = type { i32, i32, i64, i32, i64*, i32, i32, i32, i32 }
%struct.ieee80211_rx_status = type { i32, i64, i32, i32, i32, i32, i32 }

@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@P54_HDR_FLAG_DATA_IN_FCS_GOOD = common dso_local global i32 0, align 4
@P54_DECRYPT_OK = common dso_local global i64 0, align 8
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@P54_DECRYPT_FAIL_MICHAEL = common dso_local global i64 0, align 8
@P54_DECRYPT_FAIL_TKIP = common dso_local global i64 0, align 8
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@RX_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@RX_FLAG_MACTIME_END = common dso_local global i32 0, align 4
@P54_HDR_FLAG_DATA_ALIGN = common dso_local global i32 0, align 4
@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@P54_STATISTICS_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p54_common*, %struct.sk_buff*)* @p54_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54_rx_data(%struct.p54_common* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p54_common*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.p54_rx_data*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.p54_common* %0, %struct.p54_common** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.p54_rx_data*
  store %struct.p54_rx_data* %15, %struct.p54_rx_data** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %16)
  store %struct.ieee80211_rx_status* %17, %struct.ieee80211_rx_status** %7, align 8
  %18 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %19 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %8, align 4
  store i64 48, i64* %9, align 8
  %22 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %23 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 15
  store i32 %25, i32* %11, align 4
  %26 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %27 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %225

35:                                               ; preds = %2
  %36 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %37 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @P54_HDR_FLAG_DATA_IN_FCS_GOOD, align 4
  %40 = call i32 @cpu_to_le16(i32 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %225

44:                                               ; preds = %35
  %45 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %46 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @P54_DECRYPT_OK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %52 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %53 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %58 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @P54_DECRYPT_FAIL_MICHAEL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %64 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @P54_DECRYPT_FAIL_TKIP, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62, %56
  %69 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %70 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %71 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %76 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %77 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @p54_rssi_to_dbm(%struct.p54_common* %75, i32 %78)
  %80 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %81 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %83 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, 16
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %74
  %88 = load i32, i32* @RX_FLAG_SHORTPRE, align 4
  %89 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %90 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %74
  %94 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %95 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %94, i32 0, i32 3
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %93
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %106, 4
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %112

109:                                              ; preds = %105
  %110 = load i32, i32* %11, align 4
  %111 = sub nsw i32 %110, 4
  br label %112

112:                                              ; preds = %109, %108
  %113 = phi i32 [ 0, %108 ], [ %111, %109 ]
  %114 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %115 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %120

116:                                              ; preds = %93
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %119 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %112
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %123 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  %124 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %125 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %124, i32 0, i32 3
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %134 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  %135 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %136 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %139 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  %140 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %141 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @le32_to_cpu(i32 %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %146 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %120
  %150 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %151 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %151, align 8
  br label %154

154:                                              ; preds = %149, %120
  %155 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %156 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = shl i32 %158, 32
  %160 = load i32, i32* %10, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %163 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %166 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* @RX_FLAG_MACTIME_END, align 4
  %168 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %169 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  %172 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %173 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @P54_HDR_FLAG_DATA_ALIGN, align 4
  %176 = call i32 @cpu_to_le16(i32 %175)
  %177 = and i32 %174, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %154
  %180 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %181 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %180, i32 0, i32 4
  %182 = load i64*, i64** %181, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* %9, align 8
  %186 = add i64 %185, %184
  store i64 %186, i64* %9, align 8
  br label %187

187:                                              ; preds = %179, %154
  %188 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %189 = load i64, i64* %9, align 8
  %190 = call i32 @skb_pull(%struct.sk_buff* %188, i64 %189)
  %191 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %192 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %193 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @le16_to_cpu(i32 %194)
  %196 = call i32 @skb_trim(%struct.sk_buff* %191, i32 %195)
  %197 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %198 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %197, i32 0, i32 3
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %204 = and i32 %202, %203
  %205 = call i64 @unlikely(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %187
  %208 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %209 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %210 = call i32 @p54_pspoll_workaround(%struct.p54_common* %208, %struct.sk_buff* %209)
  br label %211

211:                                              ; preds = %207, %187
  %212 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %213 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %212, i32 0, i32 3
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %213, align 8
  %215 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %216 = call i32 @ieee80211_rx_irqsafe(%struct.TYPE_9__* %214, %struct.sk_buff* %215)
  %217 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %218 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %217, i32 0, i32 3
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %221 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %220, i32 0, i32 2
  %222 = load i32, i32* @P54_STATISTICS_UPDATE, align 4
  %223 = call i32 @msecs_to_jiffies(i32 %222)
  %224 = call i32 @ieee80211_queue_delayed_work(%struct.TYPE_9__* %219, i32* %221, i32 %223)
  store i32 -1, i32* %3, align 4
  br label %225

225:                                              ; preds = %211, %43, %34
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @p54_rssi_to_dbm(%struct.p54_common*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @p54_pspoll_workaround(%struct.p54_common*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx_irqsafe(%struct.TYPE_9__*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
