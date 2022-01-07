; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_handle_rx_wc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_handle_rx_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ib_wc = type { i32, i64, i64, i64, i32, i32, i32 }
%struct.ipoib_dev_priv = type { i64, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32*, %struct.sk_buff* }
%struct.sk_buff = type { i32, %struct.net_device*, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%union.ib_gid = type { i32* }
%struct.ib_grh = type { %union.ib_gid }
%struct.ipoib_header = type { i32 }

@IPOIB_OP_RECV = common dso_local global i32 0, align 4
@IPOIB_UD_RX_SG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"recv completion: id %d, status: %d\0A\00", align 1
@ipoib_recvq_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"recv completion event with wrid %d (> %d)\0A\00", align 1
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@IB_WC_WR_FLUSH_ERR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"failed recv event (status=%d, wrid=%d vend_err %x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"received %d bytes, SLID 0x%04x\0A\00", align 1
@IB_WC_GRH = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@PACKET_BROADCAST = common dso_local global i32 0, align 4
@PACKET_MULTICAST = common dso_local global i32 0, align 4
@IB_GRH_BYTES = common dso_local global i32 0, align 4
@IPOIB_ENCAP_LEN = common dso_local global i32 0, align 4
@IPOIB_FLAG_CSUM = common dso_local global i32 0, align 4
@IB_WC_IP_CSUM_OK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"ipoib_ib_post_receive failed for buf %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ib_wc*)* @ipoib_ib_handle_rx_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_ib_handle_rx_wc(%struct.net_device* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.ib_gid*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.ipoib_dev_priv* %13, %struct.ipoib_dev_priv** %5, align 8
  %14 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %15 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IPOIB_OP_RECV, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @IPOIB_UD_RX_SG, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %27 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ipoib_dbg_data(%struct.ipoib_dev_priv* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @ipoib_recvq_size, align 4
  %32 = icmp uge i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ipoib_recvq_size, align 4
  %40 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  store i32 1, i32* %11, align 4
  br label %266

41:                                               ; preds = %2
  %42 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %43 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %42, i32 0, i32 3
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load %struct.sk_buff*, %struct.sk_buff** %48, align 8
  store %struct.sk_buff* %49, %struct.sk_buff** %7, align 8
  %50 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %51 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IB_WC_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %41
  %59 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %60 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IB_WC_WR_FLUSH_ERR, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %66 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %67 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %72 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %65, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %64, %58
  %76 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %77 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %78 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %77, i32 0, i32 3
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @ipoib_ud_dma_unmap_rx(%struct.ipoib_dev_priv* %76, i32* %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %86)
  %88 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %89 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %88, i32 0, i32 3
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %94, align 8
  store i32 1, i32* %11, align 4
  br label %266

95:                                               ; preds = %41
  %96 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %97 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %100 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %98, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %95
  %104 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %105 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %108 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %107, i32 0, i32 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %106, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %255

114:                                              ; preds = %103, %95
  %115 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %116 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %115, i32 0, i32 3
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* @IPOIB_UD_RX_SG, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 4
  %126 = trunc i64 %125 to i32
  %127 = call i32 @memcpy(i32* %23, i32* %122, i32 %126)
  %128 = load %struct.net_device*, %struct.net_device** %3, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @ipoib_alloc_rx_skb(%struct.net_device* %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %114
  %137 = load %struct.net_device*, %struct.net_device** %3, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  br label %255

142:                                              ; preds = %114
  %143 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %144 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %145 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %148 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @ipoib_dbg_data(%struct.ipoib_dev_priv* %143, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %146, i64 %149)
  %151 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %152 = call i32 @ipoib_ud_dma_unmap_rx(%struct.ipoib_dev_priv* %151, i32* %23)
  %153 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %155 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %156 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @ipoib_ud_skb_put_frags(%struct.ipoib_dev_priv* %153, %struct.sk_buff* %154, i32 %157)
  %159 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to %struct.ib_grh*
  %163 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %162, i32 0, i32 0
  store %union.ib_gid* %163, %union.ib_gid** %10, align 8
  %164 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %165 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @IB_WC_GRH, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %142
  %171 = load %union.ib_gid*, %union.ib_gid** %10, align 8
  %172 = bitcast %union.ib_gid* %171 to i32**
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 255
  br i1 %176, label %177, label %181

177:                                              ; preds = %170, %142
  %178 = load i32, i32* @PACKET_HOST, align 4
  %179 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %180 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 4
  br label %198

181:                                              ; preds = %170
  %182 = load %union.ib_gid*, %union.ib_gid** %10, align 8
  %183 = load %struct.net_device*, %struct.net_device** %3, align 8
  %184 = getelementptr inbounds %struct.net_device, %struct.net_device* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, 4
  %187 = call i64 @memcmp(%union.ib_gid* %182, i64 %186, i32 8)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %181
  %190 = load i32, i32* @PACKET_BROADCAST, align 4
  %191 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %192 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %191, i32 0, i32 5
  store i32 %190, i32* %192, align 4
  br label %197

193:                                              ; preds = %181
  %194 = load i32, i32* @PACKET_MULTICAST, align 4
  %195 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %196 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %195, i32 0, i32 5
  store i32 %194, i32* %196, align 4
  br label %197

197:                                              ; preds = %193, %189
  br label %198

198:                                              ; preds = %197, %177
  %199 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %200 = load i32, i32* @IB_GRH_BYTES, align 4
  %201 = call i32 @skb_pull(%struct.sk_buff* %199, i32 %200)
  %202 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %203 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = inttoptr i64 %204 to %struct.ipoib_header*
  %206 = getelementptr inbounds %struct.ipoib_header, %struct.ipoib_header* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %209 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %208, i32 0, i32 4
  store i32 %207, i32* %209, align 8
  %210 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %211 = call i32 @skb_reset_mac_header(%struct.sk_buff* %210)
  %212 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %213 = load i32, i32* @IPOIB_ENCAP_LEN, align 4
  %214 = call i32 @skb_pull(%struct.sk_buff* %212, i32 %213)
  %215 = load %struct.net_device*, %struct.net_device** %3, align 8
  %216 = getelementptr inbounds %struct.net_device, %struct.net_device* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %217, align 4
  %220 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %221 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.net_device*, %struct.net_device** %3, align 8
  %224 = getelementptr inbounds %struct.net_device, %struct.net_device* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %227, %222
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %225, align 8
  %230 = load %struct.net_device*, %struct.net_device** %3, align 8
  %231 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %232 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %231, i32 0, i32 1
  store %struct.net_device* %230, %struct.net_device** %232, align 8
  %233 = load i32, i32* @IPOIB_FLAG_CSUM, align 4
  %234 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %235 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %234, i32 0, i32 2
  %236 = call i64 @test_bit(i32 %233, i32* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %198
  %239 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %240 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @IB_WC_IP_CSUM_OK, align 4
  %243 = and i32 %241, %242
  %244 = call i64 @likely(i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %238
  %247 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %248 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %249 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %248, i32 0, i32 0
  store i32 %247, i32* %249, align 8
  br label %250

250:                                              ; preds = %246, %238, %198
  %251 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %252 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %251, i32 0, i32 1
  %253 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %254 = call i32 @napi_gro_receive(i32* %252, %struct.sk_buff* %253)
  br label %255

255:                                              ; preds = %250, %136, %113
  %256 = load %struct.net_device*, %struct.net_device** %3, align 8
  %257 = load i32, i32* %6, align 4
  %258 = call i32 @ipoib_ib_post_receive(%struct.net_device* %256, i32 %257)
  %259 = call i64 @unlikely(i32 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %255
  %262 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %263 = load i32, i32* %6, align 4
  %264 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %262, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %263)
  br label %265

265:                                              ; preds = %261, %255
  store i32 0, i32* %11, align 4
  br label %266

266:                                              ; preds = %265, %75, %36
  %267 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %267)
  %268 = load i32, i32* %11, align 4
  switch i32 %268, label %270 [
    i32 0, label %269
    i32 1, label %269
  ]

269:                                              ; preds = %266, %266
  ret void

270:                                              ; preds = %266
  unreachable
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ipoib_dbg_data(%struct.ipoib_dev_priv*, i8*, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32, ...) #1

declare dso_local i32 @ipoib_ud_dma_unmap_rx(%struct.ipoib_dev_priv*, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ipoib_alloc_rx_skb(%struct.net_device*, i32) #1

declare dso_local i32 @ipoib_ud_skb_put_frags(%struct.ipoib_dev_priv*, %struct.sk_buff*, i32) #1

declare dso_local i64 @memcmp(%union.ib_gid*, i64, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ipoib_ib_post_receive(%struct.net_device*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
