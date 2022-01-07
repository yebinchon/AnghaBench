; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_rx.c_wl1271_rx_handle_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_rx.c_wl1271_rx_handle_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32, i32, i32 }
%struct.wl1271_rx_descriptor = type { i64, i32, i32, i64 }
%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_hdr = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Invalid packet arrived from HW. length %d\00", align 1
@WLCORE_RX_BUF_UNALIGNED = common dso_local global i32 0, align 4
@RX_BUF_ALIGN = common dso_local global i32 0, align 4
@WLCORE_RX_BUF_PADDED = common dso_local global i32 0, align 4
@WL12XX_RX_CLASS_LOGGER = common dso_local global i64 0, align 8
@WL1271_RX_DESC_DECRYPT_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"corrupted packet in RX: status: 0x%x len: %d\00", align 1
@WL1271_RX_DESC_STATUS_MASK = common dso_local global i32 0, align 4
@DEBUG_RX = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"PKT: \00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Couldn't allocate RX frame\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"rx skb 0x%p: %d B %s seq %d hlid %d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"beacon\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i32*, i32, i32, i32*)* @wl1271_rx_handle_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_rx_handle_data(%struct.wl1271* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.wl1271_rx_descriptor*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.ieee80211_hdr*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %23 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %24 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %211

31:                                               ; preds = %5
  %32 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @wlcore_hw_get_rx_packet_len(%struct.wl1271* %32, i32* %33, i32 %34)
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* %21, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %211

43:                                               ; preds = %31
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @WLCORE_RX_BUF_UNALIGNED, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @RX_BUF_ALIGN, align 4
  store i32 %48, i32* %18, align 4
  br label %56

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @WLCORE_RX_BUF_PADDED, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @RX_BUF_ALIGN, align 4
  store i32 %54, i32* %19, align 4
  br label %55

55:                                               ; preds = %53, %49
  br label %56

56:                                               ; preds = %55, %47
  %57 = load i32*, i32** %8, align 8
  %58 = bitcast i32* %57 to %struct.wl1271_rx_descriptor*
  store %struct.wl1271_rx_descriptor* %58, %struct.wl1271_rx_descriptor** %12, align 8
  %59 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %12, align 8
  %60 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @WL12XX_RX_CLASS_LOGGER, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %56
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 %66, 24
  store i64 %67, i64* %22, align 8
  %68 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 24
  %71 = load i64, i64* %22, align 8
  %72 = call i32 @wl12xx_copy_fwlog(%struct.wl1271* %68, i32* %70, i64 %71)
  %73 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %74 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %73, i32 0, i32 3
  %75 = call i32 @wake_up_interruptible(i32* %74)
  store i32 0, i32* %6, align 4
  br label %211

76:                                               ; preds = %56
  %77 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %12, align 8
  %78 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @WL1271_RX_DESC_DECRYPT_FAIL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %112

