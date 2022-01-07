; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_prism2_send_mgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_prism2_send_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i8*, i32 }
%struct.hostap_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.ieee80211_hdr = type { i32, %struct.hostap_interface*, i32, i32, %struct.ieee80211_hdr*, %struct.ieee80211_hdr*, %struct.ieee80211_hdr* }
%struct.sk_buff = type { %struct.net_device*, i64 }
%struct.hostap_skb_tx_data = type { i32, %struct.hostap_interface*, i32, i32, %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data* }

@IFF_UP = common dso_local global i32 0, align 4
@DEBUG_AP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"%s: prism2_send_mgmt - device is not UP - cannot send frame\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: prism2_send_mgmt failed to allocate skb\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@HOSTAP_SKB_TX_DATA_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i8*, i32, i8*, i32)* @prism2_send_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prism2_send_mgmt(%struct.net_device* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hostap_interface*, align 8
  %14 = alloca %struct.TYPE_2__*, align 8
  %15 = alloca %struct.ieee80211_hdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca %struct.hostap_skb_tx_data*, align 8
  %19 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %20)
  store %struct.hostap_interface* %21, %struct.hostap_interface** %13, align 8
  %22 = load %struct.hostap_interface*, %struct.hostap_interface** %13, align 8
  %23 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %14, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  store %struct.net_device* %27, %struct.net_device** %7, align 8
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %28)
  store %struct.hostap_interface* %29, %struct.hostap_interface** %13, align 8
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IFF_UP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %6
  %37 = load i32, i32* @DEBUG_AP, align 4
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @PDEBUG(i32 %37, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %173

42:                                               ; preds = %6
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 48, %44
  %46 = trunc i64 %45 to i32
  %47 = call %struct.sk_buff* @dev_alloc_skb(i32 %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %17, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %49 = icmp eq %struct.sk_buff* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load i32, i32* @DEBUG_AP, align 4
  %52 = load %struct.net_device*, %struct.net_device** %7, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @PDEBUG(i32 %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %173

56:                                               ; preds = %42
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @cpu_to_le16(i32 %58)
  %60 = call i32 @hostap_80211_get_hdrlen(i32 %59)
  store i32 %60, i32* %19, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %62 = load i32, i32* %19, align 4
  %63 = call %struct.ieee80211_hdr* @skb_put(%struct.sk_buff* %61, i32 %62)
  store %struct.ieee80211_hdr* %63, %struct.ieee80211_hdr** %15, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %56
  %67 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call %struct.ieee80211_hdr* @skb_put(%struct.sk_buff* %67, i32 %68)
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @memcpy(%struct.ieee80211_hdr* %69, i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %56
  %74 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %75 = load i32, i32* %19, align 4
  %76 = call i32 @memset(%struct.ieee80211_hdr* %74, i32 0, i32 %75)
  %77 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %78 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %77, i32 0, i32 6
  %79 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %78, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* @ETH_ALEN, align 4
  %82 = call i32 @memcpy(%struct.ieee80211_hdr* %79, i8* %80, i32 %81)
  %83 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %84 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @ieee80211_is_data(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %73
  %89 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %90 = load i32, i32* %16, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %16, align 4
  %92 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %93 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %92, i32 0, i32 5
  %94 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %93, align 8
  %95 = load %struct.net_device*, %struct.net_device** %7, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* @ETH_ALEN, align 4
  %99 = call i32 @memcpy(%struct.ieee80211_hdr* %94, i8* %97, i32 %98)
  %100 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %101 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %100, i32 0, i32 4
  %102 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %101, align 8
  %103 = load %struct.net_device*, %struct.net_device** %7, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* @ETH_ALEN, align 4
  %107 = call i32 @memcpy(%struct.ieee80211_hdr* %102, i8* %105, i32 %106)
  br label %143

108:                                              ; preds = %73
  %109 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %110 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @ieee80211_is_ctl(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %108
  %115 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %116 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %115, i32 0, i32 5
  %117 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %116, align 8
  %118 = load i32, i32* @ETH_ALEN, align 4
  %119 = call i32 @memset(%struct.ieee80211_hdr* %117, i32 0, i32 %118)
  %120 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %121 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %120, i32 0, i32 4
  %122 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %121, align 8
  %123 = load i32, i32* @ETH_ALEN, align 4
  %124 = call i32 @memset(%struct.ieee80211_hdr* %122, i32 0, i32 %123)
  br label %142

125:                                              ; preds = %108
  %126 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %127 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %126, i32 0, i32 5
  %128 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %127, align 8
  %129 = load %struct.net_device*, %struct.net_device** %7, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* @ETH_ALEN, align 4
  %133 = call i32 @memcpy(%struct.ieee80211_hdr* %128, i8* %131, i32 %132)
  %134 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %135 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %134, i32 0, i32 4
  %136 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %135, align 8
  %137 = load %struct.net_device*, %struct.net_device** %7, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* @ETH_ALEN, align 4
  %141 = call i32 @memcpy(%struct.ieee80211_hdr* %136, i8* %139, i32 %140)
  br label %142

142:                                              ; preds = %125, %114
  br label %143

143:                                              ; preds = %142, %88
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @cpu_to_le16(i32 %144)
  %146 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %147 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to %struct.hostap_skb_tx_data*
  store %struct.hostap_skb_tx_data* %151, %struct.hostap_skb_tx_data** %18, align 8
  %152 = load %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data** %18, align 8
  %153 = bitcast %struct.hostap_skb_tx_data* %152 to %struct.ieee80211_hdr*
  %154 = call i32 @memset(%struct.ieee80211_hdr* %153, i32 0, i32 48)
  %155 = load i32, i32* @HOSTAP_SKB_TX_DATA_MAGIC, align 4
  %156 = load %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data** %18, align 8
  %157 = getelementptr inbounds %struct.hostap_skb_tx_data, %struct.hostap_skb_tx_data* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  %158 = load %struct.hostap_interface*, %struct.hostap_interface** %13, align 8
  %159 = load %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data** %18, align 8
  %160 = getelementptr inbounds %struct.hostap_skb_tx_data, %struct.hostap_skb_tx_data* %159, i32 0, i32 1
  store %struct.hostap_interface* %158, %struct.hostap_interface** %160, align 8
  %161 = load i32, i32* %12, align 4
  %162 = load %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data** %18, align 8
  %163 = getelementptr inbounds %struct.hostap_skb_tx_data, %struct.hostap_skb_tx_data* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.net_device*, %struct.net_device** %7, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 0
  store %struct.net_device* %164, %struct.net_device** %166, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %168 = call i32 @skb_reset_mac_header(%struct.sk_buff* %167)
  %169 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %170 = call i32 @skb_reset_network_header(%struct.sk_buff* %169)
  %171 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %172 = call i32 @dev_queue_xmit(%struct.sk_buff* %171)
  br label %173

173:                                              ; preds = %143, %50, %36
  ret void
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @hostap_80211_get_hdrlen(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.ieee80211_hdr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(%struct.ieee80211_hdr*, i8*, i32) #1

declare dso_local i32 @memset(%struct.ieee80211_hdr*, i32, i32) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i64 @ieee80211_is_ctl(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
