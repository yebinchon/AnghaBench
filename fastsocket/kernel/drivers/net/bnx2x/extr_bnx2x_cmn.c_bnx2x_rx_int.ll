; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_rx_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_rx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_fastpath = type { i64, i64, i64, i64, i64, i32, i32, i32, %union.eth_rx_cqe*, i32, i32, i32, %struct.bnx2x_agg_info*, i64, %struct.sw_rx_bd*, i32, %struct.bnx2x* }
%union.eth_rx_cqe = type { %struct.eth_fast_path_rx_cqe }
%struct.eth_fast_path_rx_cqe = type { i32, i64, i64, i32, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.bnx2x_agg_info = type { i64, i64 }
%struct.sw_rx_bd = type { i32* }
%struct.bnx2x = type { i32, i64, i32*, i64, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i64 }
%struct.ethhdr = type { i64 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@NETIF_MSG_RX_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"queue[%d]: sw_comp_cons %u\0A\00", align 1
@ETH_FAST_PATH_RX_CQE_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"CQE type %x  err %x  status %x  queue %x  vlan %x  len %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"calling tpa_start on queue %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"calling tpa_stop on queue %d\0A\00", align 1
@TPA_MODE_GRO = common dso_local global i64 0, align 8
@SGE_PAGE_SHIFT = common dso_local global i64 0, align 8
@mapping = common dso_local global i32 0, align 4
@RX_COPY_THRESH = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i64 0, align 8
@ETH_RX_ERROR_FALGS = common dso_local global i32 0, align 4
@NETIF_MSG_RX_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"ERROR  flags %x  rx packet %u\0A\00", align 1
@ETH_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"ERROR  packet dropped because of alloc failure\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BNX2X_RX_MODE_PROMISC = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@PARSING_FLAGS_VLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_rx_int(%struct.bnx2x_fastpath* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x_fastpath*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.eth_rx_cqe*, align 8
  %14 = alloca %struct.eth_fast_path_rx_cqe*, align 8
  %15 = alloca %struct.sw_rx_bd*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.bnx2x_agg_info*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.ethhdr*, align 8
  store %struct.bnx2x_fastpath* %0, %struct.bnx2x_fastpath** %3, align 8
  store i32 %1, i32* %4, align 4
  %28 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %29 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %28, i32 0, i32 16
  %30 = load %struct.bnx2x*, %struct.bnx2x** %29, align 8
  store %struct.bnx2x* %30, %struct.bnx2x** %5, align 8
  store i32 0, i32* %12, align 4
  %31 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %6, align 8
  %34 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %35 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %8, align 8
  %38 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %39 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %10, align 8
  %41 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %42 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @RCQ_BD(i64 %44)
  store i64 %45, i64* %9, align 8
  %46 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %47 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %46, i32 0, i32 8
  %48 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %union.eth_rx_cqe, %union.eth_rx_cqe* %48, i64 %49
  store %union.eth_rx_cqe* %50, %union.eth_rx_cqe** %13, align 8
  %51 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %13, align 8
  %52 = bitcast %union.eth_rx_cqe* %51 to %struct.eth_fast_path_rx_cqe*
  store %struct.eth_fast_path_rx_cqe* %52, %struct.eth_fast_path_rx_cqe** %14, align 8
  %53 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %54 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %55 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %54, i32 0, i32 15
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 (i32, i8*, ...) @DP(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %56, i64 %57)
  br label %59

59:                                               ; preds = %470, %2
  %60 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %14, align 8
  %61 = call i64 @BNX2X_IS_CQE_COMPLETED(%struct.eth_fast_path_rx_cqe* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %480

63:                                               ; preds = %59
  store %struct.sw_rx_bd* null, %struct.sw_rx_bd** %15, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @RX_BD(i64 %64)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i64 @RX_BD(i64 %66)
  store i64 %67, i64* %6, align 8
  %68 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %14, align 8
  %69 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* @ETH_FAST_PATH_RX_CQE_TYPE, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @CQE_TYPE(i32 %75)
  %77 = load i32, i32* %17, align 4
  %78 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %14, align 8
  %79 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %14, align 8
  %82 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le32_to_cpu(i32 %83)
  %85 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %14, align 8
  %86 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @le16_to_cpu(i32 %87)
  %89 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %14, align 8
  %90 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @le16_to_cpu(i32 %91)
  %93 = call i32 (i32, i8*, ...) @DP(i32 %74, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77, i32 %80, i32 %84, i32 %88, i32 %92)
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @CQE_TYPE_SLOW(i32 %94)
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %63
  %99 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %100 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %13, align 8
  %101 = call i32 @bnx2x_sp_event(%struct.bnx2x_fastpath* %99, %union.eth_rx_cqe* %100)
  br label %459

102:                                              ; preds = %63
  %103 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %104 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %103, i32 0, i32 14
  %105 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %105, i64 %106
  store %struct.sw_rx_bd* %107, %struct.sw_rx_bd** %15, align 8
  %108 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %15, align 8
  %109 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %22, align 8
  %111 = load i32, i32* %18, align 4
  %112 = call i32 @CQE_TYPE_FAST(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %189, label %114

114:                                              ; preds = %102
  %115 = load i32, i32* %18, align 4
  %116 = call i64 @CQE_TYPE_START(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %14, align 8
  %120 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %26, align 8
  %122 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %123 = load i64, i64* %26, align 8
  %124 = call i32 (i32, i8*, ...) @DP(i32 %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %123)
  %125 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %126 = load i64, i64* %26, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %14, align 8
  %130 = call i32 @bnx2x_tpa_start(%struct.bnx2x_fastpath* %125, i64 %126, i64 %127, i64 %128, %struct.eth_fast_path_rx_cqe* %129)
  br label %448

131:                                              ; preds = %114
  %132 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %13, align 8
  %133 = bitcast %union.eth_rx_cqe* %132 to %struct.TYPE_12__*
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %21, align 8
  %136 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %137 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %136, i32 0, i32 12
  %138 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %137, align 8
  %139 = load i64, i64* %21, align 8
  %140 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %138, i64 %139
  store %struct.bnx2x_agg_info* %140, %struct.bnx2x_agg_info** %23, align 8
  %141 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %142 = load i64, i64* %21, align 8
  %143 = call i32 (i32, i8*, ...) @DP(i32 %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %142)
  %144 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %13, align 8
  %145 = bitcast %union.eth_rx_cqe* %144 to %struct.TYPE_12__*
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @le16_to_cpu(i32 %147)
  %149 = sext i32 %148 to i64
  %150 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %23, align 8
  %151 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = sub i64 %149, %152
  store i64 %153, i64* %24, align 8
  %154 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %155 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @TPA_MODE_GRO, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %131
  %160 = load i64, i64* %24, align 8
  %161 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %23, align 8
  %162 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = add i64 %160, %163
  %165 = sub i64 %164, 1
  %166 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %23, align 8
  %167 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = udiv i64 %165, %168
  store i64 %169, i64* %25, align 8
  br label %175

170:                                              ; preds = %131
  %171 = load i64, i64* %24, align 8
  %172 = call i64 @SGE_PAGE_ALIGN(i64 %171)
  %173 = load i64, i64* @SGE_PAGE_SHIFT, align 8
  %174 = lshr i64 %172, %173
  store i64 %174, i64* %25, align 8
  br label %175

175:                                              ; preds = %170, %159
  %176 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %177 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %178 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %23, align 8
  %179 = load i64, i64* %25, align 8
  %180 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %13, align 8
  %181 = bitcast %union.eth_rx_cqe* %180 to %struct.TYPE_12__*
  %182 = load i64, i64* %9, align 8
  %183 = call i32 @bnx2x_tpa_stop(%struct.bnx2x* %176, %struct.bnx2x_fastpath* %177, %struct.bnx2x_agg_info* %178, i64 %179, %struct.TYPE_12__* %181, i64 %182)
  %184 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %185 = load i64, i64* %25, align 8
  %186 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %13, align 8
  %187 = bitcast %union.eth_rx_cqe* %186 to %struct.TYPE_12__*
  %188 = call i32 @bnx2x_update_sge_prod(%struct.bnx2x_fastpath* %184, i64 %185, %struct.TYPE_12__* %187)
  br label %459

189:                                              ; preds = %102
  %190 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %14, align 8
  %191 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @le16_to_cpu(i32 %192)
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %19, align 8
  %195 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %14, align 8
  %196 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %20, align 8
  %198 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %199 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %198, i32 0, i32 5
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %15, align 8
  %203 = load i32, i32* @mapping, align 4
  %204 = call i32 @dma_unmap_addr(%struct.sw_rx_bd* %202, i32 %203)
  %205 = load i64, i64* %20, align 8
  %206 = load i64, i64* @RX_COPY_THRESH, align 8
  %207 = add i64 %205, %206
  %208 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %209 = call i32 @dma_sync_single_for_cpu(i32* %201, i32 %204, i64 %207, i32 %208)
  %210 = load i64, i64* @NET_SKB_PAD, align 8
  %211 = load i64, i64* %20, align 8
  %212 = add i64 %211, %210
  store i64 %212, i64* %20, align 8
  %213 = load i32*, i32** %22, align 8
  %214 = load i64, i64* %20, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = call i32 @prefetch(i32* %215)
  %217 = load i32, i32* %17, align 4
  %218 = load i32, i32* @ETH_RX_ERROR_FALGS, align 4
  %219 = and i32 %217, %218
  %220 = call i64 @unlikely(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %189
  %223 = load i32, i32* @NETIF_MSG_RX_ERR, align 4
  %224 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* %17, align 4
  %227 = load i64, i64* %10, align 8
  %228 = call i32 (i32, i8*, ...) @DP(i32 %225, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %226, i64 %227)
  %229 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %230 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %231 = call %struct.TYPE_13__* @bnx2x_fp_qstats(%struct.bnx2x* %229, %struct.bnx2x_fastpath* %230)
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %232, align 4
  br label %335

235:                                              ; preds = %189
  %236 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %237 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %236, i32 0, i32 4
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @ETH_MAX_PACKET_SIZE, align 8
  %242 = icmp sgt i64 %240, %241
  br i1 %242, label %243, label %279

243:                                              ; preds = %235
  %244 = load i64, i64* %19, align 8
  %245 = load i64, i64* @RX_COPY_THRESH, align 8
  %246 = icmp ule i64 %244, %245
  br i1 %246, label %247, label %279

247:                                              ; preds = %243
  %248 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %249 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %248, i32 0, i32 4
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %249, align 8
  %251 = load i64, i64* %19, align 8
  %252 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.TYPE_11__* %250, i64 %251)
  store %struct.sk_buff* %252, %struct.sk_buff** %16, align 8
  %253 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %254 = icmp eq %struct.sk_buff* %253, null
  br i1 %254, label %255, label %266

255:                                              ; preds = %247
  %256 = load i32, i32* @NETIF_MSG_RX_ERR, align 4
  %257 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %258 = or i32 %256, %257
  %259 = call i32 (i32, i8*, ...) @DP(i32 %258, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %260 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %261 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %262 = call %struct.TYPE_13__* @bnx2x_fp_qstats(%struct.bnx2x* %260, %struct.bnx2x_fastpath* %261)
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %263, align 4
  br label %335

266:                                              ; preds = %247
  %267 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %268 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = load i32*, i32** %22, align 8
  %271 = load i64, i64* %20, align 8
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  %273 = load i64, i64* %19, align 8
  %274 = call i32 @memcpy(i64 %269, i32* %272, i64 %273)
  %275 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %276 = load i64, i64* %6, align 8
  %277 = load i64, i64* %7, align 8
  %278 = call i32 @bnx2x_reuse_rx_data(%struct.bnx2x_fastpath* %275, i64 %276, i64 %277)
  br label %341

279:                                              ; preds = %243, %235
  %280 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %281 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %282 = load i64, i64* %7, align 8
  %283 = load i32, i32* @GFP_ATOMIC, align 4
  %284 = call i64 @bnx2x_alloc_rx_data(%struct.bnx2x* %280, %struct.bnx2x_fastpath* %281, i64 %282, i32 %283)
  %285 = icmp eq i64 %284, 0
  %286 = zext i1 %285 to i32
  %287 = call i64 @likely(i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %324

289:                                              ; preds = %279
  %290 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %291 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %290, i32 0, i32 5
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 0
  %294 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %15, align 8
  %295 = load i32, i32* @mapping, align 4
  %296 = call i32 @dma_unmap_addr(%struct.sw_rx_bd* %294, i32 %295)
  %297 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %298 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %297, i32 0, i32 11
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %301 = call i32 @dma_unmap_single(i32* %293, i32 %296, i32 %299, i32 %300)
  %302 = load i32*, i32** %22, align 8
  %303 = call %struct.sk_buff* @build_skb(i32* %302)
  store %struct.sk_buff* %303, %struct.sk_buff** %16, align 8
  %304 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %305 = icmp ne %struct.sk_buff* %304, null
  %306 = xor i1 %305, true
  %307 = zext i1 %306 to i32
  %308 = call i64 @unlikely(i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %320

310:                                              ; preds = %289
  %311 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %312 = load i32*, i32** %22, align 8
  %313 = call i32 @bnx2x_frag_free(%struct.bnx2x_fastpath* %311, i32* %312)
  %314 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %315 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %316 = call %struct.TYPE_13__* @bnx2x_fp_qstats(%struct.bnx2x* %314, %struct.bnx2x_fastpath* %315)
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %317, align 4
  br label %448

320:                                              ; preds = %289
  %321 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %322 = load i64, i64* %20, align 8
  %323 = call i32 @skb_reserve(%struct.sk_buff* %321, i64 %322)
  br label %340

324:                                              ; preds = %279
  %325 = load i32, i32* @NETIF_MSG_RX_ERR, align 4
  %326 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %327 = or i32 %325, %326
  %328 = call i32 (i32, i8*, ...) @DP(i32 %327, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %329 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %330 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %331 = call %struct.TYPE_13__* @bnx2x_fp_qstats(%struct.bnx2x* %329, %struct.bnx2x_fastpath* %330)
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %332, align 4
  br label %335

335:                                              ; preds = %324, %255, %222
  %336 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %337 = load i64, i64* %6, align 8
  %338 = load i64, i64* %7, align 8
  %339 = call i32 @bnx2x_reuse_rx_data(%struct.bnx2x_fastpath* %336, i64 %337, i64 %338)
  br label %448

340:                                              ; preds = %320
  br label %341

341:                                              ; preds = %340, %266
  %342 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %343 = load i64, i64* %19, align 8
  %344 = call i32 @skb_put(%struct.sk_buff* %342, i64 %343)
  %345 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %346 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @BNX2X_RX_MODE_PROMISC, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %389

350:                                              ; preds = %341
  %351 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %352 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %351, i32 0, i32 2
  %353 = load i32*, i32** %352, align 8
  %354 = icmp eq i32* %353, null
  br i1 %354, label %355, label %389

355:                                              ; preds = %350
  %356 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %357 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %356, i32 0, i32 3
  %358 = load i64, i64* %357, align 8
  %359 = inttoptr i64 %358 to %struct.ethhdr*
  store %struct.ethhdr* %359, %struct.ethhdr** %27, align 8
  %360 = load %struct.ethhdr*, %struct.ethhdr** %27, align 8
  %361 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = load i32, i32* @ETH_P_8021Q, align 4
  %364 = call i64 @htons(i32 %363)
  %365 = icmp eq i64 %362, %364
  br i1 %365, label %366, label %388

366:                                              ; preds = %355
  %367 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %368 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %367, i32 0, i32 3
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @VLAN_HLEN, align 8
  %371 = add nsw i64 %369, %370
  %372 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %373 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %372, i32 0, i32 3
  %374 = load i64, i64* %373, align 8
  %375 = load i32, i32* @ETH_ALEN, align 4
  %376 = mul nsw i32 2, %375
  %377 = call i32 @memmove(i64 %371, i64 %374, i32 %376)
  %378 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %379 = load i64, i64* @VLAN_HLEN, align 8
  %380 = call i32 @skb_pull(%struct.sk_buff* %378, i64 %379)
  %381 = load i64, i64* @VLAN_HLEN, align 8
  %382 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %383 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = sext i32 %384 to i64
  %386 = add nsw i64 %385, %381
  %387 = trunc i64 %386 to i32
  store i32 %387, i32* %383, align 8
  br label %388

388:                                              ; preds = %366, %355
  br label %389

389:                                              ; preds = %388, %350, %341
  %390 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %391 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %392 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %391, i32 0, i32 4
  %393 = load %struct.TYPE_11__*, %struct.TYPE_11__** %392, align 8
  %394 = call i32 @eth_type_trans(%struct.sk_buff* %390, %struct.TYPE_11__* %393)
  %395 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %396 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %395, i32 0, i32 1
  store i32 %394, i32* %396, align 4
  %397 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %398 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %14, align 8
  %399 = call i32 @bnx2x_get_rxhash(%struct.bnx2x* %397, %struct.eth_fast_path_rx_cqe* %398)
  %400 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %401 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %400, i32 0, i32 0
  store i32 %399, i32* %401, align 8
  %402 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %403 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %402)
  %404 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %405 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %404, i32 0, i32 3
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %416

408:                                              ; preds = %389
  %409 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %410 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %13, align 8
  %411 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %412 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %413 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %414 = call %struct.TYPE_13__* @bnx2x_fp_qstats(%struct.bnx2x* %412, %struct.bnx2x_fastpath* %413)
  %415 = call i32 @bnx2x_csum_validate(%struct.sk_buff* %409, %union.eth_rx_cqe* %410, %struct.bnx2x_fastpath* %411, %struct.TYPE_13__* %414)
  br label %416

416:                                              ; preds = %408, %389
  %417 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %418 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %419 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %418, i32 0, i32 10
  %420 = load i32, i32* %419, align 4
  %421 = call i32 @skb_record_rx_queue(%struct.sk_buff* %417, i32 %420)
  %422 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %14, align 8
  %423 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %422, i32 0, i32 4
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = call i32 @le16_to_cpu(i32 %425)
  %427 = load i32, i32* @PARSING_FLAGS_VLAN, align 4
  %428 = and i32 %426, %427
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %442

430:                                              ; preds = %416
  %431 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %432 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %431, i32 0, i32 9
  %433 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %434 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %433, i32 0, i32 2
  %435 = load i32*, i32** %434, align 8
  %436 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %14, align 8
  %437 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 8
  %439 = call i32 @le16_to_cpu(i32 %438)
  %440 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %441 = call i32 @vlan_gro_receive(i32* %432, i32* %435, i32 %439, %struct.sk_buff* %440)
  br label %447

442:                                              ; preds = %416
  %443 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %444 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %443, i32 0, i32 9
  %445 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %446 = call i32 @napi_gro_receive(i32* %444, %struct.sk_buff* %445)
  br label %447

447:                                              ; preds = %442, %430
  br label %448

448:                                              ; preds = %447, %335, %310, %118
  %449 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %15, align 8
  %450 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %449, i32 0, i32 0
  store i32* null, i32** %450, align 8
  %451 = load i64, i64* %6, align 8
  %452 = call i64 @NEXT_RX_IDX(i64 %451)
  store i64 %452, i64* %6, align 8
  %453 = load i64, i64* %7, align 8
  %454 = call i64 @NEXT_RX_IDX(i64 %453)
  store i64 %454, i64* %7, align 8
  %455 = load i64, i64* %8, align 8
  %456 = call i64 @NEXT_RX_IDX(i64 %455)
  store i64 %456, i64* %8, align 8
  %457 = load i32, i32* %12, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %12, align 4
  br label %459

459:                                              ; preds = %448, %175, %98
  %460 = load i64, i64* %11, align 8
  %461 = call i64 @NEXT_RCQ_IDX(i64 %460)
  store i64 %461, i64* %11, align 8
  %462 = load i64, i64* %10, align 8
  %463 = call i64 @NEXT_RCQ_IDX(i64 %462)
  store i64 %463, i64* %10, align 8
  %464 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %14, align 8
  %465 = call i32 @BNX2X_SEED_CQE(%struct.eth_fast_path_rx_cqe* %464)
  %466 = load i32, i32* %12, align 4
  %467 = load i32, i32* %4, align 4
  %468 = icmp eq i32 %466, %467
  br i1 %468, label %469, label %470

469:                                              ; preds = %459
  br label %480

470:                                              ; preds = %459
  %471 = load i64, i64* %10, align 8
  %472 = call i64 @RCQ_BD(i64 %471)
  store i64 %472, i64* %9, align 8
  %473 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %474 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %473, i32 0, i32 8
  %475 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %474, align 8
  %476 = load i64, i64* %9, align 8
  %477 = getelementptr inbounds %union.eth_rx_cqe, %union.eth_rx_cqe* %475, i64 %476
  store %union.eth_rx_cqe* %477, %union.eth_rx_cqe** %13, align 8
  %478 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %13, align 8
  %479 = bitcast %union.eth_rx_cqe* %478 to %struct.eth_fast_path_rx_cqe*
  store %struct.eth_fast_path_rx_cqe* %479, %struct.eth_fast_path_rx_cqe** %14, align 8
  br label %59

480:                                              ; preds = %469, %59
  %481 = load i64, i64* %6, align 8
  %482 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %483 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %482, i32 0, i32 0
  store i64 %481, i64* %483, align 8
  %484 = load i64, i64* %8, align 8
  %485 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %486 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %485, i32 0, i32 1
  store i64 %484, i64* %486, align 8
  %487 = load i64, i64* %10, align 8
  %488 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %489 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %488, i32 0, i32 2
  store i64 %487, i64* %489, align 8
  %490 = load i64, i64* %11, align 8
  %491 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %492 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %491, i32 0, i32 3
  store i64 %490, i64* %492, align 8
  %493 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %494 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %495 = load i64, i64* %8, align 8
  %496 = load i64, i64* %11, align 8
  %497 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %498 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %497, i32 0, i32 7
  %499 = load i32, i32* %498, align 8
  %500 = call i32 @bnx2x_update_rx_prod(%struct.bnx2x* %493, %struct.bnx2x_fastpath* %494, i64 %495, i64 %496, i32 %499)
  %501 = load i32, i32* %12, align 4
  %502 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %503 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %502, i32 0, i32 5
  %504 = load i32, i32* %503, align 8
  %505 = add nsw i32 %504, %501
  store i32 %505, i32* %503, align 8
  %506 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %507 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %506, i32 0, i32 6
  %508 = load i32, i32* %507, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %507, align 4
  %510 = load i32, i32* %12, align 4
  ret i32 %510
}

declare dso_local i64 @RCQ_BD(i64) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i64 @BNX2X_IS_CQE_COMPLETED(%struct.eth_fast_path_rx_cqe*) #1

declare dso_local i64 @RX_BD(i64) #1

declare dso_local i32 @CQE_TYPE(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @CQE_TYPE_SLOW(i32) #1

declare dso_local i32 @bnx2x_sp_event(%struct.bnx2x_fastpath*, %union.eth_rx_cqe*) #1

declare dso_local i32 @CQE_TYPE_FAST(i32) #1

declare dso_local i64 @CQE_TYPE_START(i32) #1

declare dso_local i32 @bnx2x_tpa_start(%struct.bnx2x_fastpath*, i64, i64, i64, %struct.eth_fast_path_rx_cqe*) #1

declare dso_local i64 @SGE_PAGE_ALIGN(i64) #1

declare dso_local i32 @bnx2x_tpa_stop(%struct.bnx2x*, %struct.bnx2x_fastpath*, %struct.bnx2x_agg_info*, i64, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @bnx2x_update_sge_prod(%struct.bnx2x_fastpath*, i64, %struct.TYPE_12__*) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.sw_rx_bd*, i32) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local %struct.TYPE_13__* @bnx2x_fp_qstats(%struct.bnx2x*, %struct.bnx2x_fastpath*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @bnx2x_reuse_rx_data(%struct.bnx2x_fastpath*, i64, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @bnx2x_alloc_rx_data(%struct.bnx2x*, %struct.bnx2x_fastpath*, i64, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @build_skb(i32*) #1

declare dso_local i32 @bnx2x_frag_free(%struct.bnx2x_fastpath*, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_11__*) #1

declare dso_local i32 @bnx2x_get_rxhash(%struct.bnx2x*, %struct.eth_fast_path_rx_cqe*) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @bnx2x_csum_validate(%struct.sk_buff*, %union.eth_rx_cqe*, %struct.bnx2x_fastpath*, %struct.TYPE_13__*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @vlan_gro_receive(i32*, i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i64 @NEXT_RX_IDX(i64) #1

declare dso_local i64 @NEXT_RCQ_IDX(i64) #1

declare dso_local i32 @BNX2X_SEED_CQE(%struct.eth_fast_path_rx_cqe*) #1

declare dso_local i32 @bnx2x_update_rx_prod(%struct.bnx2x*, %struct.bnx2x_fastpath*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
