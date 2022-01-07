; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_map_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_map_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.vmxnet3_tx_ctx = type { i32, %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc* }
%union.Vmxnet3_GenericDesc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8* }
%struct.vmxnet3_tx_queue = type { %struct.TYPE_8__, %struct.vmxnet3_tx_buf_info*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, %union.Vmxnet3_GenericDesc* }
%struct.vmxnet3_tx_buf_info = type { i32, i32, %struct.sk_buff*, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.pci_dev = type { i32 }
%struct.vmxnet3_adapter = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.skb_frag_struct = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.skb_frag_struct* }

@VMXNET3_TXD_GEN_SHIFT = common dso_local global i32 0, align 4
@VMXNET3_MAP_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"txd[%u]: 0x%Lx 0x%x 0x%x\0A\00", align 1
@VMXNET3_MAX_TX_BUF_SIZE = common dso_local global i32 0, align 4
@VMXNET3_MAP_SINGLE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@VMXNET3_MAP_PAGE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"txd[%u]: 0x%llu %u %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_queue*, %struct.pci_dev*, %struct.vmxnet3_adapter*)* @vmxnet3_map_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_map_pkt(%struct.sk_buff* %0, %struct.vmxnet3_tx_ctx* %1, %struct.vmxnet3_tx_queue* %2, %struct.pci_dev* %3, %struct.vmxnet3_adapter* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.vmxnet3_tx_ctx*, align 8
  %8 = alloca %struct.vmxnet3_tx_queue*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.vmxnet3_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %union.Vmxnet3_GenericDesc*, align 8
  %16 = alloca %struct.vmxnet3_tx_buf_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.skb_frag_struct*, align 8
  %19 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.vmxnet3_tx_ctx* %1, %struct.vmxnet3_tx_ctx** %7, align 8
  store %struct.vmxnet3_tx_queue* %2, %struct.vmxnet3_tx_queue** %8, align 8
  store %struct.pci_dev* %3, %struct.pci_dev** %9, align 8
  store %struct.vmxnet3_adapter* %4, %struct.vmxnet3_adapter** %10, align 8
  store %struct.vmxnet3_tx_buf_info* null, %struct.vmxnet3_tx_buf_info** %16, align 8
  %20 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i32 @skb_headlen(%struct.sk_buff* %23)
  %25 = icmp sgt i32 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %29 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = xor i32 %31, 1
  %33 = load i32, i32* @VMXNET3_TXD_GEN_SHIFT, align 4
  %34 = shl i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %36 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %37, align 8
  %39 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %40 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %union.Vmxnet3_GenericDesc, %union.Vmxnet3_GenericDesc* %38, i64 %43
  %45 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %7, align 8
  %46 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %45, i32 0, i32 1
  store %union.Vmxnet3_GenericDesc* %44, %union.Vmxnet3_GenericDesc** %46, align 8
  %47 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %7, align 8
  %48 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %47, i32 0, i32 1
  %49 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %48, align 8
  store %union.Vmxnet3_GenericDesc* %49, %union.Vmxnet3_GenericDesc** %15, align 8
  %50 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %7, align 8
  %51 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %140

54:                                               ; preds = %5
  %55 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %56 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %60 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = add i64 %58, %64
  %66 = call i8* @cpu_to_le64(i64 %65)
  %67 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %7, align 8
  %68 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %67, i32 0, i32 1
  %69 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %68, align 8
  %70 = bitcast %union.Vmxnet3_GenericDesc* %69 to %struct.TYPE_7__*
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i8* %66, i8** %71, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %7, align 8
  %74 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %72, %75
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %7, align 8
  %79 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %78, i32 0, i32 1
  %80 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %79, align 8
  %81 = bitcast %union.Vmxnet3_GenericDesc* %80 to i8***
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 2
  store i8* %77, i8** %83, align 8
  %84 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %7, align 8
  %85 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %84, i32 0, i32 1
  %86 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %85, align 8
  %87 = bitcast %union.Vmxnet3_GenericDesc* %86 to i8***
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 3
  store i8* null, i8** %89, align 8
  %90 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %91 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %90, i32 0, i32 1
  %92 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %91, align 8
  %93 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %94 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %92, i64 %97
  store %struct.vmxnet3_tx_buf_info* %98, %struct.vmxnet3_tx_buf_info** %16, align 8
  %99 = load i32, i32* @VMXNET3_MAP_NONE, align 4
  %100 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %16, align 8
  %101 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %10, align 8
  %103 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %106 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %7, align 8
  %110 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %109, i32 0, i32 1
  %111 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %110, align 8
  %112 = bitcast %union.Vmxnet3_GenericDesc* %111 to %struct.TYPE_7__*
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @le64_to_cpu(i8* %114)
  %116 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %7, align 8
  %117 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %116, i32 0, i32 1
  %118 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %117, align 8
  %119 = bitcast %union.Vmxnet3_GenericDesc* %118 to i8***
  %120 = load i8**, i8*** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 2
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %7, align 8
  %124 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %123, i32 0, i32 1
  %125 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %124, align 8
  %126 = bitcast %union.Vmxnet3_GenericDesc* %125 to i8***
  %127 = load i8**, i8*** %126, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 3
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @netdev_dbg(i32 %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %115, i8* %122, i8* %129)
  %131 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %132 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %131, i32 0, i32 0
  %133 = call i32 @vmxnet3_cmd_ring_adv_next2fill(%struct.TYPE_8__* %132)
  %134 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %135 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @VMXNET3_TXD_GEN_SHIFT, align 4
  %139 = shl i32 %137, %138
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %54, %5
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %142 = call i32 @skb_headlen(%struct.sk_buff* %141)
  %143 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %7, align 8
  %144 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %142, %145
  store i32 %146, i32* %12, align 4
  %147 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %7, align 8
  %148 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  store i64 %150, i64* %13, align 8
  br label %151

