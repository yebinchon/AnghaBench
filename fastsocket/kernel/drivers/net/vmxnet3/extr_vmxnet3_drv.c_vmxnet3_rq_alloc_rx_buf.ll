; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rq_alloc_rx_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rq_alloc_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_rx_queue = type { %struct.TYPE_4__, %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_rx_buf_info** }
%struct.TYPE_4__ = type { i32 }
%struct.vmxnet3_cmd_ring = type { i32, i32, i64, %union.Vmxnet3_GenericDesc* }
%union.Vmxnet3_GenericDesc = type { i32* }
%struct.vmxnet3_rx_buf_info = type { i64, i32, i64, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.vmxnet3_adapter = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@VMXNET3_RX_BUF_SKB = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@VMXNET3_RXD_BTYPE_HEAD = common dso_local global i64 0, align 8
@VMXNET3_RXD_BTYPE_SHIFT = common dso_local global i64 0, align 8
@VMXNET3_RX_BUF_PAGE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@VMXNET3_RXD_BTYPE_BODY = common dso_local global i64 0, align 8
@VMXNET3_RXD_GEN_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"alloc_rx_buf: %d allocated, next2fill %u, next2comp %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_rx_queue*, i64, i32, %struct.vmxnet3_adapter*)* @vmxnet3_rq_alloc_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_rq_alloc_rx_buf(%struct.vmxnet3_rx_queue* %0, i64 %1, i32 %2, %struct.vmxnet3_adapter* %3) #0 {
  %5 = alloca %struct.vmxnet3_rx_queue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmxnet3_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vmxnet3_rx_buf_info*, align 8
  %11 = alloca %struct.vmxnet3_cmd_ring*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.vmxnet3_rx_buf_info*, align 8
  %14 = alloca %union.Vmxnet3_GenericDesc*, align 8
  store %struct.vmxnet3_rx_queue* %0, %struct.vmxnet3_rx_queue** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.vmxnet3_adapter* %3, %struct.vmxnet3_adapter** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %5, align 8
  %16 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %15, i32 0, i32 2
  %17 = load %struct.vmxnet3_rx_buf_info**, %struct.vmxnet3_rx_buf_info*** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %17, i64 %18
  %20 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %19, align 8
  store %struct.vmxnet3_rx_buf_info* %20, %struct.vmxnet3_rx_buf_info** %10, align 8
  %21 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %5, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %21, i32 0, i32 1
  %23 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %23, i64 %24
  store %struct.vmxnet3_cmd_ring* %25, %struct.vmxnet3_cmd_ring** %11, align 8
  br label %26

26:                                               ; preds = %195, %4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %212

30:                                               ; preds = %26
  %31 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %10, align 8
  %32 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %31, i64 %35
  store %struct.vmxnet3_rx_buf_info* %36, %struct.vmxnet3_rx_buf_info** %13, align 8
  %37 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %38 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %37, i32 0, i32 3
  %39 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %38, align 8
  %40 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %41 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %union.Vmxnet3_GenericDesc, %union.Vmxnet3_GenericDesc* %39, i64 %43
  store %union.Vmxnet3_GenericDesc* %44, %union.Vmxnet3_GenericDesc** %14, align 8
  %45 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %46 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VMXNET3_RX_BUF_SKB, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %100

50:                                               ; preds = %30
  %51 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %52 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %51, i32 0, i32 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = icmp eq %struct.TYPE_6__* %53, null
  br i1 %54, label %55, label %95

55:                                               ; preds = %50
  %56 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %57 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %60 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.TYPE_6__* @__netdev_alloc_skb_ip_align(i32 %58, i32 %61, i32 %62)
  %64 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %65 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %64, i32 0, i32 4
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %65, align 8
  %66 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %67 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %66, i32 0, i32 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = icmp eq %struct.TYPE_6__* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %55
  %74 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %5, align 8
  %75 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %212

79:                                               ; preds = %55
  %80 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %81 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %84 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %83, i32 0, i32 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %89 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %92 = call i64 @pci_map_single(i32 %82, i32 %87, i32 %90, i32 %91)
  %93 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %94 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  br label %96

95:                                               ; preds = %50
  br label %96

96:                                               ; preds = %95, %79
  %97 = load i64, i64* @VMXNET3_RXD_BTYPE_HEAD, align 8
  %98 = load i64, i64* @VMXNET3_RXD_BTYPE_SHIFT, align 8
  %99 = shl i64 %97, %98
  store i64 %99, i64* %12, align 8
  br label %155

100:                                              ; preds = %30
  %101 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %102 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @VMXNET3_RX_BUF_PAGE, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %108 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @PAGE_SIZE, align 4
  %111 = icmp ne i32 %109, %110
  br label %112

112:                                              ; preds = %106, %100
  %113 = phi i1 [ true, %100 ], [ %111, %106 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @BUG_ON(i32 %114)
  %116 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %117 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %150

120:                                              ; preds = %112
  %121 = load i32, i32* @GFP_ATOMIC, align 4
  %122 = call i32* @alloc_page(i32 %121)
  %123 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %124 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %123, i32 0, i32 3
  store i32* %122, i32** %124, align 8
  %125 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %126 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = icmp eq i32* %127, null
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %120
  %133 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %5, align 8
  %134 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  br label %212

138:                                              ; preds = %120
  %139 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %140 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %143 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* @PAGE_SIZE, align 4
  %146 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %147 = call i64 @pci_map_page(i32 %141, i32* %144, i32 0, i32 %145, i32 %146)
  %148 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %149 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %148, i32 0, i32 2
  store i64 %147, i64* %149, align 8
  br label %151

150:                                              ; preds = %112
  br label %151

151:                                              ; preds = %150, %138
  %152 = load i64, i64* @VMXNET3_RXD_BTYPE_BODY, align 8
  %153 = load i64, i64* @VMXNET3_RXD_BTYPE_SHIFT, align 8
  %154 = shl i64 %152, %153
  store i64 %154, i64* %12, align 8
  br label %155

155:                                              ; preds = %151, %96
  %156 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %157 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  %160 = zext i1 %159 to i32
  %161 = call i32 @BUG_ON(i32 %160)
  %162 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %163 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @cpu_to_le64(i64 %164)
  %166 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %167 = bitcast %union.Vmxnet3_GenericDesc* %166 to %struct.TYPE_5__*
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  store i32 %165, i32* %168, align 8
  %169 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %170 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = load i32, i32* @VMXNET3_RXD_GEN_SHIFT, align 4
  %176 = shl i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = load i64, i64* %12, align 8
  %179 = or i64 %177, %178
  %180 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %13, align 8
  %181 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = or i64 %179, %183
  %185 = trunc i64 %184 to i32
  %186 = call i32 @cpu_to_le32(i32 %185)
  %187 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %188 = bitcast %union.Vmxnet3_GenericDesc* %187 to i32**
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  store i32 %186, i32* %190, align 4
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %155
  br label %212

195:                                              ; preds = %155
  %196 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %197 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @VMXNET3_RXD_GEN_SHIFT, align 4
  %200 = shl i32 %198, %199
  %201 = call i32 @cpu_to_le32(i32 %200)
  %202 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %14, align 8
  %203 = bitcast %union.Vmxnet3_GenericDesc* %202 to i32**
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 2
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %201
  store i32 %207, i32* %205, align 4
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %9, align 4
  %210 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %211 = call i32 @vmxnet3_cmd_ring_adv_next2fill(%struct.vmxnet3_cmd_ring* %210)
  br label %26

212:                                              ; preds = %194, %132, %73, %26
  %213 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %214 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %9, align 4
  %217 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %218 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %221 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @netdev_dbg(i32 %215, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %216, i32 %219, i64 %222)
  %224 = load i32, i32* %9, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %212
  %227 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %228 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = sext i32 %229 to i64
  %231 = load %struct.vmxnet3_cmd_ring*, %struct.vmxnet3_cmd_ring** %11, align 8
  %232 = getelementptr inbounds %struct.vmxnet3_cmd_ring, %struct.vmxnet3_cmd_ring* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = icmp eq i64 %230, %233
  br label %235

235:                                              ; preds = %226, %212
  %236 = phi i1 [ false, %212 ], [ %234, %226 ]
  %237 = zext i1 %236 to i32
  %238 = call i32 @BUG_ON(i32 %237)
  %239 = load i32, i32* %9, align 4
  ret i32 %239
}

declare dso_local %struct.TYPE_6__* @__netdev_alloc_skb_ip_align(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @alloc_page(i32) #1

declare dso_local i64 @pci_map_page(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @vmxnet3_cmd_ring_adv_next2fill(%struct.vmxnet3_cmd_ring*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
