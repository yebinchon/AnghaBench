; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i64, i64, i8* }
%struct.ipoib_ah = type { i32, i32 }
%struct.ipoib_dev_priv = type { i64, i32, i32, i32, i32, %struct.TYPE_3__, %struct.ipoib_tx_buf* }
%struct.TYPE_3__ = type { i32 }
%struct.ipoib_tx_buf = type { %struct.sk_buff* }

@.str = private unnamed_addr constant [23 x i8] c"linear data too small\0A\00", align 1
@IPOIB_ENCAP_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"packet len %d (> %d) too long to send, dropping\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"sending packet, length=%d address=%p qpn=0x%06x\0A\00", align 1
@ipoib_sendq_size = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@IB_SEND_IP_CSUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"TX ring full, stopping kernel net queue\0A\00", align 1
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"request notify on send CQ failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"post_send failed, error %d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@MAX_SEND_CQE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_send(%struct.net_device* %0, %struct.sk_buff* %1, %struct.ipoib_ah* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ipoib_ah*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipoib_dev_priv*, align 8
  %10 = alloca %struct.ipoib_tx_buf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ipoib_ah* %2, %struct.ipoib_ah** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.ipoib_dev_priv* %15, %struct.ipoib_dev_priv** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i64 @skb_is_gso(%struct.sk_buff* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i32 @skb_transport_offset(%struct.sk_buff* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i32 @tcp_hdrlen(%struct.sk_buff* %22)
  %24 = add nsw i32 %21, %23
  store i32 %24, i32* %11, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %13, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @skb_pull(%struct.sk_buff* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %19
  %37 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %38 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %49)
  br label %252

51:                                               ; preds = %19
  br label %93

52:                                               ; preds = %4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %57 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @IPOIB_ENCAP_LEN, align 8
  %60 = add nsw i64 %58, %59
  %61 = icmp sgt i64 %55, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %92

65:                                               ; preds = %52
  %66 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %71 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @IPOIB_ENCAP_LEN, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %66, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %69, i64 %74)
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.net_device*, %struct.net_device** %5, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %89 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @ipoib_cm_skb_too_long(%struct.net_device* %86, %struct.sk_buff* %87, i64 %90)
  br label %252

92:                                               ; preds = %52
  store i8* null, i8** %13, align 8
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %92, %51
  %94 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ipoib_ah*, %struct.ipoib_ah** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @ipoib_dbg_data(%struct.ipoib_dev_priv* %94, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %97, %struct.ipoib_ah* %98, i32 %99)
  %101 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %102 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %101, i32 0, i32 6
  %103 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %102, align 8
  %104 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %105 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @ipoib_sendq_size, align 4
  %108 = sub nsw i32 %107, 1
  %109 = and i32 %106, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %103, i64 %110
  store %struct.ipoib_tx_buf* %111, %struct.ipoib_tx_buf** %10, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %10, align 8
  %114 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %113, i32 0, i32 0
  store %struct.sk_buff* %112, %struct.sk_buff** %114, align 8
  %115 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %116 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %10, align 8
  %119 = call i32 @ipoib_dma_map_tx(i32 %117, %struct.ipoib_tx_buf* %118)
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %93
  %123 = load %struct.net_device*, %struct.net_device** %5, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %129 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %128)
  br label %252

130:                                              ; preds = %93
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = load i32, i32* @IB_SEND_IP_CSUM, align 4
  %138 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %139 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %137
  store i32 %142, i32* %140, align 8
  br label %151

143:                                              ; preds = %130
  %144 = load i32, i32* @IB_SEND_IP_CSUM, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %147 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, %145
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %143, %136
  %152 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %153 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* @ipoib_sendq_size, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %173

158:                                              ; preds = %151
  %159 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %160 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %159, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %161 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %162 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %165 = call i64 @ib_req_notify_cq(i32 %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %158
  %168 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %169 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %168, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %170

170:                                              ; preds = %167, %158
  %171 = load %struct.net_device*, %struct.net_device** %5, align 8
  %172 = call i32 @netif_stop_queue(%struct.net_device* %171)
  br label %173

173:                                              ; preds = %170, %151
  %174 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %175 = call i32 @skb_orphan(%struct.sk_buff* %174)
  %176 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %177 = call i32 @skb_dst_drop(%struct.sk_buff* %176)
  %178 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %179 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %180 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @ipoib_sendq_size, align 4
  %183 = sub nsw i32 %182, 1
  %184 = and i32 %181, %183
  %185 = load %struct.ipoib_ah*, %struct.ipoib_ah** %7, align 8
  %186 = getelementptr inbounds %struct.ipoib_ah, %struct.ipoib_ah* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %8, align 4
  %189 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %10, align 8
  %190 = load i8*, i8** %13, align 8
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @post_send(%struct.ipoib_dev_priv* %178, i32 %184, i32 %187, i32 %188, %struct.ipoib_tx_buf* %189, i8* %190, i32 %191)
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %12, align 4
  %194 = call i64 @unlikely(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %223

196:                                              ; preds = %173
  %197 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %198 = load i32, i32* %12, align 4
  %199 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %197, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %198)
  %200 = load %struct.net_device*, %struct.net_device** %5, align 8
  %201 = getelementptr inbounds %struct.net_device, %struct.net_device* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 4
  %205 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %206 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %206, align 4
  %209 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %210 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %10, align 8
  %213 = call i32 @ipoib_dma_unmap_tx(i32 %211, %struct.ipoib_tx_buf* %212)
  %214 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %215 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %214)
  %216 = load %struct.net_device*, %struct.net_device** %5, align 8
  %217 = call i64 @netif_queue_stopped(%struct.net_device* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %196
  %220 = load %struct.net_device*, %struct.net_device** %5, align 8
  %221 = call i32 @netif_wake_queue(%struct.net_device* %220)
  br label %222

222:                                              ; preds = %219, %196
  br label %236

223:                                              ; preds = %173
  %224 = load i32, i32* @jiffies, align 4
  %225 = load %struct.net_device*, %struct.net_device** %5, align 8
  %226 = getelementptr inbounds %struct.net_device, %struct.net_device* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 4
  %227 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %228 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.ipoib_ah*, %struct.ipoib_ah** %7, align 8
  %231 = getelementptr inbounds %struct.ipoib_ah, %struct.ipoib_ah* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 4
  %232 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %233 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 8
  br label %236

236:                                              ; preds = %223, %222
  %237 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %238 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @MAX_SEND_CQE, align 4
  %241 = icmp sgt i32 %239, %240
  %242 = zext i1 %241 to i32
  %243 = call i64 @unlikely(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %236
  br label %246

246:                                              ; preds = %250, %245
  %247 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %248 = call i64 @poll_tx(%struct.ipoib_dev_priv* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  br label %246

251:                                              ; preds = %246
  br label %252

252:                                              ; preds = %36, %65, %122, %251, %236
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, ...) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @ipoib_cm_skb_too_long(%struct.net_device*, %struct.sk_buff*, i64) #1

declare dso_local i32 @ipoib_dbg_data(%struct.ipoib_dev_priv*, i8*, i64, %struct.ipoib_ah*, i32) #1

declare dso_local i32 @ipoib_dma_map_tx(i32, %struct.ipoib_tx_buf*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i64 @ib_req_notify_cq(i32, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @post_send(%struct.ipoib_dev_priv*, i32, i32, i32, %struct.ipoib_tx_buf*, i8*, i32) #1

declare dso_local i32 @ipoib_dma_unmap_tx(i32, %struct.ipoib_tx_buf*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i64 @poll_tx(%struct.ipoib_dev_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