151:                                              ; preds = %165, %140
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %272

154:                                              ; preds = %151
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @VMXNET3_MAX_TX_BUF_SIZE, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i32, i32* %12, align 4
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %11, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %11, align 4
  br label %165

163:                                              ; preds = %154
  %164 = load i32, i32* @VMXNET3_MAX_TX_BUF_SIZE, align 4
  store i32 %164, i32* %17, align 4
  br label %165

165:                                              ; preds = %163, %158
  %166 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %167 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %166, i32 0, i32 1
  %168 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %167, align 8
  %169 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %170 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %168, i64 %173
  store %struct.vmxnet3_tx_buf_info* %174, %struct.vmxnet3_tx_buf_info** %16, align 8
  %175 = load i32, i32* @VMXNET3_MAP_SINGLE, align 4
  %176 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %16, align 8
  %177 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %176, i32 0, i32 4
  store i32 %175, i32* %177, align 8
  %178 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %10, align 8
  %179 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %178, i32 0, i32 1
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %182 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %13, align 8
  %185 = add i64 %183, %184
  %186 = load i32, i32* %17, align 4
  %187 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %188 = call i64 @pci_map_single(%struct.TYPE_10__* %180, i64 %185, i32 %186, i32 %187)
  %189 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %16, align 8
  %190 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %189, i32 0, i32 3
  store i64 %188, i64* %190, align 8
  %191 = load i32, i32* %17, align 4
  %192 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %16, align 8
  %193 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  %194 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %195 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 2
  %197 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %196, align 8
  %198 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %199 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %union.Vmxnet3_GenericDesc, %union.Vmxnet3_GenericDesc* %197, i64 %202
  store %union.Vmxnet3_GenericDesc* %203, %union.Vmxnet3_GenericDesc** %15, align 8
  %204 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %15, align 8
  %205 = bitcast %union.Vmxnet3_GenericDesc* %204 to %struct.TYPE_7__*
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %209 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp eq i32 %207, %211
  %213 = zext i1 %212 to i32
  %214 = call i32 @BUG_ON(i32 %213)
  %215 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %16, align 8
  %216 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = call i8* @cpu_to_le64(i64 %217)
  %219 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %15, align 8
  %220 = bitcast %union.Vmxnet3_GenericDesc* %219 to %struct.TYPE_7__*
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 1
  store i8* %218, i8** %221, align 8
  %222 = load i32, i32* %11, align 4
  %223 = call i8* @cpu_to_le32(i32 %222)
  %224 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %15, align 8
  %225 = bitcast %union.Vmxnet3_GenericDesc* %224 to i8***
  %226 = load i8**, i8*** %225, align 8
  %227 = getelementptr inbounds i8*, i8** %226, i64 2
  store i8* %223, i8** %227, align 8
  %228 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %15, align 8
  %229 = bitcast %union.Vmxnet3_GenericDesc* %228 to i8***
  %230 = load i8**, i8*** %229, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i64 3
  store i8* null, i8** %231, align 8
  %232 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %10, align 8
  %233 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %236 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %15, align 8
  %240 = bitcast %union.Vmxnet3_GenericDesc* %239 to %struct.TYPE_7__*
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 1
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @le64_to_cpu(i8* %242)
  %244 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %15, align 8
  %245 = bitcast %union.Vmxnet3_GenericDesc* %244 to i8***
  %246 = load i8**, i8*** %245, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i64 2
  %248 = load i8*, i8** %247, align 8
  %249 = call i8* @le32_to_cpu(i8* %248)
  %250 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %15, align 8
  %251 = bitcast %union.Vmxnet3_GenericDesc* %250 to i8***
  %252 = load i8**, i8*** %251, align 8
  %253 = getelementptr inbounds i8*, i8** %252, i64 3
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @netdev_dbg(i32 %234, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %238, i32 %243, i8* %249, i8* %254)
  %256 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %257 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %256, i32 0, i32 0
  %258 = call i32 @vmxnet3_cmd_ring_adv_next2fill(%struct.TYPE_8__* %257)
  %259 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %260 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @VMXNET3_TXD_GEN_SHIFT, align 4
  %264 = shl i32 %262, %263
  store i32 %264, i32* %11, align 4
  %265 = load i32, i32* %17, align 4
  %266 = load i32, i32* %12, align 4
  %267 = sub nsw i32 %266, %265
  store i32 %267, i32* %12, align 4
  %268 = load i32, i32* %17, align 4
  %269 = sext i32 %268 to i64
  %270 = load i64, i64* %13, align 8
  %271 = add i64 %270, %269
  store i64 %271, i64* %13, align 8
  br label %151