83:                                               ; preds = %76
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 24
  %86 = load i32, i32* %19, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = bitcast i32* %88 to i8*
  %90 = bitcast i8* %89 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %90, %struct.ieee80211_hdr** %14, align 8
  %91 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %12, align 8
  %92 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @WL1271_RX_DESC_STATUS_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* %21, align 4
  %97 = call i32 @wl1271_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* @DEBUG_RX, align 4
  %99 = load i32, i32* @DEBUG_CMD, align 4
  %100 = or i32 %98, %99
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 24
  %103 = load i32, i32* %21, align 4
  %104 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %105 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ieee80211_hdrlen(i32 %106)
  %108 = call i32 @min(i32 %103, i32 %107)
  %109 = call i32 @wl1271_dump(i32 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %102, i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %211

112:                                              ; preds = %76
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call %struct.sk_buff* @__dev_alloc_skb(i32 %115, i32 %116)
  store %struct.sk_buff* %117, %struct.sk_buff** %13, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %119 = icmp ne %struct.sk_buff* %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %112
  %121 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %6, align 4
  br label %211

124:                                              ; preds = %112
  %125 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @skb_reserve(%struct.sk_buff* %125, i32 %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %129 = load i32, i32* %21, align 4
  %130 = call i32* @skb_put(%struct.sk_buff* %128, i32 %129)
  store i32* %130, i32** %15, align 8
  %131 = load i32*, i32** %15, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 24
  %134 = load i32, i32* %21, align 4
  %135 = call i32 @memcpy(i32* %131, i32* %133, i32 %134)
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @WLCORE_RX_BUF_PADDED, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %124
  %140 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %141 = load i32, i32* @RX_BUF_ALIGN, align 4
  %142 = call i32 @skb_pull(%struct.sk_buff* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %124
  %144 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %12, align 8
  %145 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %11, align 8
  store i32 %146, i32* %147, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %151, %struct.ieee80211_hdr** %14, align 8
  %152 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %153 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @ieee80211_is_beacon(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %143
  store i32 1, i32* %16, align 4
  br label %158

158:                                              ; preds = %157, %143
  %159 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %160 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @ieee80211_is_data_present(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  store i32 1, i32* %17, align 4
  br label %165

165:                                              ; preds = %164, %158
  %166 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %167 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %12, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %169 = call i32 @IEEE80211_SKB_RXCB(%struct.sk_buff* %168)
  %170 = load i32, i32* %16, align 4
  %171 = call i32 @wl1271_rx_status(%struct.wl1271* %166, %struct.wl1271_rx_descriptor* %167, i32 %169, i32 %170)
  %172 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %173 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %12, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %175 = call i32 @wlcore_hw_set_rx_csum(%struct.wl1271* %172, %struct.wl1271_rx_descriptor* %173, %struct.sk_buff* %174)
  %176 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %177 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @le16_to_cpu(i32 %178)
  %180 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %181 = and i32 %179, %180
  %182 = ashr i32 %181, 4
  store i32 %182, i32* %20, align 4
  %183 = load i32, i32* @DEBUG_RX, align 4
  %184 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %185 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %186 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.wl1271_rx_descriptor*, %struct.wl1271_rx_descriptor** %12, align 8
  %189 = getelementptr inbounds %struct.wl1271_rx_descriptor, %struct.wl1271_rx_descriptor* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = sub nsw i64 %187, %190
  %192 = load i32, i32* %16, align 4
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %196 = load i32, i32* %20, align 4
  %197 = load i32*, i32** %11, align 8
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @wl1271_debug(i32 %183, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), %struct.sk_buff* %184, i64 %191, i8* %195, i32 %196, i32 %198)
  %200 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %201 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %200, i32 0, i32 2
  %202 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %203 = call i32 @skb_queue_tail(i32* %201, %struct.sk_buff* %202)
  %204 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %205 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %208 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %207, i32 0, i32 0
  %209 = call i32 @queue_work(i32 %206, i32* %208)
  %210 = load i32, i32* %17, align 4
  store i32 %210, i32* %6, align 4
  br label %211

211:                                              ; preds = %165, %120, %83, %64, %38, %28
  %212 = load i32, i32* %6, align 4
  ret i32 %212
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wlcore_hw_get_rx_packet_len(%struct.wl1271*, i32*, i32) #1

declare dso_local i32 @wl1271_error(i8*, ...) #1

declare dso_local i32 @wl12xx_copy_fwlog(%struct.wl1271*, i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @wl1271_warning(i8*, i32, i32) #1

declare dso_local i32 @wl1271_dump(i32, i8*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local %struct.sk_buff* @__dev_alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i64 @ieee80211_is_data_present(i32) #1

declare dso_local i32 @wl1271_rx_status(%struct.wl1271*, %struct.wl1271_rx_descriptor*, i32, i32) #1

declare dso_local i32 @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @wlcore_hw_set_rx_csum(%struct.wl1271*, %struct.wl1271_rx_descriptor*, %struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, %struct.sk_buff*, i64, i8*, i32, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
