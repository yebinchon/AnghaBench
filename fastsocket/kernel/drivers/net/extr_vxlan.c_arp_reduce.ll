; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_arp_reduce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_arp_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.vxlan_dev = type { i32 }
%struct.arphdr = type { i64, i64, i64, i64, i32 }
%struct.neighbour = type { i32, i32 }
%struct.vxlan_fdb = type { i32 }
%struct.TYPE_4__ = type { i64 }

@IFF_NOARP = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ARPHRD_IEEE802 = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ARPOP_REQUEST = common dso_local global i32 0, align 4
@arp_tbl = common dso_local global i32 0, align 4
@NUD_CONNECTED = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@ARPOP_REPLY = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i64 0, align 8
@VXLAN_F_L3MISS = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*)* @arp_reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_reduce(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.vxlan_dev*, align 8
  %6 = alloca %struct.arphdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.neighbour*, align 8
  %12 = alloca %struct.vxlan_fdb*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %14)
  store %struct.vxlan_dev* %15, %struct.vxlan_dev** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IFF_NOARP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %192

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @arp_hdr_len(%struct.net_device* %25)
  %27 = call i32 @pskb_may_pull(%struct.sk_buff* %24, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %192

35:                                               ; preds = %23
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call %struct.arphdr* @arp_hdr(%struct.sk_buff* %36)
  store %struct.arphdr* %37, %struct.arphdr** %6, align 8
  %38 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %39 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @ARPHRD_ETHER, align 4
  %42 = call i64 @htons(i32 %41)
  %43 = icmp ne i64 %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %46 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @ARPHRD_IEEE802, align 4
  %49 = call i64 @htons(i32 %48)
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %78, label %51

51:                                               ; preds = %44, %35
  %52 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %53 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @ETH_P_IP, align 4
  %56 = call i64 @htons(i32 %55)
  %57 = icmp ne i64 %54, %56
  br i1 %57, label %78, label %58

58:                                               ; preds = %51
  %59 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %60 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @ARPOP_REQUEST, align 4
  %63 = call i64 @htons(i32 %62)
  %64 = icmp ne i64 %61, %63
  br i1 %64, label %78, label %65

65:                                               ; preds = %58
  %66 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %67 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %65
  %74 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %75 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 4
  br i1 %77, label %78, label %79

78:                                               ; preds = %73, %65, %58, %51, %44
  br label %192

79:                                               ; preds = %73
  %80 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %81 = bitcast %struct.arphdr* %80 to i32*
  %82 = getelementptr inbounds i32, i32* %81, i64 40
  store i32* %82, i32** %7, align 8
  %83 = load i32*, i32** %7, align 8
  store i32* %83, i32** %8, align 8
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 %86
  store i32* %88, i32** %7, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @memcpy(i32* %9, i32* %89, i32 4)
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  store i32* %92, i32** %7, align 8
  %93 = load %struct.net_device*, %struct.net_device** %3, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 %95
  store i32* %97, i32** %7, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @memcpy(i32* %10, i32* %98, i32 4)
  %100 = load i32, i32* %10, align 4
  %101 = call i64 @ipv4_is_loopback(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %79
  %104 = load i32, i32* %10, align 4
  %105 = call i64 @ipv4_is_multicast(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %79
  br label %192

108:                                              ; preds = %103
  %109 = load %struct.net_device*, %struct.net_device** %3, align 8
  %110 = call %struct.neighbour* @neigh_lookup(i32* @arp_tbl, i32* %10, %struct.net_device* %109)
  store %struct.neighbour* %110, %struct.neighbour** %11, align 8
  %111 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %112 = icmp ne %struct.neighbour* %111, null
  br i1 %112, label %113, label %179

113:                                              ; preds = %108
  %114 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %115 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @NUD_CONNECTED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %113
  %121 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %122 = call i32 @neigh_release(%struct.neighbour* %121)
  br label %192

123:                                              ; preds = %113
  %124 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %125 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %126 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call %struct.vxlan_fdb* @vxlan_find_mac(%struct.vxlan_dev* %124, i32 %127)
  store %struct.vxlan_fdb* %128, %struct.vxlan_fdb** %12, align 8
  %129 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %12, align 8
  %130 = icmp ne %struct.vxlan_fdb* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %123
  %132 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %12, align 8
  %133 = call %struct.TYPE_4__* @first_remote_rcu(%struct.vxlan_fdb* %132)
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* @INADDR_ANY, align 4
  %137 = call i64 @htonl(i32 %136)
  %138 = icmp eq i64 %135, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %141 = call i32 @neigh_release(%struct.neighbour* %140)
  br label %192

142:                                              ; preds = %131, %123
  %143 = load i32, i32* @ARPOP_REPLY, align 4
  %144 = load i32, i32* @ETH_P_ARP, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.net_device*, %struct.net_device** %3, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32*, i32** %8, align 8
  %149 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %150 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = call %struct.sk_buff* @arp_create(i32 %143, i32 %144, i32 %145, %struct.net_device* %146, i32 %147, i32* %148, i32 %151, i32* %152)
  store %struct.sk_buff* %153, %struct.sk_buff** %13, align 8
  %154 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %155 = call i32 @neigh_release(%struct.neighbour* %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %157 = call i32 @skb_reset_mac_header(%struct.sk_buff* %156)
  %158 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %160 = call i32 @skb_network_offset(%struct.sk_buff* %159)
  %161 = call i32 @__skb_pull(%struct.sk_buff* %158, i32 %160)
  %162 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %163 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @PACKET_HOST, align 4
  %166 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  %168 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %169 = call i64 @netif_rx_ni(%struct.sk_buff* %168)
  %170 = load i64, i64* @NET_RX_DROP, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %142
  %173 = load %struct.net_device*, %struct.net_device** %3, align 8
  %174 = getelementptr inbounds %struct.net_device, %struct.net_device* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %172, %142
  br label %191

179:                                              ; preds = %108
  %180 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %181 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @VXLAN_F_L3MISS, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %179
  %187 = load %struct.net_device*, %struct.net_device** %3, align 8
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @vxlan_ip_miss(%struct.net_device* %187, i32 %188)
  br label %190

190:                                              ; preds = %186, %179
  br label %191

191:                                              ; preds = %190, %178
  br label %192

192:                                              ; preds = %191, %139, %120, %107, %78, %29, %22
  %193 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %194 = call i32 @consume_skb(%struct.sk_buff* %193)
  %195 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %195
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @arp_hdr_len(%struct.net_device*) #1

declare dso_local %struct.arphdr* @arp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @ipv4_is_loopback(i32) #1

declare dso_local i64 @ipv4_is_multicast(i32) #1

declare dso_local %struct.neighbour* @neigh_lookup(i32*, i32*, %struct.net_device*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local %struct.vxlan_fdb* @vxlan_find_mac(%struct.vxlan_dev*, i32) #1

declare dso_local %struct.TYPE_4__* @first_remote_rcu(%struct.vxlan_fdb*) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local %struct.sk_buff* @arp_create(i32, i32, i32, %struct.net_device*, i32, i32*, i32, i32*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @netif_rx_ni(%struct.sk_buff*) #1

declare dso_local i32 @vxlan_ip_miss(%struct.net_device*, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
