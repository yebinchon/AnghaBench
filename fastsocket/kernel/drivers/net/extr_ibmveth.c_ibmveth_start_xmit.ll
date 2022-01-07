; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i32, i32, i32 }
%struct.net_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.ibmveth_adapter = type { i64, i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%union.ibmveth_buf_desc = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"tx: failed to checksum packet\0A\00", align 1
@IBMVETH_BUF_VALID = common dso_local global i32 0, align 4
@IBMVETH_BUF_NO_CSUM = common dso_local global i32 0, align 4
@IBMVETH_BUF_CSUM_GOOD = common dso_local global i32 0, align 4
@tx_copybreak = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IBMVETH_BUF_LEN_MASK = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@FW_FEATURE_CMO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"tx: unable to map xmit buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ibmveth_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmveth_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ibmveth_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x %union.ibmveth_buf_desc], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.ibmveth_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.ibmveth_adapter* %15, %struct.ibmveth_adapter** %5, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 5
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call i64 @__skb_linearize(%struct.sk_buff* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %342

31:                                               ; preds = %21, %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %77

37:                                               ; preds = %31
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @ETH_P_IP, align 4
  %42 = call i64 @htons(i32 %41)
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = call %struct.TYPE_14__* @ip_hdr(%struct.sk_buff* %45)
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IPPROTO_TCP, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %65, label %51

51:                                               ; preds = %44, %37
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @ETH_P_IPV6, align 4
  %56 = call i64 @htons(i32 %55)
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %51
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = call %struct.TYPE_13__* @ipv6_hdr(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IPPROTO_TCP, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %58, %44
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = call i64 @skb_checksum_help(%struct.sk_buff* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = call i32 @netdev_err(%struct.net_device* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %342

77:                                               ; preds = %65, %58, %51, %31
  %78 = load i32, i32* @IBMVETH_BUF_VALID, align 4
  store i32 %78, i32* %6, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %77
  %85 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %86 = call i8* @skb_transport_header(%struct.sk_buff* %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  store i8* %91, i8** %11, align 8
  %92 = load i32, i32* @IBMVETH_BUF_NO_CSUM, align 4
  %93 = load i32, i32* @IBMVETH_BUF_CSUM_GOOD, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  store i8 0, i8* %98, align 1
  %99 = load i8*, i8** %11, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  store i8 0, i8* %100, align 1
  br label %101

101:                                              ; preds = %84, %77
  br label %102

102:                                              ; preds = %385, %101
  %103 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %104 = call i32 @memset(%union.ibmveth_buf_desc* %103, i32 0, i32 96)
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %102
  %108 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %109 = call i32 @skb_is_nonlinear(%struct.sk_buff* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %169, label %111

111:                                              ; preds = %107
  %112 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @tx_copybreak, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %169

117:                                              ; preds = %111, %102
  %118 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %119 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %120 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %118, i32 %121, i32 %124)
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %126, %129
  %131 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %132 = bitcast %union.ibmveth_buf_desc* %131 to %struct.TYPE_10__*
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 16
  %134 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %135 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %138 = bitcast %union.ibmveth_buf_desc* %137 to %struct.TYPE_10__*
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  store i64 %136, i64* %139, align 8
  %140 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %141 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %142 = call i64 @ibmveth_send(%struct.ibmveth_adapter* %140, %union.ibmveth_buf_desc* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %117
  %145 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %146 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  %149 = load %struct.net_device*, %struct.net_device** %4, align 8
  %150 = getelementptr inbounds %struct.net_device, %struct.net_device* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  br label %168

154:                                              ; preds = %117
  %155 = load %struct.net_device*, %struct.net_device** %4, align 8
  %156 = getelementptr inbounds %struct.net_device, %struct.net_device* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  %160 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.net_device*, %struct.net_device** %4, align 8
  %164 = getelementptr inbounds %struct.net_device, %struct.net_device* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = add i32 %166, %162
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %154, %144
  br label %342

169:                                              ; preds = %111, %107
  %170 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %171 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %170, i32 0, i32 2
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %175 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %178 = call i32 @skb_headlen(%struct.sk_buff* %177)
  %179 = load i32, i32* @DMA_TO_DEVICE, align 4
  %180 = call i64 @dma_map_single(i32* %173, i32 %176, i32 %178, i32 %179)
  %181 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %182 = bitcast %union.ibmveth_buf_desc* %181 to %struct.TYPE_10__*
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  store i64 %180, i64* %183, align 8
  %184 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %185 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %184, i32 0, i32 2
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %189 = bitcast %union.ibmveth_buf_desc* %188 to %struct.TYPE_10__*
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = call i64 @dma_mapping_error(i32* %187, i64 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %169
  br label %378

195:                                              ; preds = %169
  %196 = load i32, i32* %6, align 4
  %197 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %198 = call i32 @skb_headlen(%struct.sk_buff* %197)
  %199 = or i32 %196, %198
  %200 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %201 = bitcast %union.ibmveth_buf_desc* %200 to %struct.TYPE_10__*
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  store i32 %199, i32* %202, align 16
  store i32 0, i32* %9, align 4
  br label %203

203:                                              ; preds = %260, %195
  %204 = load i32, i32* %9, align 4
  %205 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %206 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %205)
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp slt i32 %204, %208
  br i1 %209, label %210, label %263

210:                                              ; preds = %203
  %211 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %212 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %211)
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i64 %216
  store %struct.TYPE_11__* %217, %struct.TYPE_11__** %13, align 8
  %218 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %219 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %218, i32 0, i32 2
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @DMA_TO_DEVICE, align 4
  %232 = call i64 @dma_map_page(i32* %221, i32 %224, i32 %227, i32 %230, i32 %231)
  store i64 %232, i64* %12, align 8
  %233 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %234 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %233, i32 0, i32 2
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load i64, i64* %12, align 8
  %238 = call i64 @dma_mapping_error(i32* %236, i64 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %210
  br label %346

241:                                              ; preds = %210
  %242 = load i32, i32* %6, align 4
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %242, %245
  %247 = load i32, i32* %9, align 4
  %248 = add nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 %249
  %251 = bitcast %union.ibmveth_buf_desc* %250 to %struct.TYPE_10__*
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  store i32 %246, i32* %252, align 16
  %253 = load i64, i64* %12, align 8
  %254 = load i32, i32* %9, align 4
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 %256
  %258 = bitcast %union.ibmveth_buf_desc* %257 to %struct.TYPE_10__*
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 1
  store i64 %253, i64* %259, align 8
  br label %260

260:                                              ; preds = %241
  %261 = load i32, i32* %9, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %9, align 4
  br label %203

263:                                              ; preds = %203
  %264 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %265 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %266 = call i64 @ibmveth_send(%struct.ibmveth_adapter* %264, %union.ibmveth_buf_desc* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %278

268:                                              ; preds = %263
  %269 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %270 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 8
  %273 = load %struct.net_device*, %struct.net_device** %4, align 8
  %274 = getelementptr inbounds %struct.net_device, %struct.net_device* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %275, align 4
  br label %292

278:                                              ; preds = %263
  %279 = load %struct.net_device*, %struct.net_device** %4, align 8
  %280 = getelementptr inbounds %struct.net_device, %struct.net_device* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %281, align 4
  %284 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %285 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.net_device*, %struct.net_device** %4, align 8
  %288 = getelementptr inbounds %struct.net_device, %struct.net_device* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = add i32 %290, %286
  store i32 %291, i32* %289, align 4
  br label %292

292:                                              ; preds = %278, %268
  %293 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %294 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %293, i32 0, i32 2
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  %297 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %298 = bitcast %union.ibmveth_buf_desc* %297 to %struct.TYPE_10__*
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %302 = bitcast %union.ibmveth_buf_desc* %301 to %struct.TYPE_10__*
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 16
  %305 = load i32, i32* @IBMVETH_BUF_LEN_MASK, align 4
  %306 = and i32 %304, %305
  %307 = load i32, i32* @DMA_TO_DEVICE, align 4
  %308 = call i32 @dma_unmap_single(i32* %296, i64 %300, i32 %306, i32 %307)
  store i32 1, i32* %9, align 4
  br label %309

309:                                              ; preds = %338, %292
  %310 = load i32, i32* %9, align 4
  %311 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %312 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %311)
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = add nsw i32 %314, 1
  %316 = icmp slt i32 %310, %315
  br i1 %316, label %317, label %341

317:                                              ; preds = %309
  %318 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %319 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %318, i32 0, i32 2
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 0
  %322 = load i32, i32* %9, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 %323
  %325 = bitcast %union.ibmveth_buf_desc* %324 to %struct.TYPE_10__*
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = load i32, i32* %9, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 %329
  %331 = bitcast %union.ibmveth_buf_desc* %330 to %struct.TYPE_10__*
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 16
  %334 = load i32, i32* @IBMVETH_BUF_LEN_MASK, align 4
  %335 = and i32 %333, %334
  %336 = load i32, i32* @DMA_TO_DEVICE, align 4
  %337 = call i32 @dma_unmap_page(i32* %321, i64 %327, i32 %335, i32 %336)
  br label %338

338:                                              ; preds = %317
  %339 = load i32, i32* %9, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %9, align 4
  br label %309

341:                                              ; preds = %309
  br label %342

342:                                              ; preds = %341, %168, %69, %25
  %343 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %344 = call i32 @dev_kfree_skb(%struct.sk_buff* %343)
  %345 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %345

346:                                              ; preds = %240
  %347 = load i32, i32* %9, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %349

349:                                              ; preds = %374, %346
  %350 = load i32, i32* %9, align 4
  %351 = load i32, i32* %8, align 4
  %352 = icmp slt i32 %350, %351
  br i1 %352, label %353, label %377

353:                                              ; preds = %349
  %354 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %355 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %354, i32 0, i32 2
  %356 = load %struct.TYPE_9__*, %struct.TYPE_9__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 0
  %358 = load i32, i32* %9, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 %359
  %361 = bitcast %union.ibmveth_buf_desc* %360 to %struct.TYPE_10__*
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = load i32, i32* %9, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 %365
  %367 = bitcast %union.ibmveth_buf_desc* %366 to %struct.TYPE_10__*
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 16
  %370 = load i32, i32* @IBMVETH_BUF_LEN_MASK, align 4
  %371 = and i32 %369, %370
  %372 = load i32, i32* @DMA_TO_DEVICE, align 4
  %373 = call i32 @dma_unmap_page(i32* %357, i64 %363, i32 %371, i32 %372)
  br label %374

374:                                              ; preds = %353
  %375 = load i32, i32* %9, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %9, align 4
  br label %349

377:                                              ; preds = %349
  br label %378

378:                                              ; preds = %377, %194
  %379 = load i32, i32* @FW_FEATURE_CMO, align 4
  %380 = call i32 @firmware_has_feature(i32 %379)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %385, label %382

382:                                              ; preds = %378
  %383 = load %struct.net_device*, %struct.net_device** %4, align 8
  %384 = call i32 @netdev_err(%struct.net_device* %383, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %385

385:                                              ; preds = %382, %378
  %386 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %387 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 8
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %387, align 8
  %390 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %391 = call i32 @skb_linearize(%struct.sk_buff* %390)
  store i32 1, i32* %10, align 4
  br label %102
}

declare dso_local %struct.ibmveth_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @__skb_linearize(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_14__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_13__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_checksum_help(%struct.sk_buff*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i8* @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @memset(%union.ibmveth_buf_desc*, i32, i32) #1

declare dso_local i32 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @ibmveth_send(%struct.ibmveth_adapter*, %union.ibmveth_buf_desc*) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i64 @dma_map_page(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_page(i32*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @firmware_has_feature(i32) #1

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
