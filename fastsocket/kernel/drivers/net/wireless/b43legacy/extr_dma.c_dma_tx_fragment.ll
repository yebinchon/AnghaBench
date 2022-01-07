; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_dma_tx_fragment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_dma_tx_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_dmaring = type { i32, i32, i32, i32* }
%struct.sk_buff = type { i8*, i32, i8*, i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.b43legacy_dmadesc32 = type { i32 }
%struct.b43legacy_dmadesc_meta = type { i32, i8*, %struct.sk_buff* }
%struct.TYPE_2__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_dmaring*, %struct.sk_buff**)* @dma_tx_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_tx_fragment(%struct.b43legacy_dmaring* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43legacy_dmaring*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.b43legacy_dmadesc32*, align 8
  %14 = alloca %struct.b43legacy_dmadesc_meta*, align 8
  %15 = alloca %struct.b43legacy_dmadesc_meta*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  store %struct.b43legacy_dmaring* %0, %struct.b43legacy_dmaring** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  %17 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %19)
  store %struct.ieee80211_tx_info* %20, %struct.ieee80211_tx_info** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @B43legacy_WARN_ON(i32 %26)
  %28 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %29 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  %31 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %32 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %35 = call i32 @request_slot(%struct.b43legacy_dmaring* %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.b43legacy_dmadesc32* @op32_idx2desc(%struct.b43legacy_dmaring* %36, i32 %37, %struct.b43legacy_dmadesc_meta** %15)
  store %struct.b43legacy_dmadesc32* %38, %struct.b43legacy_dmadesc32** %13, align 8
  %39 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %15, align 8
  %40 = call i32 @memset(%struct.b43legacy_dmadesc_meta* %39, i32 0, i32 24)
  %41 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %42 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32* %47, i32** %8, align 8
  %48 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %49 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %59 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @generate_cookie(%struct.b43legacy_dmaring* %59, i32 %60)
  %62 = call i32 @b43legacy_generate_txhdr(i32 %50, i32* %51, i8* %54, i32 %57, %struct.ieee80211_tx_info* %58, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %2
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %69 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %72 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %3, align 4
  br label %247

74:                                               ; preds = %2
  %75 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = bitcast i32* %76 to i8*
  %78 = call i8* @map_descbuffer(%struct.b43legacy_dmaring* %75, i8* %77, i32 4, i32 1)
  %79 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %15, align 8
  %80 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %82 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %15, align 8
  %83 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @b43legacy_dma_mapping_error(%struct.b43legacy_dmaring* %81, i8* %84, i32 4, i32 1)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %74
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %90 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %93 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %247

96:                                               ; preds = %74
  %97 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %98 = load %struct.b43legacy_dmadesc32*, %struct.b43legacy_dmadesc32** %13, align 8
  %99 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %15, align 8
  %100 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @op32_fill_descriptor(%struct.b43legacy_dmaring* %97, %struct.b43legacy_dmadesc32* %98, i8* %101, i32 4, i32 1, i32 0, i32 0)
  %103 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %104 = call i32 @request_slot(%struct.b43legacy_dmaring* %103)
  store i32 %104, i32* %9, align 4
  %105 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call %struct.b43legacy_dmadesc32* @op32_idx2desc(%struct.b43legacy_dmaring* %105, i32 %106, %struct.b43legacy_dmadesc_meta** %14)
  store %struct.b43legacy_dmadesc32* %107, %struct.b43legacy_dmadesc32** %13, align 8
  %108 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %14, align 8
  %109 = call i32 @memset(%struct.b43legacy_dmadesc_meta* %108, i32 0, i32 24)
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %14, align 8
  %112 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %111, i32 0, i32 2
  store %struct.sk_buff* %110, %struct.sk_buff** %112, align 8
  %113 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %14, align 8
  %114 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @map_descbuffer(%struct.b43legacy_dmaring* %115, i8* %118, i32 %121, i32 1)
  %123 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %14, align 8
  %124 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %126 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %14, align 8
  %127 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @b43legacy_dma_mapping_error(%struct.b43legacy_dmaring* %125, i8* %128, i32 %131, i32 1)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %221

134:                                              ; preds = %96
  %135 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @GFP_ATOMIC, align 4
  %139 = load i32, i32* @GFP_DMA, align 4
  %140 = or i32 %138, %139
  %141 = call %struct.sk_buff* @alloc_skb(i32 %137, i32 %140)
  store %struct.sk_buff* %141, %struct.sk_buff** %16, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %143 = icmp ne %struct.sk_buff* %142, null
  br i1 %143, label %153, label %144

144:                                              ; preds = %134
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %147 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %150 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %12, align 4
  br label %240

153:                                              ; preds = %134
  %154 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i8* @skb_put(%struct.sk_buff* %154, i32 %157)
  %159 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @memcpy(i8* %158, i8* %161, i32 %164)
  %166 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @memcpy(i8* %168, i8* %171, i32 8)
  %173 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 8
  %178 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %179 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %180 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %179)
  %181 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %178, i32 %180)
  %182 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %183 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %182)
  store %struct.ieee80211_tx_info* %183, %struct.ieee80211_tx_info** %7, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %185 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %184)
  %186 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %186, %struct.sk_buff** %6, align 8
  %187 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %188 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %187, %struct.sk_buff** %188, align 8
  %189 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %190 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %14, align 8
  %191 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %190, i32 0, i32 2
  store %struct.sk_buff* %189, %struct.sk_buff** %191, align 8
  %192 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %193 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = call i8* @map_descbuffer(%struct.b43legacy_dmaring* %192, i8* %195, i32 %198, i32 1)
  %200 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %14, align 8
  %201 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %200, i32 0, i32 1
  store i8* %199, i8** %201, align 8
  %202 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %203 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %14, align 8
  %204 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %207 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = call i64 @b43legacy_dma_mapping_error(%struct.b43legacy_dmaring* %202, i8* %205, i32 %208, i32 1)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %153
  %212 = load i32, i32* %10, align 4
  %213 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %214 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load i32, i32* %11, align 4
  %216 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %217 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* @EIO, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %12, align 4
  br label %237