272:                                              ; preds = %151
  store i32 0, i32* %14, align 4
  br label %273

273:                                              ; preds = %410, %272
  %274 = load i32, i32* %14, align 4
  %275 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %276 = call %struct.TYPE_9__* @skb_shinfo(%struct.sk_buff* %275)
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = icmp slt i32 %274, %278
  br i1 %279, label %280, label %413

280:                                              ; preds = %273
  %281 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %282 = call %struct.TYPE_9__* @skb_shinfo(%struct.sk_buff* %281)
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 1
  %284 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %283, align 8
  %285 = load i32, i32* %14, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %284, i64 %286
  store %struct.skb_frag_struct* %287, %struct.skb_frag_struct** %18, align 8
  store i64 0, i64* %13, align 8
  %288 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %18, align 8
  %289 = call i32 @skb_frag_size(%struct.skb_frag_struct* %288)
  store i32 %289, i32* %12, align 4
  br label %290

290:                                              ; preds = %313, %280
  %291 = load i32, i32* %12, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %409

293:                                              ; preds = %290
  %294 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %295 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %294, i32 0, i32 1
  %296 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %295, align 8
  %297 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %298 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %296, i64 %301
  store %struct.vmxnet3_tx_buf_info* %302, %struct.vmxnet3_tx_buf_info** %16, align 8
  %303 = load i32, i32* %12, align 4
  %304 = load i32, i32* @VMXNET3_MAX_TX_BUF_SIZE, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %311

306:                                              ; preds = %293
  %307 = load i32, i32* %12, align 4
  store i32 %307, i32* %19, align 4
  %308 = load i32, i32* %12, align 4
  %309 = load i32, i32* %11, align 4
  %310 = or i32 %309, %308
  store i32 %310, i32* %11, align 4
  br label %313

311:                                              ; preds = %293
  %312 = load i32, i32* @VMXNET3_MAX_TX_BUF_SIZE, align 4
  store i32 %312, i32* %19, align 4
  br label %313

