; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_b43legacy_dma_handle_txstatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_b43legacy_dma_handle_txstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_17__*, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__*, i64* }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.b43legacy_txstatus = type { i64, i32, i64, i32 }
%struct.b43legacy_dmaring = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.b43legacy_dmadesc_meta = type { i64, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [71 x i8] c"Out of order TX status report on DMA ring %d. Expected %d, but got %d\0A\00", align 1
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@SLOTS_PER_PACKET = common dso_local global i64 0, align 8
@B43legacy_DBG_DMAVERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Woke up TX ring %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_dma_handle_txstatus(%struct.b43legacy_wldev* %0, %struct.b43legacy_txstatus* %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca %struct.b43legacy_txstatus*, align 8
  %5 = alloca %struct.b43legacy_dmaring*, align 8
  %6 = alloca %struct.b43legacy_dmadesc_meta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store %struct.b43legacy_txstatus* %1, %struct.b43legacy_txstatus** %4, align 8
  %11 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %12 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %13 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.b43legacy_dmaring* @parse_cookie(%struct.b43legacy_wldev* %11, i32 %14, i32* %8)
  store %struct.b43legacy_dmaring* %15, %struct.b43legacy_dmaring** %5, align 8
  %16 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %17 = icmp ne %struct.b43legacy_dmaring* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %317

23:                                               ; preds = %2
  %24 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %25 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @B43legacy_WARN_ON(i32 %29)
  %31 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %32 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %35 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %23
  %42 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %43 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %41, %23
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %56 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %59 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (%struct.TYPE_17__*, i8*, i32, ...) @b43legacydbg(%struct.TYPE_17__* %57, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i32 %62)
  br label %317

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64, %239
  %66 = load i32, i32* %8, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %71 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br label %74

74:                                               ; preds = %68, %65
  %75 = phi i1 [ false, %65 ], [ %73, %68 ]
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 @B43legacy_WARN_ON(i32 %77)
  %79 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @op32_idx2desc(%struct.b43legacy_dmaring* %79, i32 %80, %struct.b43legacy_dmadesc_meta** %6)
  %82 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %83 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %82, i32 0, i32 1
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = icmp ne %struct.TYPE_16__* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %74
  %87 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %88 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %89 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %92 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %91, i32 0, i32 1
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @unmap_descbuffer(%struct.b43legacy_dmaring* %87, i32 %90, i32 %95, i32 1)
  br label %103

97:                                               ; preds = %74
  %98 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %99 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %100 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @unmap_descbuffer(%struct.b43legacy_dmaring* %98, i32 %101, i32 4, i32 1)
  br label %103

103:                                              ; preds = %97, %86
  %104 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %105 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %222

108:                                              ; preds = %103
  %109 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %110 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %109, i32 0, i32 1
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = icmp ne %struct.TYPE_16__* %111, null
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 @BUG_ON(i32 %114)
  %116 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %117 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %116, i32 0, i32 1
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_16__* %118)
  store %struct.ieee80211_tx_info* %119, %struct.ieee80211_tx_info** %10, align 8
  %120 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %121 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %7, align 4
  %127 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %128 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %127)
  %129 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %130 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %108
  %134 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %135 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %136 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %133, %108
  %140 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %141 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %144 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %143, i32 0, i32 0
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp sgt i64 %142, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %139
  %153 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %154 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  store i32 0, i32* %158, align 4
  %159 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %160 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %163 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i64 1
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  store i32 %161, i32* %167, align 4
  br label %210

168:                                              ; preds = %139
  %169 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %170 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %193

174:                                              ; preds = %168
  %175 = load i32, i32* %7, align 4
  %176 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %177 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i64 0
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  store i32 %175, i32* %181, align 4
  %182 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %183 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sub nsw i32 %184, %185
  %187 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %188 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i64 1
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  store i32 %186, i32* %192, align 4
  br label %209

193:                                              ; preds = %168
  %194 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %195 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %198 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  store i32 %196, i32* %202, align 4
  %203 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %204 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i64 1
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 1
  store i32 -1, i32* %208, align 4
  br label %209

209:                                              ; preds = %193, %174
  br label %210

