; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_net.c_fwnet_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_net.c_fwnet_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.fwnet_header = type { i64, i64 }
%struct.fwnet_device = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fwnet_packet_task = type { i64, i32, i32, i32, %struct.TYPE_9__, %struct.fwnet_device*, %struct.sk_buff*, i32, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.fwnet_peer = type { i64, i32, i32, i32, i32, i64 }
%struct.arphdr = type { i32 }
%struct.rfc2734_arp = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@fwnet_packet_task_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@FWNET_ALEN = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@FWNET_NO_FIFO_ADDR = common dso_local global i64 0, align 8
@IEEE1394_ALL_NODES = common dso_local global i32 0, align 4
@SCODE_100 = common dso_local global i32 0, align 4
@RFC2734_HW_ADDR_LEN = common dso_local global i32 0, align 4
@RFC2374_UNFRAG_HDR_SIZE = common dso_local global i32 0, align 4
@RFC2374_FRAG_OVERHEAD = common dso_local global i64 0, align 8
@RFC2374_FRAG_HDR_SIZE = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @fwnet_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwnet_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.fwnet_header, align 8
  %7 = alloca %struct.fwnet_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.fwnet_packet_task*, align 8
  %14 = alloca %struct.fwnet_peer*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.arphdr*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.rfc2734_arp*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call %struct.fwnet_device* @netdev_priv(%struct.net_device* %23)
  store %struct.fwnet_device* %24, %struct.fwnet_device** %7, align 8
  %25 = load i32, i32* @fwnet_packet_task_cache, align 4
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.fwnet_packet_task* @kmem_cache_alloc(i32 %25, i32 %26)
  store %struct.fwnet_packet_task* %27, %struct.fwnet_packet_task** %13, align 8
  %28 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %29 = icmp eq %struct.fwnet_packet_task* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %269

31:                                               ; preds = %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %32, i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %4, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %269

38:                                               ; preds = %31
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @memcpy(%struct.fwnet_header* %6, i64 %41, i32 16)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @skb_pull(%struct.sk_buff* %43, i32 16)
  %45 = getelementptr inbounds %struct.fwnet_header, %struct.fwnet_header* %6, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %8, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %11, align 4
  %50 = load %struct.fwnet_device*, %struct.fwnet_device** %7, align 8
  %51 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %50, i32 0, i32 3
  %52 = load i64, i64* %15, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = getelementptr inbounds %struct.fwnet_header, %struct.fwnet_header* %6, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @FWNET_ALEN, align 4
  %60 = call i64 @memcmp(i64 %55, i32 %58, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %80, label %62

62:                                               ; preds = %38
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* @ETH_P_ARP, align 4
  %65 = call i64 @htons(i32 %64)
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %80, label %67

67:                                               ; preds = %62
  %68 = load i64, i64* %8, align 8
  %69 = load i32, i32* @ETH_P_IP, align 4
  %70 = call i64 @htons(i32 %69)
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %67
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call %struct.TYPE_8__* @ip_hdr(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ntohl(i32 %76)
  %78 = call i64 @IN_MULTICAST(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %72, %62, %38
  %81 = load %struct.fwnet_device*, %struct.fwnet_device** %7, align 8
  %82 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %10, align 4
  %84 = load %struct.fwnet_device*, %struct.fwnet_device** %7, align 8
  %85 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %84, i32 0, i32 1
  store i32* %85, i32** %12, align 8
  %86 = load i64, i64* @FWNET_NO_FIFO_ADDR, align 8
  %87 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %88 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %90 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %89, i32 0, i32 8
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* @IEEE1394_ALL_NODES, align 4
  %92 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %93 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @SCODE_100, align 4
  %95 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %96 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 8
  br label %143

97:                                               ; preds = %72, %67
  %98 = getelementptr inbounds %struct.fwnet_header, %struct.fwnet_header* %6, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i32*
  %101 = call i32 @get_unaligned(i32* %100)
  store i32 %101, i32* %16, align 4
  %102 = load %struct.fwnet_device*, %struct.fwnet_device** %7, align 8
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @be64_to_cpu(i32 %103)
  %105 = call %struct.fwnet_peer* @fwnet_peer_find_by_guid(%struct.fwnet_device* %102, i32 %104)
  store %struct.fwnet_peer* %105, %struct.fwnet_peer** %14, align 8
  %106 = load %struct.fwnet_peer*, %struct.fwnet_peer** %14, align 8
  %107 = icmp ne %struct.fwnet_peer* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %97
  %109 = load %struct.fwnet_peer*, %struct.fwnet_peer** %14, align 8
  %110 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @FWNET_NO_FIFO_ADDR, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108, %97
  br label %264

115:                                              ; preds = %108
  %116 = load %struct.fwnet_peer*, %struct.fwnet_peer** %14, align 8
  %117 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %17, align 8
  %119 = load %struct.fwnet_peer*, %struct.fwnet_peer** %14, align 8
  %120 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %9, align 4
  %122 = load %struct.fwnet_peer*, %struct.fwnet_peer** %14, align 8
  %123 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %10, align 4
  %125 = load %struct.fwnet_peer*, %struct.fwnet_peer** %14, align 8
  %126 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %125, i32 0, i32 3
  store i32* %126, i32** %12, align 8
  %127 = load %struct.fwnet_peer*, %struct.fwnet_peer** %14, align 8
  %128 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %131 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load i64, i64* %17, align 8
  %133 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %134 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %133, i32 0, i32 8
  store i64 %132, i64* %134, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %137 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  %138 = load %struct.fwnet_peer*, %struct.fwnet_peer** %14, align 8
  %139 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %142 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %141, i32 0, i32 7
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %115, %80
  %144 = load i64, i64* %8, align 8
  %145 = load i32, i32* @ETH_P_ARP, align 4
  %146 = call i64 @htons(i32 %145)
  %147 = icmp eq i64 %144, %146
  br i1 %147, label %148, label %200

148:                                              ; preds = %143
  %149 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to %struct.arphdr*
  store %struct.arphdr* %152, %struct.arphdr** %18, align 8
  %153 = load %struct.arphdr*, %struct.arphdr** %18, align 8
  %154 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %153, i64 1
  %155 = bitcast %struct.arphdr* %154 to i8*
  store i8* %155, i8** %19, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to %struct.rfc2734_arp*
  store %struct.rfc2734_arp* %159, %struct.rfc2734_arp** %20, align 8
  %160 = load i8*, i8** %19, align 8
  %161 = load i32, i32* @FWNET_ALEN, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = bitcast i8* %163 to i32*
  %165 = call i32 @get_unaligned(i32* %164)
  store i32 %165, i32* %21, align 4
  %166 = load i32, i32* @RFC2734_HW_ADDR_LEN, align 4
  %167 = load %struct.rfc2734_arp*, %struct.rfc2734_arp** %20, align 8
  %168 = getelementptr inbounds %struct.rfc2734_arp, %struct.rfc2734_arp* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 4
  %169 = load %struct.fwnet_device*, %struct.fwnet_device** %7, align 8
  %170 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %169, i32 0, i32 4
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.rfc2734_arp*, %struct.rfc2734_arp** %20, align 8
  %175 = getelementptr inbounds %struct.rfc2734_arp, %struct.rfc2734_arp* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 4
  %176 = load %struct.fwnet_device*, %struct.fwnet_device** %7, align 8
  %177 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %176, i32 0, i32 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.rfc2734_arp*, %struct.rfc2734_arp** %20, align 8
  %182 = getelementptr inbounds %struct.rfc2734_arp, %struct.rfc2734_arp* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 4
  %183 = load %struct.fwnet_device*, %struct.fwnet_device** %7, align 8
  %184 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = ashr i32 %185, 32
  %187 = load %struct.rfc2734_arp*, %struct.rfc2734_arp** %20, align 8
  %188 = getelementptr inbounds %struct.rfc2734_arp, %struct.rfc2734_arp* %187, i32 0, i32 2
  %189 = call i32 @put_unaligned_be16(i32 %186, i32* %188)
  %190 = load %struct.fwnet_device*, %struct.fwnet_device** %7, align 8
  %191 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.rfc2734_arp*, %struct.rfc2734_arp** %20, align 8
  %194 = getelementptr inbounds %struct.rfc2734_arp, %struct.rfc2734_arp* %193, i32 0, i32 1
  %195 = call i32 @put_unaligned_be32(i32 %192, i32* %194)
  %196 = load i32, i32* %21, align 4
  %197 = load %struct.rfc2734_arp*, %struct.rfc2734_arp** %20, align 8
  %198 = getelementptr inbounds %struct.rfc2734_arp, %struct.rfc2734_arp* %197, i32 0, i32 0
  %199 = call i32 @put_unaligned(i32 %196, i32* %198)
  br label %200

200:                                              ; preds = %148, %143
  %201 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %202 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  store i64 0, i64* %203, align 8
  %204 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %205 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  store i64 0, i64* %206, align 8
  %207 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %208 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %209 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %208, i32 0, i32 6
  store %struct.sk_buff* %207, %struct.sk_buff** %209, align 8
  %210 = load %struct.fwnet_device*, %struct.fwnet_device** %7, align 8
  %211 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %212 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %211, i32 0, i32 5
  store %struct.fwnet_device* %210, %struct.fwnet_device** %212, align 8
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* %10, align 4
  %215 = icmp ule i32 %213, %214
  br i1 %215, label %216, label %227

216:                                              ; preds = %200
  %217 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %218 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %217, i32 0, i32 4
  %219 = load i64, i64* %8, align 8
  %220 = call i32 @ntohs(i64 %219)
  %221 = call i32 @fwnet_make_uf_hdr(%struct.TYPE_9__* %218, i32 %220)
  %222 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %223 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %222, i32 0, i32 2
  store i32 1, i32* %223, align 4
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* @RFC2374_UNFRAG_HDR_SIZE, align 4
  %226 = add i32 %224, %225
  store i32 %226, i32* %10, align 4
  br label %253

227:                                              ; preds = %200
  %228 = load i64, i64* @RFC2374_FRAG_OVERHEAD, align 8
  %229 = load i32, i32* %10, align 4
  %230 = zext i32 %229 to i64
  %231 = sub nsw i64 %230, %228
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %10, align 4
  %233 = load i32*, i32** %12, align 8
  %234 = load i32, i32* %233, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %233, align 4
  store i32 %234, i32* %22, align 4
  %236 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %237 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %236, i32 0, i32 4
  %238 = load i64, i64* %8, align 8
  %239 = call i32 @ntohs(i64 %238)
  %240 = load i32, i32* %11, align 4
  %241 = load i32, i32* %22, align 4
  %242 = call i32 @fwnet_make_ff_hdr(%struct.TYPE_9__* %237, i32 %239, i32 %240, i32 %241)
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* %10, align 4
  %245 = call i32 @DIV_ROUND_UP(i32 %243, i32 %244)
  %246 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %247 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %246, i32 0, i32 2
  store i32 %245, i32* %247, align 4
  %248 = load i64, i64* @RFC2374_FRAG_HDR_SIZE, align 8
  %249 = load i32, i32* %10, align 4
  %250 = zext i32 %249 to i64
  %251 = add nsw i64 %250, %248
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %10, align 4
  br label %253

253:                                              ; preds = %227, %216
  %254 = load %struct.fwnet_device*, %struct.fwnet_device** %7, align 8
  %255 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %254, i32 0, i32 3
  %256 = load i64, i64* %15, align 8
  %257 = call i32 @spin_unlock_irqrestore(i32* %255, i64 %256)
  %258 = load i32, i32* %10, align 4
  %259 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %260 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %259, i32 0, i32 3
  store i32 %258, i32* %260, align 8
  %261 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %262 = call i32 @fwnet_send_packet(%struct.fwnet_packet_task* %261)
  %263 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %263, i32* %3, align 4
  br label %294

264:                                              ; preds = %114
  %265 = load %struct.fwnet_device*, %struct.fwnet_device** %7, align 8
  %266 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %265, i32 0, i32 3
  %267 = load i64, i64* %15, align 8
  %268 = call i32 @spin_unlock_irqrestore(i32* %266, i64 %267)
  br label %269

269:                                              ; preds = %264, %37, %30
  %270 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %271 = icmp ne %struct.fwnet_packet_task* %270, null
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = load i32, i32* @fwnet_packet_task_cache, align 4
  %274 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %13, align 8
  %275 = call i32 @kmem_cache_free(i32 %273, %struct.fwnet_packet_task* %274)
  br label %276

276:                                              ; preds = %272, %269
  %277 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %278 = icmp ne %struct.sk_buff* %277, null
  br i1 %278, label %279, label %282

279:                                              ; preds = %276
  %280 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %281 = call i32 @dev_kfree_skb(%struct.sk_buff* %280)
  br label %282

282:                                              ; preds = %279, %276
  %283 = load %struct.net_device*, %struct.net_device** %5, align 8
  %284 = getelementptr inbounds %struct.net_device, %struct.net_device* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 4
  %288 = load %struct.net_device*, %struct.net_device** %5, align 8
  %289 = getelementptr inbounds %struct.net_device, %struct.net_device* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %290, align 4
  %293 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %293, i32* %3, align 4
  br label %294

294:                                              ; preds = %282, %253
  %295 = load i32, i32* %3, align 4
  ret i32 %295
}

declare dso_local %struct.fwnet_device* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.fwnet_packet_task* @kmem_cache_alloc(i32, i32) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(%struct.fwnet_header*, i64, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @memcmp(i64, i32, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @IN_MULTICAST(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.TYPE_8__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local %struct.fwnet_peer* @fwnet_peer_find_by_guid(%struct.fwnet_device*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @fwnet_make_uf_hdr(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @fwnet_make_ff_hdr(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @fwnet_send_packet(%struct.fwnet_packet_task*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.fwnet_packet_task*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