313:                                              ; preds = %311, %306
  %314 = load i32, i32* @VMXNET3_MAP_PAGE, align 4
  %315 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %16, align 8
  %316 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %315, i32 0, i32 4
  store i32 %314, i32* %316, align 8
  %317 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %10, align 8
  %318 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %317, i32 0, i32 1
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 0
  %321 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %18, align 8
  %322 = load i64, i64* %13, align 8
  %323 = load i32, i32* %19, align 4
  %324 = load i32, i32* @DMA_TO_DEVICE, align 4
  %325 = call i64 @skb_frag_dma_map(i32* %320, %struct.skb_frag_struct* %321, i64 %322, i32 %323, i32 %324)
  %326 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %16, align 8
  %327 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %326, i32 0, i32 3
  store i64 %325, i64* %327, align 8
  %328 = load i32, i32* %19, align 4
  %329 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %16, align 8
  %330 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %329, i32 0, i32 0
  store i32 %328, i32* %330, align 8
  %331 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %332 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 2
  %334 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %333, align 8
  %335 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %336 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %union.Vmxnet3_GenericDesc, %union.Vmxnet3_GenericDesc* %334, i64 %339
  store %union.Vmxnet3_GenericDesc* %340, %union.Vmxnet3_GenericDesc** %15, align 8
  %341 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %15, align 8
  %342 = bitcast %union.Vmxnet3_GenericDesc* %341 to %struct.TYPE_7__*
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %346 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = icmp eq i32 %344, %348
  %350 = zext i1 %349 to i32
  %351 = call i32 @BUG_ON(i32 %350)
  %352 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %16, align 8
  %353 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %352, i32 0, i32 3
  %354 = load i64, i64* %353, align 8
  %355 = call i8* @cpu_to_le64(i64 %354)
  %356 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %15, align 8
  %357 = bitcast %union.Vmxnet3_GenericDesc* %356 to %struct.TYPE_7__*
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 1
  store i8* %355, i8** %358, align 8
  %359 = load i32, i32* %11, align 4
  %360 = call i8* @cpu_to_le32(i32 %359)
  %361 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %15, align 8
  %362 = bitcast %union.Vmxnet3_GenericDesc* %361 to i8***
  %363 = load i8**, i8*** %362, align 8
  %364 = getelementptr inbounds i8*, i8** %363, i64 2
  store i8* %360, i8** %364, align 8
  %365 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %15, align 8
  %366 = bitcast %union.Vmxnet3_GenericDesc* %365 to i8***
  %367 = load i8**, i8*** %366, align 8
  %368 = getelementptr inbounds i8*, i8** %367, i64 3
  store i8* null, i8** %368, align 8
  %369 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %10, align 8
  %370 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %373 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %15, align 8
  %377 = bitcast %union.Vmxnet3_GenericDesc* %376 to %struct.TYPE_7__*
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 1
  %379 = load i8*, i8** %378, align 8
  %380 = call i32 @le64_to_cpu(i8* %379)
  %381 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %15, align 8
  %382 = bitcast %union.Vmxnet3_GenericDesc* %381 to i8***
  %383 = load i8**, i8*** %382, align 8
  %384 = getelementptr inbounds i8*, i8** %383, i64 2
  %385 = load i8*, i8** %384, align 8
  %386 = call i8* @le32_to_cpu(i8* %385)
  %387 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %15, align 8
  %388 = bitcast %union.Vmxnet3_GenericDesc* %387 to i8***
  %389 = load i8**, i8*** %388, align 8
  %390 = getelementptr inbounds i8*, i8** %389, i64 3
  %391 = load i8*, i8** %390, align 8
  %392 = call i32 @netdev_dbg(i32 %371, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %375, i32 %380, i8* %386, i8* %391)
  %393 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %394 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %393, i32 0, i32 0
  %395 = call i32 @vmxnet3_cmd_ring_adv_next2fill(%struct.TYPE_8__* %394)
  %396 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %397 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @VMXNET3_TXD_GEN_SHIFT, align 4
  %401 = shl i32 %399, %400
  store i32 %401, i32* %11, align 4
  %402 = load i32, i32* %19, align 4
  %403 = load i32, i32* %12, align 4
  %404 = sub nsw i32 %403, %402
  store i32 %404, i32* %12, align 4
  %405 = load i32, i32* %19, align 4
  %406 = sext i32 %405 to i64
  %407 = load i64, i64* %13, align 8
  %408 = add i64 %407, %406
  store i64 %408, i64* %13, align 8
  br label %290

409:                                              ; preds = %290
  br label %410

410:                                              ; preds = %409
  %411 = load i32, i32* %14, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %14, align 4
  br label %273

413:                                              ; preds = %273
  %414 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %15, align 8
  %415 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %7, align 8
  %416 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %415, i32 0, i32 2
  store %union.Vmxnet3_GenericDesc* %414, %union.Vmxnet3_GenericDesc** %416, align 8
  %417 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %418 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %16, align 8
  %419 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %418, i32 0, i32 2
  store %struct.sk_buff* %417, %struct.sk_buff** %419, align 8
  %420 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %7, align 8
  %421 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %420, i32 0, i32 1
  %422 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %421, align 8
  %423 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %8, align 8
  %424 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %424, i32 0, i32 2
  %426 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %425, align 8
  %427 = ptrtoint %union.Vmxnet3_GenericDesc* %422 to i64
  %428 = ptrtoint %union.Vmxnet3_GenericDesc* %426 to i64
  %429 = sub i64 %427, %428
  %430 = sdiv exact i64 %429, 16
  %431 = trunc i64 %430 to i32
  %432 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %16, align 8
  %433 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %432, i32 0, i32 1
  store i32 %431, i32* %433, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @le64_to_cpu(i8*) #1

declare dso_local i32 @vmxnet3_cmd_ring_adv_next2fill(%struct.TYPE_8__*) #1

declare dso_local i64 @pci_map_single(%struct.TYPE_10__*, i64, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local %struct.TYPE_9__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(%struct.skb_frag_struct*) #1

declare dso_local i64 @skb_frag_dma_map(i32*, %struct.skb_frag_struct*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
