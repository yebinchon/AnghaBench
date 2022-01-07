; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_rx_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_rx_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdx_priv = type { %struct.rxf_fifo, %struct.TYPE_5__, i32, i32, %struct.rxdb* }
%struct.rxf_fifo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.rxdb = type { i32 }
%struct.rxd_fifo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i32 }
%struct.sk_buff = type { i32, i32, i32, i64 }
%struct.rxd_desc = type { i32, i32, i32, i32 }
%struct.rx_map = type { i32, %struct.sk_buff* }

@BDX_MAX_RX_DONE = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@TXF_WPTR_WR_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"wrapped desc rptr=%d tmp_len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"rxd_err = 0x%x\0A\00", align 1
@BDX_COPYBREAK = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdx_priv*, %struct.rxd_fifo*, i32)* @bdx_rx_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_rx_receive(%struct.bdx_priv* %0, %struct.rxd_fifo* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bdx_priv*, align 8
  %6 = alloca %struct.rxd_fifo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.rxd_desc*, align 8
  %11 = alloca %struct.rx_map*, align 8
  %12 = alloca %struct.rxf_fifo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.rxdb*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.bdx_priv* %0, %struct.bdx_priv** %5, align 8
  store %struct.rxd_fifo* %1, %struct.rxd_fifo** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* @BDX_MAX_RX_DONE, align 4
  store i32 %21, i32* %16, align 4
  store %struct.rxdb* null, %struct.rxdb** %17, align 8
  %22 = load i32, i32* @ENTER, align 4
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %16, align 4
  %24 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %25 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %26 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @READ_REG(%struct.bdx_priv* %24, i32 %28)
  %30 = load i32, i32* @TXF_WPTR_WR_PTR, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %33 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %36 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %40 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %38, %42
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %3
  %47 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %48 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %46, %3
  br label %54

54:                                               ; preds = %281, %156, %53
  %55 = load i32, i32* %14, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %282

57:                                               ; preds = %54
  %58 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %59 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %63 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %61, %66
  %68 = inttoptr i64 %67 to %struct.rxd_desc*
  store %struct.rxd_desc* %68, %struct.rxd_desc** %10, align 8
  %69 = load %struct.rxd_desc*, %struct.rxd_desc** %10, align 8
  %70 = getelementptr inbounds %struct.rxd_desc, %struct.rxd_desc* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @CPU_CHIP_SWAP32(i32 %71)
  store i32 %72, i32* %18, align 4
  %73 = load %struct.rxd_desc*, %struct.rxd_desc** %10, align 8
  %74 = getelementptr inbounds %struct.rxd_desc, %struct.rxd_desc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @CPU_CHIP_SWAP16(i32 %75)
  store i32 %76, i32* %19, align 4
  %77 = load %struct.rxd_desc*, %struct.rxd_desc** %10, align 8
  %78 = getelementptr inbounds %struct.rxd_desc, %struct.rxd_desc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @CPU_CHIP_SWAP16(i32 %79)
  store i32 %80, i32* %20, align 4
  %81 = load %struct.rxd_desc*, %struct.rxd_desc** %10, align 8
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %20, align 4
  %85 = call i32 @print_rxdd(%struct.rxd_desc* %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %18, align 4
  %87 = call i32 @GET_RXD_BC(i32 %86)
  %88 = shl i32 %87, 3
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp sle i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @BDX_ASSERT(i32 %91)
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %57
  br label %282

99:                                               ; preds = %57
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %102 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, %100
  store i32 %105, i32* %103, align 4
  %106 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %107 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %111 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %109, %113
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp sge i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %151

120:                                              ; preds = %99
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %123 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %120
  %128 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %129 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %13, align 4
  %133 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %132)
  %134 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %135 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %139 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %137, %142
  %144 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %145 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @memcpy(i64 %143, i64 %147, i32 %148)
  br label %150

150:                                              ; preds = %127, %120
  br label %151

151:                                              ; preds = %150, %99
  %152 = load i32, i32* %18, align 4
  %153 = call i32 @GET_RXD_ERR(i32 %152)
  %154 = call i64 @unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %151
  %157 = load i32, i32* %18, align 4
  %158 = call i32 @GET_RXD_ERR(i32 %157)
  %159 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  %160 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %161 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  %165 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %166 = load %struct.rxd_desc*, %struct.rxd_desc** %10, align 8
  %167 = call i32 @bdx_recycle_skb(%struct.bdx_priv* %165, %struct.rxd_desc* %166)
  br label %54

168:                                              ; preds = %151
  %169 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %170 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %169, i32 0, i32 0
  store %struct.rxf_fifo* %170, %struct.rxf_fifo** %12, align 8
  %171 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %172 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %171, i32 0, i32 4
  %173 = load %struct.rxdb*, %struct.rxdb** %172, align 8
  store %struct.rxdb* %173, %struct.rxdb** %17, align 8
  %174 = load %struct.rxdb*, %struct.rxdb** %17, align 8
  %175 = load %struct.rxd_desc*, %struct.rxd_desc** %10, align 8
  %176 = getelementptr inbounds %struct.rxd_desc, %struct.rxd_desc* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call %struct.rx_map* @bdx_rxdb_addr_elem(%struct.rxdb* %174, i32 %177)
  store %struct.rx_map* %178, %struct.rx_map** %11, align 8
  %179 = load %struct.rx_map*, %struct.rx_map** %11, align 8
  %180 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %179, i32 0, i32 1
  %181 = load %struct.sk_buff*, %struct.sk_buff** %180, align 8
  store %struct.sk_buff* %181, %struct.sk_buff** %8, align 8
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* @BDX_COPYBREAK, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %220

185:                                              ; preds = %168
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* @NET_IP_ALIGN, align 8
  %189 = add nsw i64 %187, %188
  %190 = call %struct.sk_buff* @dev_alloc_skb(i64 %189)
  store %struct.sk_buff* %190, %struct.sk_buff** %9, align 8
  %191 = icmp ne %struct.sk_buff* %190, null
  br i1 %191, label %192, label %220

192:                                              ; preds = %185
  %193 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %194 = load i64, i64* @NET_IP_ALIGN, align 8
  %195 = call i32 @skb_reserve(%struct.sk_buff* %193, i64 %194)
  %196 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %197 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.rx_map*, %struct.rx_map** %11, align 8
  %200 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.rxf_fifo*, %struct.rxf_fifo** %12, align 8
  %203 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %207 = call i32 @pci_dma_sync_single_for_cpu(i32 %198, i32 %201, i32 %205, i32 %206)
  %208 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %209 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %212 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = load i32, i32* %19, align 4
  %215 = call i32 @memcpy(i64 %210, i64 %213, i32 %214)
  %216 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %217 = load %struct.rxd_desc*, %struct.rxd_desc** %10, align 8
  %218 = call i32 @bdx_recycle_skb(%struct.bdx_priv* %216, %struct.rxd_desc* %217)
  %219 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %219, %struct.sk_buff** %8, align 8
  br label %238

220:                                              ; preds = %185, %168
  %221 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %222 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.rx_map*, %struct.rx_map** %11, align 8
  %225 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.rxf_fifo*, %struct.rxf_fifo** %12, align 8
  %228 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %232 = call i32 @pci_unmap_single(i32 %223, i32 %226, i32 %230, i32 %231)
  %233 = load %struct.rxdb*, %struct.rxdb** %17, align 8
  %234 = load %struct.rxd_desc*, %struct.rxd_desc** %10, align 8
  %235 = getelementptr inbounds %struct.rxd_desc, %struct.rxd_desc* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @bdx_rxdb_free_elem(%struct.rxdb* %233, i32 %236)
  br label %238

238:                                              ; preds = %220, %192
  %239 = load i32, i32* %19, align 4
  %240 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %241 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, %239
  store i32 %244, i32* %242, align 4
  %245 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %246 = load i32, i32* %19, align 4
  %247 = call i32 @skb_put(%struct.sk_buff* %245, i32 %246)
  %248 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %249 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %252 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 8
  %253 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %254 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %255 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 8
  %256 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %257 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %258 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @eth_type_trans(%struct.sk_buff* %256, i32 %259)
  %261 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %262 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 4
  %263 = load i32, i32* %18, align 4
  %264 = call i64 @GET_RXD_PKT_ID(i32 %263)
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %238
  %267 = load i32, i32* @CHECKSUM_NONE, align 4
  %268 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %269 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 8
  br label %270

270:                                              ; preds = %266, %238
  %271 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %272 = load i32, i32* %18, align 4
  %273 = load i32, i32* %20, align 4
  %274 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %275 = call i32 @NETIF_RX_MUX(%struct.bdx_priv* %271, i32 %272, i32 %273, %struct.sk_buff* %274)
  %276 = load i32, i32* %15, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %15, align 4
  %278 = load i32, i32* %16, align 4
  %279 = icmp sge i32 %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %270
  br label %282

281:                                              ; preds = %270
  br label %54

282:                                              ; preds = %280, %98, %54
  %283 = load i32, i32* %15, align 4
  %284 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %285 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = add nsw i32 %287, %283
  store i32 %288, i32* %286, align 4
  %289 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %290 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %291 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %295 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @TXF_WPTR_WR_PTR, align 4
  %299 = and i32 %297, %298
  %300 = call i32 @WRITE_REG(%struct.bdx_priv* %289, i32 %293, i32 %299)
  %301 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %302 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %303 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %302, i32 0, i32 0
  %304 = call i32 @bdx_rx_alloc_skbs(%struct.bdx_priv* %301, %struct.rxf_fifo* %303)
  %305 = load i32, i32* %15, align 4
  %306 = call i32 @RET(i32 %305)
  %307 = load i32, i32* %4, align 4
  ret i32 %307
}

declare dso_local i32 @READ_REG(%struct.bdx_priv*, i32) #1

declare dso_local i32 @CPU_CHIP_SWAP32(i32) #1

declare dso_local i32 @CPU_CHIP_SWAP16(i32) #1

declare dso_local i32 @print_rxdd(%struct.rxd_desc*, i32, i32, i32) #1

declare dso_local i32 @GET_RXD_BC(i32) #1

declare dso_local i32 @BDX_ASSERT(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DBG(i8*, i32, ...) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @GET_RXD_ERR(i32) #1

declare dso_local i32 @bdx_recycle_skb(%struct.bdx_priv*, %struct.rxd_desc*) #1

declare dso_local %struct.rx_map* @bdx_rxdb_addr_elem(%struct.rxdb*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @bdx_rxdb_free_elem(%struct.rxdb*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i64 @GET_RXD_PKT_ID(i32) #1

declare dso_local i32 @NETIF_RX_MUX(%struct.bdx_priv*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @WRITE_REG(%struct.bdx_priv*, i32, i32) #1

declare dso_local i32 @bdx_rx_alloc_skbs(%struct.bdx_priv*, %struct.rxf_fifo*) #1

declare dso_local i32 @RET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