210:                                              ; preds = %209, %152
  %211 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %212 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %211, i32 0, i32 0
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %214, align 8
  %216 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %217 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %216, i32 0, i32 1
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %217, align 8
  %219 = call i32 @ieee80211_tx_status_irqsafe(%struct.TYPE_15__* %215, %struct.TYPE_16__* %218)
  %220 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %221 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %220, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %221, align 8
  br label %229

222:                                              ; preds = %103
  %223 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %224 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %223, i32 0, i32 1
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %224, align 8
  %226 = icmp ne %struct.TYPE_16__* %225, null
  %227 = zext i1 %226 to i32
  %228 = call i32 @B43legacy_WARN_ON(i32 %227)
  br label %229

229:                                              ; preds = %222, %210
  %230 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %231 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %231, align 4
  %234 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %235 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %229
  br label %243

239:                                              ; preds = %229
  %240 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @next_slot(%struct.b43legacy_dmaring* %240, i32 %241)
  store i32 %242, i32* %8, align 4
  br label %65

243:                                              ; preds = %238
  %244 = load i32, i32* @jiffies, align 4
  %245 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %246 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 0
  store i32 %244, i32* %247, align 8
  %248 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %249 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %243
  %253 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %254 = call i64 @free_slots(%struct.b43legacy_dmaring* %253)
  %255 = load i64, i64* @SLOTS_PER_PACKET, align 8
  %256 = icmp slt i64 %254, %255
  %257 = zext i1 %256 to i32
  %258 = call i32 @B43legacy_WARN_ON(i32 %257)
  %259 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %260 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %259, i32 0, i32 3
  store i32 0, i32* %260, align 4
  br label %261

261:                                              ; preds = %252, %243
  %262 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %263 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %262, i32 0, i32 0
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 2
  %266 = load i64*, i64** %265, align 8
  %267 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %268 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %267, i32 0, i32 4
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds i64, i64* %266, i64 %269
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %283

273:                                              ; preds = %261
  %274 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %275 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %274, i32 0, i32 0
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 2
  %278 = load i64*, i64** %277, align 8
  %279 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %280 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %279, i32 0, i32 4
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds i64, i64* %278, i64 %281
  store i64 0, i64* %282, align 8
  br label %306

283:                                              ; preds = %261
  %284 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %285 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %284, i32 0, i32 0
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %287, align 8
  %289 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %290 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %289, i32 0, i32 4
  %291 = load i64, i64* %290, align 8
  %292 = call i32 @ieee80211_wake_queue(%struct.TYPE_15__* %288, i64 %291)
  %293 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %294 = load i32, i32* @B43legacy_DBG_DMAVERBOSE, align 4
  %295 = call i64 @b43legacy_debug(%struct.b43legacy_wldev* %293, i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %305

297:                                              ; preds = %283
  %298 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %299 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %298, i32 0, i32 0
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %299, align 8
  %301 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %302 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %301, i32 0, i32 5
  %303 = load i32, i32* %302, align 8
  %304 = call i32 (%struct.TYPE_17__*, i8*, i32, ...) @b43legacydbg(%struct.TYPE_17__* %300, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %303)
  br label %305

305:                                              ; preds = %297, %283
  br label %306

306:                                              ; preds = %305, %273
  %307 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %308 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %307, i32 0, i32 0
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %310, align 8
  %312 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %313 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %312, i32 0, i32 0
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 0
  %316 = call i32 @ieee80211_queue_work(%struct.TYPE_15__* %311, i32* %315)
  br label %317

317:                                              ; preds = %306, %54, %22
  ret void
}

declare dso_local %struct.b43legacy_dmaring* @parse_cookie(%struct.b43legacy_wldev*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @b43legacydbg(%struct.TYPE_17__*, i8*, i32, ...) #1

declare dso_local i32 @op32_idx2desc(%struct.b43legacy_dmaring*, i32, %struct.b43legacy_dmadesc_meta**) #1

declare dso_local i32 @unmap_descbuffer(%struct.b43legacy_dmaring*, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_16__*) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @next_slot(%struct.b43legacy_dmaring*, i32) #1

declare dso_local i64 @free_slots(%struct.b43legacy_dmaring*) #1

declare dso_local i32 @ieee80211_wake_queue(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @b43legacy_debug(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @ieee80211_queue_work(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
