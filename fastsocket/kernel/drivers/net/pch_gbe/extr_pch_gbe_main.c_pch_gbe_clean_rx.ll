; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_clean_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_clean_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { i32, %struct.TYPE_2__, %struct.pci_dev*, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.pch_gbe_rx_ring = type { i32, i32, %struct.pch_gbe_buffer* }
%struct.pch_gbe_buffer = type { i32, i32, i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32, i32 }
%struct.pch_gbe_rx_desc = type { i64, i32, i32, i32 }

@DSC_INIT16 = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"RxDecNo = 0x%04x  Status[DMA:0x%02x GBE:0x%04x TCP:0x%08x]  BufInf = 0x%p\0A\00", align 1
@PCH_GBE_RXD_GMAC_STAT_NOTOCTAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Receive Not Octal Error\0A\00", align 1
@PCH_GBE_RXD_GMAC_STAT_NBLERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Receive Nibble Error\0A\00", align 1
@PCH_GBE_RXD_GMAC_STAT_CRCERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Receive CRC Error\0A\00", align 1
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@PCH_GBE_RXD_GMAC_STAT_MARMLT = common dso_local global i32 0, align 4
@PCH_GBE_RXD_ACC_STAT_TCPIPOK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Receive skb->ip_summed: %d length: %d\0A\00", align 1
@PCH_GBE_RX_BUFFER_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pch_gbe_adapter*, %struct.pch_gbe_rx_ring*, i32*, i32)* @pch_gbe_clean_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_clean_rx(%struct.pch_gbe_adapter* %0, %struct.pch_gbe_rx_ring* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.pch_gbe_adapter*, align 8
  %6 = alloca %struct.pch_gbe_rx_ring*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.pch_gbe_buffer*, align 8
  %12 = alloca %struct.pch_gbe_rx_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %5, align 8
  store %struct.pch_gbe_rx_ring* %1, %struct.pch_gbe_rx_ring** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %21, i32 0, i32 3
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %9, align 8
  %24 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %24, i32 0, i32 2
  %26 = load %struct.pci_dev*, %struct.pci_dev** %25, align 8
  store %struct.pci_dev* %26, %struct.pci_dev** %10, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %27 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %28 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %14, align 4
  br label %30

30:                                               ; preds = %234, %4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %235

35:                                               ; preds = %30
  %36 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %37 = load i32, i32* %14, align 4
  %38 = bitcast %struct.pch_gbe_rx_ring* %36 to { i64, %struct.pch_gbe_buffer* }*
  %39 = getelementptr inbounds { i64, %struct.pch_gbe_buffer* }, { i64, %struct.pch_gbe_buffer* }* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds { i64, %struct.pch_gbe_buffer* }, { i64, %struct.pch_gbe_buffer* }* %38, i32 0, i32 1
  %42 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %41, align 8
  %43 = call %struct.pch_gbe_rx_desc* @PCH_GBE_RX_DESC(i64 %40, %struct.pch_gbe_buffer* %42, i32 %37)
  store %struct.pch_gbe_rx_desc* %43, %struct.pch_gbe_rx_desc** %12, align 8
  %44 = load %struct.pch_gbe_rx_desc*, %struct.pch_gbe_rx_desc** %12, align 8
  %45 = getelementptr inbounds %struct.pch_gbe_rx_desc, %struct.pch_gbe_rx_desc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DSC_INIT16, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %235

50:                                               ; preds = %35
  store i32 1, i32* %16, align 4
  %51 = load i32, i32* %15, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %15, align 4
  %53 = load %struct.pch_gbe_rx_desc*, %struct.pch_gbe_rx_desc** %12, align 8
  %54 = getelementptr inbounds %struct.pch_gbe_rx_desc, %struct.pch_gbe_rx_desc* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %18, align 4
  %56 = load %struct.pch_gbe_rx_desc*, %struct.pch_gbe_rx_desc** %12, align 8
  %57 = getelementptr inbounds %struct.pch_gbe_rx_desc, %struct.pch_gbe_rx_desc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %19, align 4
  %60 = load %struct.pch_gbe_rx_desc*, %struct.pch_gbe_rx_desc** %12, align 8
  %61 = getelementptr inbounds %struct.pch_gbe_rx_desc, %struct.pch_gbe_rx_desc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %20, align 4
  %63 = load i64, i64* @DSC_INIT16, align 8
  %64 = load %struct.pch_gbe_rx_desc*, %struct.pch_gbe_rx_desc** %12, align 8
  %65 = getelementptr inbounds %struct.pch_gbe_rx_desc, %struct.pch_gbe_rx_desc* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %67 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %66, i32 0, i32 2
  %68 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %68, i64 %70
  store %struct.pch_gbe_buffer* %71, %struct.pch_gbe_buffer** %11, align 8
  %72 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %73 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %72, i32 0, i32 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %73, align 8
  store %struct.sk_buff* %74, %struct.sk_buff** %17, align 8
  %75 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %76 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %75, i32 0, i32 4
  store %struct.sk_buff* null, %struct.sk_buff** %76, align 8
  %77 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 0
  %79 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %80 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %83 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %86 = call i32 @dma_unmap_single(i32* %78, i32 %81, i32 %84, i32 %85)
  %87 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %88 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %20, align 4
  %93 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %94 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90, i32 %91, i32 %92, %struct.pch_gbe_buffer* %93)
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* @PCH_GBE_RXD_GMAC_STAT_NOTOCTAL, align 4
  %97 = and i32 %95, %96
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %50
  %101 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %102 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %214

