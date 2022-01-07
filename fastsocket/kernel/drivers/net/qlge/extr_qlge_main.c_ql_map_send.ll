; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_map_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_map_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32 }
%struct.ob_mac_iocb_req = type { %struct.tx_buf_desc* }
%struct.tx_buf_desc = type { i8*, i8* }
%struct.sk_buff = type { i32* }
%struct.tx_ring_desc = type { i32, i32*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }

@tx_queued = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"frag_cnt = %d.\0A\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"PCI mapping failed with error: %d\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"PCI mapping outbound address list with error: %d\0A\00", align 1
@TX_DESC_C = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"PCI mapping frags failed with error: %d.\0A\00", align 1
@TX_DESC_E = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, %struct.ob_mac_iocb_req*, %struct.sk_buff*, %struct.tx_ring_desc*)* @ql_map_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_map_send(%struct.ql_adapter* %0, %struct.ob_mac_iocb_req* %1, %struct.sk_buff* %2, %struct.tx_ring_desc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ql_adapter*, align 8
  %7 = alloca %struct.ob_mac_iocb_req*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tx_ring_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tx_buf_desc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_3__*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %6, align 8
  store %struct.ob_mac_iocb_req* %1, %struct.ob_mac_iocb_req** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.tx_ring_desc* %3, %struct.tx_ring_desc** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = call i32 @skb_headlen(%struct.sk_buff* %18)
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.ob_mac_iocb_req*, %struct.ob_mac_iocb_req** %7, align 8
  %21 = getelementptr inbounds %struct.ob_mac_iocb_req, %struct.ob_mac_iocb_req* %20, i32 0, i32 0
  %22 = load %struct.tx_buf_desc*, %struct.tx_buf_desc** %21, align 8
  store %struct.tx_buf_desc* %22, %struct.tx_buf_desc** %15, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %4
  %30 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %31 = load i32, i32* @tx_queued, align 4
  %32 = load i32, i32* @KERN_DEBUG, align 4
  %33 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %34 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %16, align 4
  %37 = call i32 @netif_printk(%struct.ql_adapter* %30, i32 %31, i32 %32, i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %29, %4
  %39 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %40 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %47 = call i32 @pci_map_single(i32 %41, i32* %44, i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %49 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @pci_dma_mapping_error(i32 %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %38
  %56 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %57 = load i32, i32* @tx_queued, align 4
  %58 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %59 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @netif_err(%struct.ql_adapter* %56, i32 %57, i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %63, i32* %5, align 4
  br label %260

64:                                               ; preds = %38
  %65 = load i32, i32* %10, align 4
  %66 = call i8* @cpu_to_le32(i32 %65)
  %67 = load %struct.tx_buf_desc*, %struct.tx_buf_desc** %15, align 8
  %68 = getelementptr inbounds %struct.tx_buf_desc, %struct.tx_buf_desc* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i8* @cpu_to_le64(i32 %69)
  %71 = load %struct.tx_buf_desc*, %struct.tx_buf_desc** %15, align 8
  %72 = getelementptr inbounds %struct.tx_buf_desc, %struct.tx_buf_desc* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %9, align 8
  %74 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* @mapaddr, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @pci_unmap_addr_set(i32* %78, i32 %79, i32 %80)
  %82 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %9, align 8
  %83 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* @maplen, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @pci_unmap_len_set(i32* %87, i32 %88, i32 %89)
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %93

93:                                               ; preds = %235, %64
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %240

97:                                               ; preds = %93
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  store %struct.TYPE_3__* %104, %struct.TYPE_3__** %17, align 8
  %105 = load %struct.tx_buf_desc*, %struct.tx_buf_desc** %15, align 8
  %106 = getelementptr inbounds %struct.tx_buf_desc, %struct.tx_buf_desc* %105, i32 1
  store %struct.tx_buf_desc* %106, %struct.tx_buf_desc** %15, align 8
  %107 = load i32, i32* %12, align 4
  %108 = icmp eq i32 %107, 6
  br i1 %108, label %109, label %174

109:                                              ; preds = %97
  %110 = load i32, i32* %16, align 4
  %111 = icmp sgt i32 %110, 7
  br i1 %111, label %112, label %174

112:                                              ; preds = %109
  %113 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %114 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %9, align 8
  %117 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %116, i32 0, i32 2
  %118 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %119 = call i32 @pci_map_single(i32 %115, i32* %117, i32 4, i32 %118)
  store i32 %119, i32* %11, align 4
  %120 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %121 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @pci_dma_mapping_error(i32 %122, i32 %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %112
  %128 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %129 = load i32, i32* @tx_queued, align 4
  %130 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %131 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @netif_err(%struct.ql_adapter* %128, i32 %129, i32 %132, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  br label %254

135:                                              ; preds = %112
  %136 = load i32, i32* %11, align 4
  %137 = call i8* @cpu_to_le64(i32 %136)
  %138 = load %struct.tx_buf_desc*, %struct.tx_buf_desc** %15, align 8
  %139 = getelementptr inbounds %struct.tx_buf_desc, %struct.tx_buf_desc* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %12, align 4
  %142 = sub nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = mul i64 16, %143
  %145 = load i32, i32* @TX_DESC_C, align 4
  %146 = sext i32 %145 to i64
  %147 = or i64 %144, %146
  %148 = trunc i64 %147 to i32
  %149 = call i8* @cpu_to_le32(i32 %148)
  %150 = load %struct.tx_buf_desc*, %struct.tx_buf_desc** %15, align 8
  %151 = getelementptr inbounds %struct.tx_buf_desc, %struct.tx_buf_desc* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  %152 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %9, align 8
  %153 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* @mapaddr, align 4
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @pci_unmap_addr_set(i32* %157, i32 %158, i32 %159)
  %161 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %9, align 8
  %162 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* @maplen, align 4
  %168 = call i32 @pci_unmap_len_set(i32* %166, i32 %167, i32 4)
  %169 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %9, align 8
  %170 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %169, i32 0, i32 2
  %171 = bitcast i32* %170 to %struct.tx_buf_desc*
  store %struct.tx_buf_desc* %171, %struct.tx_buf_desc** %15, align 8
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %14, align 4
  br label %174

174:                                              ; preds = %135, %109, %97
  %175 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %176 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %188 = call i32 @pci_map_page(i32 %177, i32 %180, i32 %183, i32 %186, i32 %187)
  store i32 %188, i32* %11, align 4
  %189 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %190 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @pci_dma_mapping_error(i32 %191, i32 %192)
  store i32 %193, i32* %13, align 4
  %194 = load i32, i32* %13, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %174
  %197 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %198 = load i32, i32* @tx_queued, align 4
  %199 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %200 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @netif_err(%struct.ql_adapter* %197, i32 %198, i32 %201, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %202)
  br label %254

204:                                              ; preds = %174
  %205 = load i32, i32* %11, align 4
  %206 = call i8* @cpu_to_le64(i32 %205)
  %207 = load %struct.tx_buf_desc*, %struct.tx_buf_desc** %15, align 8
  %208 = getelementptr inbounds %struct.tx_buf_desc, %struct.tx_buf_desc* %207, i32 0, i32 1
  store i8* %206, i8** %208, align 8
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i8* @cpu_to_le32(i32 %211)
  %213 = load %struct.tx_buf_desc*, %struct.tx_buf_desc** %15, align 8
  %214 = getelementptr inbounds %struct.tx_buf_desc, %struct.tx_buf_desc* %213, i32 0, i32 0
  store i8* %212, i8** %214, align 8
  %215 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %9, align 8
  %216 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %14, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* @mapaddr, align 4
  %222 = load i32, i32* %11, align 4
  %223 = call i32 @pci_unmap_addr_set(i32* %220, i32 %221, i32 %222)
  %224 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %9, align 8
  %225 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %14, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* @maplen, align 4
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @pci_unmap_len_set(i32* %229, i32 %230, i32 %233)
  br label %235

235:                                              ; preds = %204
  %236 = load i32, i32* %12, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %12, align 4
  %238 = load i32, i32* %14, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %14, align 4
  br label %93

240:                                              ; preds = %93
  %241 = load i32, i32* %14, align 4
  %242 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %9, align 8
  %243 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  %244 = load %struct.tx_buf_desc*, %struct.tx_buf_desc** %15, align 8
  %245 = getelementptr inbounds %struct.tx_buf_desc, %struct.tx_buf_desc* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @le32_to_cpu(i8* %246)
  %248 = load i32, i32* @TX_DESC_E, align 4
  %249 = or i32 %247, %248
  %250 = call i8* @cpu_to_le32(i32 %249)
  %251 = load %struct.tx_buf_desc*, %struct.tx_buf_desc** %15, align 8
  %252 = getelementptr inbounds %struct.tx_buf_desc, %struct.tx_buf_desc* %251, i32 0, i32 0
  store i8* %250, i8** %252, align 8
  %253 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %253, i32* %5, align 4
  br label %260

254:                                              ; preds = %196, %127
  %255 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %256 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %9, align 8
  %257 = load i32, i32* %14, align 4
  %258 = call i32 @ql_unmap_send(%struct.ql_adapter* %255, %struct.tx_ring_desc* %256, i32 %257)
  %259 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %259, i32* %5, align 4
  br label %260

260:                                              ; preds = %254, %240, %55
  %261 = load i32, i32* %5, align 4
  ret i32 %261
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32*, i32, i32) #1

declare dso_local i32 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @pci_unmap_addr_set(i32*, i32, i32) #1

declare dso_local i32 @pci_unmap_len_set(i32*, i32, i32) #1

declare dso_local i32 @pci_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @ql_unmap_send(%struct.ql_adapter*, %struct.tx_ring_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
