; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_process_mac_rx_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_process_mac_rx_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, %struct.net_device*, i64 }
%struct.net_device = type { i64 }
%struct.rx_ring = type { i32, i32, i32, i32, %struct.napi_struct }
%struct.napi_struct = type { i32 }
%struct.ib_mac_iocb_rsp = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i64, i32, i32, i32 }
%struct.bq_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i8* }
%struct.iphdr = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Couldn't get an skb, need to unwind!.\0A\00", align 1
@IB_MAC_IOCB_RSP_ERR_MASK = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Segment too small, dropping.\0A\00", align 1
@rx_status = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"%d bytes of headers and data in large. Chain page to new skb and pull tail.\0A\00", align 1
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@IB_MAC_CSUM_ERR_MASK = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_T = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"TCP checksum done!\0A\00", align 1
@CHECKSUM_UNNECESSARY = common dso_local global i64 0, align 8
@IB_MAC_IOCB_RSP_U = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_V4 = common dso_local global i32 0, align 4
@IP_MF = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"UDP checksum done!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*, i64, i32)* @ql_process_mac_rx_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_process_mac_rx_page(%struct.ql_adapter* %0, %struct.rx_ring* %1, %struct.ib_mac_iocb_rsp* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.ql_adapter*, align 8
  %7 = alloca %struct.rx_ring*, align 8
  %8 = alloca %struct.ib_mac_iocb_rsp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.bq_desc*, align 8
  %15 = alloca %struct.napi_struct*, align 8
  %16 = alloca %struct.iphdr*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %6, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %7, align 8
  store %struct.ib_mac_iocb_rsp* %2, %struct.ib_mac_iocb_rsp** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %17, i32 0, i32 1
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %11, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  %20 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %21 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %22 = call %struct.bq_desc* @ql_get_curr_lchunk(%struct.ql_adapter* %20, %struct.rx_ring* %21)
  store %struct.bq_desc* %22, %struct.bq_desc** %14, align 8
  %23 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %24 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %23, i32 0, i32 4
  store %struct.napi_struct* %24, %struct.napi_struct** %15, align 8
  %25 = load %struct.net_device*, %struct.net_device** %11, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %25, i64 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %12, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %47, label %30

