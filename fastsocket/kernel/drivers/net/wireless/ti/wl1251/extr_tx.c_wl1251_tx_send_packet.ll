; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32, %struct.TYPE_6__*, %struct.sk_buff** }
%struct.TYPE_6__ = type { i64, i64 }
%struct.sk_buff = type { i8*, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.tx_double_buffer_desc = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@WL1251_TKIP_IV_SPACE = common dso_local global i32 0, align 4
@DEBUG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"skb offset %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Can't allocate skb!\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"new skb offset %d\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"tx id %u skb 0x%p payload %u rate 0x%x queue %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*, %struct.sk_buff*, %struct.ieee80211_tx_info*)* @wl1251_tx_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_tx_send_packet(%struct.wl1251* %0, %struct.sk_buff* %1, %struct.ieee80211_tx_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1251*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.tx_double_buffer_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i8*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %216

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to %struct.tx_double_buffer_desc*
  store %struct.tx_double_buffer_desc* %27, %struct.tx_double_buffer_desc** %8, align 8
  %28 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %74

33:                                               ; preds = %23
  %34 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %33
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 24
  %47 = bitcast i8* %46 to i32*
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %50 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = load i32, i32* @WL1251_TKIP_IV_SPACE, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @cpu_to_le16(i32 %55)
  %57 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %58 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @ieee80211_hdrlen(i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = load i32, i32* @WL1251_TKIP_IV_SPACE, align 4
  %63 = call i8* @skb_push(%struct.sk_buff* %61, i32 %62)
  store i8* %63, i8** %14, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = load i32, i32* @WL1251_TKIP_IV_SPACE, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 24, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memmove(i8* %64, i8* %68, i32 %72)
  br label %74

74:                                               ; preds = %42, %33, %23
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = and i64 %78, 3
  %80 = call i64 @unlikely(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %165

82:                                               ; preds = %74
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = sub nsw i64 4, %86
  %88 = and i64 %87, 3
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* @DEBUG_TX, align 4
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = call i32 (i32, i8*, i64, ...) @wl1251_debug(i32 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = call i64 @skb_cloned(%struct.sk_buff* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %82
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = call i32 @skb_tailroom(%struct.sk_buff* %98)
  %100 = load i32, i32* %15, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %142

102:                                              ; preds = %97, %82
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %103, i32 0, i32 3, i32 %104)
  store %struct.sk_buff* %105, %struct.sk_buff** %16, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %107 = icmp eq %struct.sk_buff* %106, null
  %108 = zext i1 %107 to i32
  %109 = sext i32 %108 to i64
  %110 = call i64 @unlikely(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %102
  %113 = call i32 @wl1251_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %216

116:                                              ; preds = %102
  %117 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = bitcast i8* %119 to %struct.tx_double_buffer_desc*
  store %struct.tx_double_buffer_desc* %120, %struct.tx_double_buffer_desc** %8, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %123, %struct.sk_buff** %6, align 8
  %124 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %125 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %124, i32 0, i32 2
  %126 = load %struct.sk_buff**, %struct.sk_buff*** %125, align 8
  %127 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %128 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %126, i64 %129
  store %struct.sk_buff* %123, %struct.sk_buff** %130, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = ptrtoint i8* %133 to i64
  %135 = sub nsw i64 4, %134
  %136 = and i64 %135, 3
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* @DEBUG_TX, align 4
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = call i32 (i32, i8*, i64, ...) @wl1251_debug(i32 %138, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %140)
  br label %142

142:                                              ; preds = %116, %97
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %164

145:                                              ; preds = %142
  %146 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** %17, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @skb_reserve(%struct.sk_buff* %149, i32 %150)
  %152 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i8*, i8** %17, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @memmove(i8* %154, i8* %155, i32 %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = bitcast i8* %162 to %struct.tx_double_buffer_desc*
  store %struct.tx_double_buffer_desc* %163, %struct.tx_double_buffer_desc** %8, align 8
  br label %164

164:                                              ; preds = %145, %142
  br label %165

165:                                              ; preds = %164, %74
  %166 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @WL1251_TX_ALIGN(i32 %168)
  store i32 %169, i32* %9, align 4
  %170 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %171 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, 1
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %165
  %176 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %177 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %176, i32 0, i32 1
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %182 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %181, i32 0, i32 1
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %180, %185
  store i64 %186, i64* %10, align 8
  br label %193

187:                                              ; preds = %165
  %188 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %189 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %188, i32 0, i32 1
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %10, align 8
  br label %193

193:                                              ; preds = %187, %175
  %194 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %195 = load i64, i64* %10, align 8
  %196 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @wl1251_mem_write(%struct.wl1251* %194, i64 %195, i8* %198, i32 %199)
  %201 = load i32, i32* @DEBUG_TX, align 4
  %202 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %203 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %206 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %207 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %210 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %8, align 8
  %213 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = call i32 (i32, i8*, i64, ...) @wl1251_debug(i32 %201, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %204, %struct.sk_buff* %205, i32 %208, i32 %211, i32 %214)
  store i32 0, i32* %4, align 4
  br label %216

216:                                              ; preds = %193, %112, %20
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @wl1251_debug(i32, i8*, i64, ...) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wl1251_error(i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @WL1251_TX_ALIGN(i32) #1

declare dso_local i32 @wl1251_mem_write(%struct.wl1251*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
