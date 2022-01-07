; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_form_cm_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_form_cm_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i8*, i32, i32 }
%struct.nes_cm_node = type { i8*, i8*, i32, i32, %struct.TYPE_5__, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.tcphdr = type { i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, i8*, i8* }
%struct.iphdr = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i32 }
%struct.ethhdr = type { i32*, i32*, i8* }
%struct.TYPE_6__ = type { i64 }

@ETH_HLEN = common dso_local global i64 0, align 8
@CHECKSUM_PARTIAL = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IPVERSION = common dso_local global i32 0, align 4
@SET_ACK = common dso_local global i32 0, align 4
@SET_SYN = common dso_local global i32 0, align 4
@SET_FIN = common dso_local global i32 0, align 4
@SET_RST = common dso_local global i32 0, align 4
@cm_packets_created = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.nes_cm_node*, i8*, i32, i8*, i32, i32)* @form_cm_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @form_cm_frame(%struct.sk_buff* %0, %struct.nes_cm_node* %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nes_cm_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tcphdr*, align 8
  %16 = alloca %struct.iphdr*, align 8
  %17 = alloca %struct.ethhdr*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.nes_cm_node* %1, %struct.nes_cm_node** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 72, i32* %19, align 4
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, 72
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %13, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* %19, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %19, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = call i32 @skb_trim(%struct.sk_buff* %29, i32 0)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* @ETH_HLEN, align 8
  %35 = add i64 %34, 72
  %36 = add i64 %35, 72
  %37 = call i32 @memset(i32 %33, i32 0, i64 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = load i32, i32* %19, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* @ETH_HLEN, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32* @skb_put(%struct.sk_buff* %38, i64 %42)
  store i32* %43, i32** %18, align 8
  %44 = load i32*, i32** %18, align 8
  %45 = bitcast i32* %44 to %struct.ethhdr*
  store %struct.ethhdr* %45, %struct.ethhdr** %17, align 8
  %46 = load i64, i64* @ETH_HLEN, align 8
  %47 = load i32*, i32** %18, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 %46
  store i32* %48, i32** %18, align 8
  %49 = load i32*, i32** %18, align 8
  %50 = bitcast i32* %49 to %struct.iphdr*
  store %struct.iphdr* %50, %struct.iphdr** %16, align 8
  %51 = load i32*, i32** %18, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 72
  store i32* %52, i32** %18, align 8
  %53 = load i32*, i32** %18, align 8
  %54 = bitcast i32* %53 to %struct.tcphdr*
  store %struct.tcphdr* %54, %struct.tcphdr** %15, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call i32 @skb_reset_mac_header(%struct.sk_buff* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = load i64, i64* @ETH_HLEN, align 8
  %59 = call i32 @skb_set_network_header(%struct.sk_buff* %57, i64 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = load i64, i64* @ETH_HLEN, align 8
  %62 = add i64 %61, 72
  %63 = call i32 @skb_set_transport_header(%struct.sk_buff* %60, i64 %62)
  %64 = load i32*, i32** %18, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 72
  store i32* %65, i32** %18, align 8
  %66 = load i32, i32* @CHECKSUM_PARTIAL, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %70 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %69, i32 0, i32 7
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %7
  %78 = load i32, i32* @CHECKSUM_NONE, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %77, %7
  %82 = call i8* @htons(i32 2048)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load i64, i64* @ETH_HLEN, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.ethhdr*, %struct.ethhdr** %17, align 8
  %91 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %94 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* @ETH_ALEN, align 4
  %97 = call i32 @memcpy(i32* %92, i8* %95, i32 %96)
  %98 = load %struct.ethhdr*, %struct.ethhdr** %17, align 8
  %99 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %102 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* @ETH_ALEN, align 4
  %105 = call i32 @memcpy(i32* %100, i8* %103, i32 %104)
  %106 = call i8* @htons(i32 2048)
  %107 = load %struct.ethhdr*, %struct.ethhdr** %17, align 8
  %108 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* @IPVERSION, align 4
  %110 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %111 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %110, i32 0, i32 9
  store i32 %109, i32* %111, align 8
  %112 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %113 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %112, i32 0, i32 0
  store i32 5, i32* %113, align 8
  %114 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %115 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %114, i32 0, i32 8
  store i64 0, i64* %115, align 8
  %116 = load i32, i32* %19, align 4
  %117 = call i8* @htons(i32 %116)
  %118 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %119 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %118, i32 0, i32 7
  store i8* %117, i8** %119, align 8
  %120 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %121 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = call i8* @htons(i32 %124)
  %126 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %127 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %126, i32 0, i32 6
  store i8* %125, i8** %127, align 8
  %128 = call i8* @htons(i32 16384)
  %129 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %130 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %129, i32 0, i32 5
  store i8* %128, i8** %130, align 8
  %131 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %132 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %131, i32 0, i32 1
  store i32 64, i32* %132, align 4
  %133 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %134 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %133, i32 0, i32 2
  store i32 6, i32* %134, align 8
  %135 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %136 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = call i8* @htonl(i64 %137)
  %139 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %140 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %139, i32 0, i32 4
  store i8* %138, i8** %140, align 8
  %141 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %142 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = call i8* @htonl(i64 %143)
  %145 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %146 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %145, i32 0, i32 3
  store i8* %144, i8** %146, align 8
  %147 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %148 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i8* @htons(i32 %149)
  %151 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %152 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %151, i32 0, i32 10
  store i8* %150, i8** %152, align 8
  %153 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %154 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @htons(i32 %155)
  %157 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %158 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %157, i32 0, i32 9
  store i8* %156, i8** %158, align 8
  %159 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %160 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = call i8* @htonl(i64 %162)
  %164 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %165 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %164, i32 0, i32 8
  store i8* %163, i8** %165, align 8
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* @SET_ACK, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %187

170:                                              ; preds = %81
  %171 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %172 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %176 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 3
  store i64 %174, i64* %177, align 8
  %178 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %179 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = call i8* @htonl(i64 %181)
  %183 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %184 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %183, i32 0, i32 7
  store i8* %182, i8** %184, align 8
  %185 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %186 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %185, i32 0, i32 0
  store i32 1, i32* %186, align 8
  br label %190

187:                                              ; preds = %81
  %188 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %189 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %188, i32 0, i32 7
  store i8* null, i8** %189, align 8
  br label %190

190:                                              ; preds = %187, %170
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* @SET_SYN, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %190
  %196 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %197 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, 1
  store i64 %200, i64* %198, align 8
  %201 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %202 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %201, i32 0, i32 1
  store i32 1, i32* %202, align 4
  br label %211

203:                                              ; preds = %190
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %207 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, %205
  store i64 %210, i64* %208, align 8
  br label %211

211:                                              ; preds = %203, %195
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* @SET_FIN, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %211
  %217 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %218 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %219, align 8
  %222 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %223 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %222, i32 0, i32 2
  store i32 1, i32* %223, align 8
  br label %224

224:                                              ; preds = %216, %211
  %225 = load i32, i32* %14, align 4
  %226 = load i32, i32* @SET_RST, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %224
  %230 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %231 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %230, i32 0, i32 3
  store i32 1, i32* %231, align 4
  br label %232

232:                                              ; preds = %229, %224
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = add i64 72, %234
  %236 = add i64 %235, 3
  %237 = lshr i64 %236, 2
  %238 = trunc i64 %237 to i32
  %239 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %240 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %239, i32 0, i32 4
  store i32 %238, i32* %240, align 8
  %241 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %242 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %241, i32 0, i32 4
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i8* @htons(i32 %244)
  %246 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %247 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %246, i32 0, i32 6
  store i8* %245, i8** %247, align 8
  %248 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %249 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %248, i32 0, i32 5
  store i64 0, i64* %249, align 8
  %250 = load i32, i32* %11, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %232
  %253 = load i32*, i32** %18, align 8
  %254 = load i8*, i8** %10, align 8
  %255 = load i32, i32* %11, align 4
  %256 = call i32 @memcpy(i32* %253, i8* %254, i32 %255)
  br label %257

257:                                              ; preds = %252, %232
  %258 = load i32, i32* %11, align 4
  %259 = load i32*, i32** %18, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  store i32* %261, i32** %18, align 8
  %262 = load i32, i32* %13, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %257
  %265 = load i32*, i32** %18, align 8
  %266 = load i8*, i8** %12, align 8
  %267 = load i32, i32* %13, align 4
  %268 = call i32 @memcpy(i32* %265, i8* %266, i32 %267)
  br label %269

269:                                              ; preds = %264, %257
  %270 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %271 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %270)
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  store i64 0, i64* %272, align 8
  %273 = load i32, i32* @cm_packets_created, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* @cm_packets_created, align 4
  ret void
}

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i64) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