220:                                              ; preds = %153
  br label %221

221:                                              ; preds = %220, %96
  %222 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %223 = load %struct.b43legacy_dmadesc32*, %struct.b43legacy_dmadesc32** %13, align 8
  %224 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %14, align 8
  %225 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %224, i32 0, i32 1
  %226 = load i8*, i8** %225, align 8
  %227 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %228 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @op32_fill_descriptor(%struct.b43legacy_dmaring* %222, %struct.b43legacy_dmadesc32* %223, i8* %226, i32 %229, i32 0, i32 1, i32 1)
  %231 = call i32 (...) @wmb()
  %232 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %233 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @next_slot(%struct.b43legacy_dmaring* %233, i32 %234)
  %236 = call i32 @op32_poke_tx(%struct.b43legacy_dmaring* %232, i32 %235)
  store i32 0, i32* %3, align 4
  br label %247

237:                                              ; preds = %211
  %238 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %239 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %238)
  br label %240

240:                                              ; preds = %237, %144
  %241 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %242 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %15, align 8
  %243 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %242, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @unmap_descbuffer(%struct.b43legacy_dmaring* %241, i8* %244, i32 4, i32 1)
  %246 = load i32, i32* %12, align 4
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %240, %221, %87, %66
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @request_slot(%struct.b43legacy_dmaring*) #1

declare dso_local %struct.b43legacy_dmadesc32* @op32_idx2desc(%struct.b43legacy_dmaring*, i32, %struct.b43legacy_dmadesc_meta**) #1

declare dso_local i32 @memset(%struct.b43legacy_dmadesc_meta*, i32, i32) #1

declare dso_local i32 @b43legacy_generate_txhdr(i32, i32*, i8*, i32, %struct.ieee80211_tx_info*, i32) #1

declare dso_local i32 @generate_cookie(%struct.b43legacy_dmaring*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @map_descbuffer(%struct.b43legacy_dmaring*, i8*, i32, i32) #1

declare dso_local i64 @b43legacy_dma_mapping_error(%struct.b43legacy_dmaring*, i8*, i32, i32) #1

declare dso_local i32 @op32_fill_descriptor(%struct.b43legacy_dmaring*, %struct.b43legacy_dmadesc32*, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @op32_poke_tx(%struct.b43legacy_dmaring*, i32) #1

declare dso_local i32 @next_slot(%struct.b43legacy_dmaring*, i32) #1

declare dso_local i32 @unmap_descbuffer(%struct.b43legacy_dmaring*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