30:                                               ; preds = %5
  %31 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %32 = load i32, i32* @drv, align 4
  %33 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %34 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %33, i32 0, i32 1
  %35 = load %struct.net_device*, %struct.net_device** %34, align 8
  %36 = call i32 @netif_err(%struct.ql_adapter* %31, i32 %32, %struct.net_device* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %38 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.bq_desc*, %struct.bq_desc** %14, align 8
  %42 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @put_page(i32 %45)
  br label %290

47:                                               ; preds = %5
  %48 = load %struct.bq_desc*, %struct.bq_desc** %14, align 8
  %49 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %13, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @prefetch(i8* %53)
  %55 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %56 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IB_MAC_IOCB_RSP_ERR_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %47
  %62 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %63 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %64 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %67 = call i32 @ql_categorize_rx_err(%struct.ql_adapter* %62, i32 %65, %struct.rx_ring* %66)
  br label %281

68:                                               ; preds = %47
  %69 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.net_device*, %struct.net_device** %11, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ETH_HLEN, align 8
  %76 = add nsw i64 %74, %75
  %77 = icmp sgt i64 %71, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %68
  %79 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %80 = load i32, i32* @drv, align 4
  %81 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %82 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %81, i32 0, i32 1
  %83 = load %struct.net_device*, %struct.net_device** %82, align 8
  %84 = call i32 @netif_err(%struct.ql_adapter* %79, i32 %80, %struct.net_device* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %86 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %281

89:                                               ; preds = %68
  %90 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %91 = load i64, i64* @ETH_HLEN, align 8
  %92 = call i32 @skb_put(%struct.sk_buff* %90, i64 %91)
  %93 = load i8*, i8** %13, align 8
  %94 = load i64, i64* @ETH_HLEN, align 8
  %95 = call i32 @memcpy(i32 %92, i8* %93, i64 %94)
  %96 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %97 = load i32, i32* @rx_status, align 4
  %98 = load i32, i32* @KERN_DEBUG, align 4
  %99 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %100 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %99, i32 0, i32 1
  %101 = load %struct.net_device*, %struct.net_device** %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %96, i32 %97, i32 %98, %struct.net_device* %101, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i64 %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %105 = load %struct.bq_desc*, %struct.bq_desc** %14, align 8
  %106 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.bq_desc*, %struct.bq_desc** %14, align 8
  %111 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @ETH_HLEN, align 8
  %116 = add nsw i64 %114, %115
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* @ETH_HLEN, align 8
  %119 = sub nsw i64 %117, %118
  %120 = call i32 @skb_fill_page_desc(%struct.sk_buff* %104, i32 0, i32 %109, i64 %116, i64 %119)
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* @ETH_HLEN, align 8
  %123 = sub nsw i64 %121, %122
  %124 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, %123
  store i64 %127, i64* %125, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* @ETH_HLEN, align 8
  %130 = sub nsw i64 %128, %129
  %131 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %130
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 8
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* @ETH_HLEN, align 8
  %139 = sub nsw i64 %137, %138
  %140 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %139
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %141, align 4
  %146 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %147 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %154 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %152
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %154, align 4
  %159 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %160 = load %struct.net_device*, %struct.net_device** %11, align 8
  %161 = call i32 @eth_type_trans(%struct.sk_buff* %159, %struct.net_device* %160)
  %162 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  %164 = load i64, i64* @CHECKSUM_NONE, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  %167 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %168 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %239

171:                                              ; preds = %89
  %172 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %173 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @IB_MAC_CSUM_ERR_MASK, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %239, label %178

178:                                              ; preds = %171
  %179 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %180 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @IB_MAC_IOCB_RSP_T, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %178
  %186 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %187 = load i32, i32* @rx_status, align 4
  %188 = load i32, i32* @KERN_DEBUG, align 4
  %189 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %190 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %189, i32 0, i32 1
  %191 = load %struct.net_device*, %struct.net_device** %190, align 8
  %192 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %186, i32 %187, i32 %188, %struct.net_device* %191, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %193 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %194 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %195 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %194, i32 0, i32 1
  store i64 %193, i64* %195, align 8
  br label %238

196:                                              ; preds = %178
  %197 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %198 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @IB_MAC_IOCB_RSP_U, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %237

203:                                              ; preds = %196
  %204 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %205 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @IB_MAC_IOCB_RSP_V4, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %237

210:                                              ; preds = %203
  %211 = load i8*, i8** %13, align 8
  %212 = bitcast i8* %211 to i32*
  %213 = load i64, i64* @ETH_HLEN, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  %215 = bitcast i32* %214 to %struct.iphdr*
  store %struct.iphdr* %215, %struct.iphdr** %16, align 8
  %216 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %217 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @IP_MF, align 4
  %220 = load i32, i32* @IP_OFFSET, align 4
  %221 = or i32 %219, %220
  %222 = call i32 @htons(i32 %221)
  %223 = and i32 %218, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %236, label %225

225:                                              ; preds = %210
  %226 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %227 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %228 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %227, i32 0, i32 1
  store i64 %226, i64* %228, align 8
  %229 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %230 = load i32, i32* @rx_status, align 4
  %231 = load i32, i32* @KERN_DEBUG, align 4
  %232 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %233 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %232, i32 0, i32 1
  %234 = load %struct.net_device*, %struct.net_device** %233, align 8
  %235 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %229, i32 %230, i32 %231, %struct.net_device* %234, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %236

236:                                              ; preds = %225, %210
  br label %237

237:                                              ; preds = %236, %203, %196
  br label %238

238:                                              ; preds = %237, %185
  br label %239

239:                                              ; preds = %238, %171, %89
  %240 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %241 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %242 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @skb_record_rx_queue(%struct.sk_buff* %240, i32 %243)
  %245 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %246 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %266

250:                                              ; preds = %239
  %251 = load i32, i32* %10, align 4
  %252 = icmp ne i32 %251, 65535
  br i1 %252, label %253, label %261

253:                                              ; preds = %250
  %254 = load %struct.napi_struct*, %struct.napi_struct** %15, align 8
  %255 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %256 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %10, align 4
  %259 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %260 = call i32 @vlan_gro_receive(%struct.napi_struct* %254, i32 %257, i32 %258, %struct.sk_buff* %259)
  br label %265

261:                                              ; preds = %250
  %262 = load %struct.napi_struct*, %struct.napi_struct** %15, align 8
  %263 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %264 = call i32 @napi_gro_receive(%struct.napi_struct* %262, %struct.sk_buff* %263)
  br label %265

265:                                              ; preds = %261, %253
  br label %280

266:                                              ; preds = %239
  %267 = load i32, i32* %10, align 4
  %268 = icmp ne i32 %267, 65535
  br i1 %268, label %269, label %276

269:                                              ; preds = %266
  %270 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %271 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %272 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* %10, align 4
  %275 = call i32 @vlan_hwaccel_receive_skb(%struct.sk_buff* %270, i32 %273, i32 %274)
  br label %279

276:                                              ; preds = %266
  %277 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %278 = call i32 @netif_receive_skb(%struct.sk_buff* %277)
  br label %279

279:                                              ; preds = %276, %269
  br label %280

280:                                              ; preds = %279, %265
  br label %290

281:                                              ; preds = %78, %61
  %282 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %283 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %282)
  %284 = load %struct.bq_desc*, %struct.bq_desc** %14, align 8
  %285 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @put_page(i32 %288)
  br label %290

290:                                              ; preds = %281, %280, %30
  ret void
}

declare dso_local %struct.bq_desc* @ql_get_curr_lchunk(%struct.ql_adapter*, %struct.rx_ring*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i64) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @prefetch(i8*) #1

declare dso_local i32 @ql_categorize_rx_err(%struct.ql_adapter*, i32, %struct.rx_ring*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32, i64, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @vlan_gro_receive(%struct.napi_struct*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(%struct.napi_struct*, %struct.sk_buff*) #1

declare dso_local i32 @vlan_hwaccel_receive_skb(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