107:                                              ; preds = %50
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* @PCH_GBE_RXD_GMAC_STAT_NBLERR, align 4
  %110 = and i32 %108, %109
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %115 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %213

120:                                              ; preds = %107
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* @PCH_GBE_RXD_GMAC_STAT_CRCERR, align 4
  %123 = and i32 %121, %122
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %128 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %212

133:                                              ; preds = %120
  %134 = load %struct.pch_gbe_rx_desc*, %struct.pch_gbe_rx_desc** %12, align 8
  %135 = getelementptr inbounds %struct.pch_gbe_rx_desc, %struct.pch_gbe_rx_desc* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %136, 3
  %138 = load i32, i32* @ETH_FCS_LEN, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %13, align 4
  %140 = load %struct.pch_gbe_rx_desc*, %struct.pch_gbe_rx_desc** %12, align 8
  %141 = getelementptr inbounds %struct.pch_gbe_rx_desc, %struct.pch_gbe_rx_desc* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 2
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %133
  %146 = load i32, i32* %13, align 4
  %147 = sub nsw i32 %146, 4
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %145, %133
  %149 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %153 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @memcpy(i32 %151, i32 %154, i32 %155)
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %159 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %157
  store i32 %162, i32* %160, align 4
  %163 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %164 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* @PCH_GBE_RXD_GMAC_STAT_MARMLT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %148
  %173 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %174 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %172, %148
  %179 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @skb_put(%struct.sk_buff* %179, i32 %180)
  %182 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %183 = load %struct.net_device*, %struct.net_device** %9, align 8
  %184 = call i32 @eth_type_trans(%struct.sk_buff* %182, %struct.net_device* %183)
  %185 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %186 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* %20, align 4
  %188 = load i32, i32* @PCH_GBE_RXD_ACC_STAT_TCPIPOK, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %178
  %192 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %193 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 4
  br label %199

195:                                              ; preds = %178
  %196 = load i32, i32* @CHECKSUM_NONE, align 4
  %197 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %198 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %195, %191
  %200 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %201 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %200, i32 0, i32 0
  %202 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %203 = call i32 @napi_gro_receive(i32* %201, %struct.sk_buff* %202)
  %204 = load i32*, i32** %7, align 8
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4
  %207 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %208 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %13, align 4
  %211 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %199, %126
  br label %213

213:                                              ; preds = %212, %113
  br label %214

214:                                              ; preds = %213, %100
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* @PCH_GBE_RX_BUFFER_WRITE, align 4
  %217 = icmp uge i32 %215, %216
  %218 = zext i1 %217 to i32
  %219 = call i64 @unlikely(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %214
  %222 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %223 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %224 = load i32, i32* %15, align 4
  %225 = call i32 @pch_gbe_alloc_rx_buffers(%struct.pch_gbe_adapter* %222, %struct.pch_gbe_rx_ring* %223, i32 %224)
  store i32 0, i32* %15, align 4
  br label %226

226:                                              ; preds = %221, %214
  %227 = load i32, i32* %14, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %14, align 4
  %229 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %230 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %228, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %226
  store i32 0, i32* %14, align 4
  br label %234

234:                                              ; preds = %233, %226
  br label %30

235:                                              ; preds = %49, %30
  %236 = load i32, i32* %14, align 4
  %237 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %238 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 8
  %239 = load i32, i32* %15, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %235
  %242 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %243 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %244 = load i32, i32* %15, align 4
  %245 = call i32 @pch_gbe_alloc_rx_buffers(%struct.pch_gbe_adapter* %242, %struct.pch_gbe_rx_ring* %243, i32 %244)
  br label %246

246:                                              ; preds = %241, %235
  %247 = load i32, i32* %16, align 4
  ret i32 %247
}

declare dso_local %struct.pch_gbe_rx_desc* @PCH_GBE_RX_DESC(i64, %struct.pch_gbe_buffer*, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @pch_gbe_alloc_rx_buffers(%struct.pch_gbe_adapter*, %struct.pch_gbe_rx_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
