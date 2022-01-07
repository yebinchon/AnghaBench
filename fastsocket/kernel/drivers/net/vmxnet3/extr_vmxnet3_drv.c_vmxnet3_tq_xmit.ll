; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_tq_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_tq_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i64, i32 }
%struct.vmxnet3_tx_queue = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_12__, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, %union.Vmxnet3_GenericDesc*, i32 }
%union.Vmxnet3_GenericDesc = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.vmxnet3_adapter = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.net_device = type { i32 }
%struct.vmxnet3_tx_ctx = type { i32, i32, i64, i64, i64, %union.Vmxnet3_GenericDesc*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8** }
%struct.TYPE_13__ = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@VMXNET3_MAX_TXD_PER_PKT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"tx queue stopped on %s, next2comp %u next2fill %u\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@VMXNET3_MAX_TX_BUF_SIZE = common dso_local global i64 0, align 8
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@VMXNET3_MAX_CSUM_OFFSET = common dso_local global i64 0, align 8
@VMXNET3_TXD_CQ = common dso_local global i32 0, align 4
@VMXNET3_TXD_EOP = common dso_local global i32 0, align 4
@VMXNET3_OM_TSO = common dso_local global i64 0, align 8
@VMXNET3_OM_CSUM = common dso_local global i64 0, align 8
@VMXNET3_TXD_GEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"txd[%u]: SOP 0x%Lx 0x%x 0x%x\0A\00", align 1
@VMXNET3_REG_TXPROD = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.vmxnet3_tx_queue*, %struct.vmxnet3_adapter*, %struct.net_device*)* @vmxnet3_tq_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_tq_xmit(%struct.sk_buff* %0, %struct.vmxnet3_tx_queue* %1, %struct.vmxnet3_adapter* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.vmxnet3_tx_queue*, align 8
  %8 = alloca %struct.vmxnet3_adapter*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.vmxnet3_tx_ctx, align 8
  %14 = alloca %union.Vmxnet3_GenericDesc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.vmxnet3_tx_queue* %1, %struct.vmxnet3_tx_queue** %7, align 8
  store %struct.vmxnet3_adapter* %2, %struct.vmxnet3_adapter** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i64 @txd_estimate(%struct.sk_buff* %15)
  store i64 %16, i64* %11, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @ETH_P_IP, align 4
  %21 = call i64 @cpu_to_be16(i32 %20)
  %22 = icmp eq i64 %19, %21
  %23 = zext i1 %22 to i32
  %24 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call %struct.TYPE_13__* @skb_shinfo(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call i64 @skb_header_cloned(%struct.sk_buff* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call i64 @pskb_expand_head(%struct.sk_buff* %38, i32 0, i32 0, i32 %39)
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %47 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %401

51:                                               ; preds = %37
  %52 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %53 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %33
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = call i32 @vmxnet3_prepare_tso(%struct.sk_buff* %58, %struct.vmxnet3_tx_ctx* %13)
  br label %88

60:                                               ; preds = %4
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* @VMXNET3_MAX_TXD_PER_PKT, align 8
  %63 = icmp sgt i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %60
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = call i64 @skb_linearize(%struct.sk_buff* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %73 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %401

77:                                               ; preds = %67
  %78 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %79 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = call i32 @skb_headlen(%struct.sk_buff* %83)
  %85 = call i64 @VMXNET3_TXD_NEEDED(i32 %84)
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %11, align 8
  br label %87

87:                                               ; preds = %77, %60
  br label %88

88:                                               ; preds = %87, %57
  %89 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %90 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %89, i32 0, i32 2
  %91 = load i64, i64* %12, align 8
  %92 = call i32 @spin_lock_irqsave(i32* %90, i64 %91)
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %95 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %94, i32 0, i32 3
  %96 = call i64 @vmxnet3_cmd_ring_desc_avail(%struct.TYPE_12__* %95)
  %97 = icmp sgt i64 %93, %96
  br i1 %97, label %98, label %130

98:                                               ; preds = %88
  %99 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %100 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %105 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %108 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %107, i32 0, i32 0
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %114 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %118 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (%struct.TYPE_14__*, i8*, i64, i32, i32, ...) @netdev_dbg(%struct.TYPE_14__* %106, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %112, i32 %116, i32 %120)
  %122 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %123 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %124 = call i32 @vmxnet3_tq_stop(%struct.vmxnet3_tx_queue* %122, %struct.vmxnet3_adapter* %123)
  %125 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %126 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %125, i32 0, i32 2
  %127 = load i64, i64* %12, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  %129 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %129, i32* %5, align 4
  br label %410

130:                                              ; preds = %88
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %133 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %134 = call i32 @vmxnet3_parse_and_copy_hdr(%struct.sk_buff* %131, %struct.vmxnet3_tx_queue* %132, %struct.vmxnet3_tx_ctx* %13, %struct.vmxnet3_adapter* %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %186

137:                                              ; preds = %130
  %138 = load i32, i32* %10, align 4
  %139 = icmp sle i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br label %144

144:                                              ; preds = %140, %137
  %145 = phi i1 [ false, %137 ], [ %143, %140 ]
  %146 = zext i1 %145 to i32
  %147 = call i32 @BUG_ON(i32 %146)
  %148 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %153, %155
  %157 = load i64, i64* @VMXNET3_MAX_TX_BUF_SIZE, align 8
  %158 = icmp sgt i64 %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i64 @unlikely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %151
  br label %390

163:                                              ; preds = %151
  br label %185

164:                                              ; preds = %144
  %165 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %184

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %172, %175
  %177 = load i64, i64* @VMXNET3_MAX_CSUM_OFFSET, align 8
  %178 = icmp sgt i64 %176, %177
  %179 = zext i1 %178 to i32
  %180 = call i64 @unlikely(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %170
  br label %390

183:                                              ; preds = %170
  br label %184

184:                                              ; preds = %183, %164
  br label %185

185:                                              ; preds = %184, %163
  br label %192

186:                                              ; preds = %130
  %187 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %188 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 4
  br label %396

192:                                              ; preds = %185
  %193 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %194 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %195 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %196 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %199 = call i32 @vmxnet3_map_pkt(%struct.sk_buff* %193, %struct.vmxnet3_tx_ctx* %13, %struct.vmxnet3_tx_queue* %194, i32 %197, %struct.vmxnet3_adapter* %198)
  %200 = load i32, i32* @VMXNET3_TXD_CQ, align 4
  %201 = load i32, i32* @VMXNET3_TXD_EOP, align 4
  %202 = or i32 %200, %201
  %203 = call i8* @cpu_to_le32(i32 %202)
  %204 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 6
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i8**, i8*** %206, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i64 3
  store i8* %203, i8** %208, align 8
  %209 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 5
  %210 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %209, align 8
  store %union.Vmxnet3_GenericDesc* %210, %union.Vmxnet3_GenericDesc** %14, align 8
  %211 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %256

214:                                              ; preds = %192
  %215 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 4
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %216, %218
  %220 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %221 = bitcast %union.Vmxnet3_GenericDesc* %220 to %struct.TYPE_11__*
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  store i64 %219, i64* %222, align 8
  %223 = load i64, i64* @VMXNET3_OM_TSO, align 8
  %224 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %225 = bitcast %union.Vmxnet3_GenericDesc* %224 to %struct.TYPE_11__*
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 5
  store i64 %223, i64* %226, align 8
  %227 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %230 = bitcast %union.Vmxnet3_GenericDesc* %229 to %struct.TYPE_11__*
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 1
  store i32 %228, i32* %231, align 8
  %232 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %233 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %232, i32 0, i32 4
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %237 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %241 = bitcast %union.Vmxnet3_GenericDesc* %240 to %struct.TYPE_11__*
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = sub nsw i64 %239, %243
  %245 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %244, %247
  %249 = sub nsw i64 %248, 1
  %250 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = sdiv i64 %249, %252
  %254 = trunc i64 %253 to i32
  %255 = call i32 @le32_add_cpu(i8** %235, i32 %254)
  br label %295

256:                                              ; preds = %192
  %257 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %258 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %282

262:                                              ; preds = %256
  %263 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %266 = bitcast %union.Vmxnet3_GenericDesc* %265 to %struct.TYPE_11__*
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 0
  store i64 %264, i64* %267, align 8
  %268 = load i64, i64* @VMXNET3_OM_CSUM, align 8
  %269 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %270 = bitcast %union.Vmxnet3_GenericDesc* %269 to %struct.TYPE_11__*
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 5
  store i64 %268, i64* %271, align 8
  %272 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 3
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %275 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = add nsw i64 %273, %276
  %278 = trunc i64 %277 to i32
  %279 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %280 = bitcast %union.Vmxnet3_GenericDesc* %279 to %struct.TYPE_11__*
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 1
  store i32 %278, i32* %281, align 8
  br label %289

282:                                              ; preds = %256
  %283 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %284 = bitcast %union.Vmxnet3_GenericDesc* %283 to %struct.TYPE_11__*
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 5
  store i64 0, i64* %285, align 8
  %286 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %287 = bitcast %union.Vmxnet3_GenericDesc* %286 to %struct.TYPE_11__*
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 1
  store i32 0, i32* %288, align 8
  br label %289

289:                                              ; preds = %282, %262
  %290 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %291 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %290, i32 0, i32 4
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 0
  %294 = call i32 @le32_add_cpu(i8** %293, i32 1)
  br label %295

295:                                              ; preds = %289, %214
  %296 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %297 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %308

299:                                              ; preds = %295
  %300 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %301 = bitcast %union.Vmxnet3_GenericDesc* %300 to %struct.TYPE_11__*
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 2
  store i32 1, i32* %302, align 4
  %303 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %304 = call i32 @vlan_tx_tag_get(%struct.sk_buff* %303)
  %305 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %306 = bitcast %union.Vmxnet3_GenericDesc* %305 to %struct.TYPE_11__*
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 4
  store i32 %304, i32* %307, align 4
  br label %308

308:                                              ; preds = %299, %295
  %309 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %310 = bitcast %union.Vmxnet3_GenericDesc* %309 to i8***
  %311 = load i8**, i8*** %310, align 8
  %312 = getelementptr inbounds i8*, i8** %311, i64 2
  %313 = load i8*, i8** %312, align 8
  %314 = call i32 @le32_to_cpu(i8* %313)
  %315 = load i32, i32* @VMXNET3_TXD_GEN, align 4
  %316 = xor i32 %314, %315
  %317 = call i8* @cpu_to_le32(i32 %316)
  %318 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %319 = bitcast %union.Vmxnet3_GenericDesc* %318 to i8***
  %320 = load i8**, i8*** %319, align 8
  %321 = getelementptr inbounds i8*, i8** %320, i64 2
  store i8* %317, i8** %321, align 8
  %322 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %323 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %322, i32 0, i32 0
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %323, align 8
  %325 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %13, i32 0, i32 5
  %326 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %325, align 8
  %327 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %328 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %327, i32 0, i32 3
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 1
  %330 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %329, align 8
  %331 = ptrtoint %union.Vmxnet3_GenericDesc* %326 to i64
  %332 = ptrtoint %union.Vmxnet3_GenericDesc* %330 to i64
  %333 = sub i64 %331, %332
  %334 = sdiv exact i64 %333, 32
  %335 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %336 = bitcast %union.Vmxnet3_GenericDesc* %335 to %struct.TYPE_11__*
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @le64_to_cpu(i32 %338)
  %340 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %341 = bitcast %union.Vmxnet3_GenericDesc* %340 to i8***
  %342 = load i8**, i8*** %341, align 8
  %343 = getelementptr inbounds i8*, i8** %342, i64 2
  %344 = load i8*, i8** %343, align 8
  %345 = call i32 @le32_to_cpu(i8* %344)
  %346 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %347 = bitcast %union.Vmxnet3_GenericDesc* %346 to i8***
  %348 = load i8**, i8*** %347, align 8
  %349 = getelementptr inbounds i8*, i8** %348, i64 3
  %350 = load i8*, i8** %349, align 8
  %351 = call i32 @le32_to_cpu(i8* %350)
  %352 = call i32 (%struct.TYPE_14__*, i8*, i64, i32, i32, ...) @netdev_dbg(%struct.TYPE_14__* %324, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %334, i32 %339, i32 %345, i32 %351)
  %353 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %354 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %353, i32 0, i32 2
  %355 = load i64, i64* %12, align 8
  %356 = call i32 @spin_unlock_irqrestore(i32* %354, i64 %355)
  %357 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %358 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %357, i32 0, i32 4
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 0
  %361 = load i8*, i8** %360, align 8
  %362 = call i32 @le32_to_cpu(i8* %361)
  %363 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %364 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %363, i32 0, i32 4
  %365 = load %struct.TYPE_10__*, %struct.TYPE_10__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 1
  %367 = load i8*, i8** %366, align 8
  %368 = call i32 @le32_to_cpu(i8* %367)
  %369 = icmp sge i32 %362, %368
  br i1 %369, label %370, label %388

370:                                              ; preds = %308
  %371 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %372 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %371, i32 0, i32 4
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 0
  store i8* null, i8** %374, align 8
  %375 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %376 = load i64, i64* @VMXNET3_REG_TXPROD, align 8
  %377 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %378 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = mul nsw i32 %379, 8
  %381 = sext i32 %380 to i64
  %382 = add nsw i64 %376, %381
  %383 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %384 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %383, i32 0, i32 3
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @VMXNET3_WRITE_BAR0_REG(%struct.vmxnet3_adapter* %375, i64 %382, i32 %386)
  br label %388

388:                                              ; preds = %370, %308
  %389 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %389, i32* %5, align 4
  br label %410

390:                                              ; preds = %182, %162
  %391 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %392 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %393, align 4
  br label %396

396:                                              ; preds = %390, %186
  %397 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %398 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %397, i32 0, i32 2
  %399 = load i64, i64* %12, align 8
  %400 = call i32 @spin_unlock_irqrestore(i32* %398, i64 %399)
  br label %401

401:                                              ; preds = %396, %71, %45
  %402 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %403 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %404, align 4
  %407 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %408 = call i32 @dev_kfree_skb(%struct.sk_buff* %407)
  %409 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %409, i32* %5, align 4
  br label %410

410:                                              ; preds = %401, %388, %98
  %411 = load i32, i32* %5, align 4
  ret i32 %411
}

declare dso_local i64 @txd_estimate(%struct.sk_buff*) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local %struct.TYPE_13__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_header_cloned(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @vmxnet3_prepare_tso(%struct.sk_buff*, %struct.vmxnet3_tx_ctx*) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i64 @VMXNET3_TXD_NEEDED(i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vmxnet3_cmd_ring_desc_avail(%struct.TYPE_12__*) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_14__*, i8*, i64, i32, i32, ...) #1

declare dso_local i32 @vmxnet3_tq_stop(%struct.vmxnet3_tx_queue*, %struct.vmxnet3_adapter*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vmxnet3_parse_and_copy_hdr(%struct.sk_buff*, %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_adapter*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vmxnet3_map_pkt(%struct.sk_buff*, %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_queue*, i32, %struct.vmxnet3_adapter*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le32_add_cpu(i8**, i32) #1

declare dso_local i64 @vlan_tx_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @vlan_tx_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @VMXNET3_WRITE_BAR0_REG(%struct.vmxnet3_adapter*, i64, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
