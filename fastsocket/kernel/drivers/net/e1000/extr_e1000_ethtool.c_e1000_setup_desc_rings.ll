; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_setup_desc_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_setup_desc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.pci_dev*, %struct.e1000_rx_ring, %struct.e1000_tx_ring, %struct.e1000_hw }
%struct.pci_dev = type { i32 }
%struct.e1000_rx_ring = type { i32, i32, %struct.TYPE_8__*, i64, i64, i64, i8* }
%struct.TYPE_8__ = type { i32, i8*, %struct.sk_buff* }
%struct.sk_buff = type { i32, i8* }
%struct.e1000_tx_ring = type { i32, i32, %struct.TYPE_5__*, i64, i64, i64, i8* }
%struct.TYPE_5__ = type { i32, i8*, %struct.sk_buff* }
%struct.e1000_hw = type { i32 }
%struct.e1000_tx_desc = type { %struct.TYPE_7__, %struct.TYPE_6__, i8* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.e1000_rx_desc = type { i8* }

@E1000_DEFAULT_TXD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TDBAL = common dso_local global i32 0, align 4
@TDBAH = common dso_local global i32 0, align 4
@TDLEN = common dso_local global i32 0, align 4
@TDH = common dso_local global i32 0, align 4
@TDT = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@E1000_TCTL_EN = common dso_local global i32 0, align 4
@E1000_COLLISION_THRESHOLD = common dso_local global i32 0, align 4
@E1000_CT_SHIFT = common dso_local global i32 0, align 4
@E1000_FDX_COLLISION_DISTANCE = common dso_local global i32 0, align 4
@E1000_COLD_SHIFT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@E1000_TXD_CMD_EOP = common dso_local global i32 0, align 4
@E1000_TXD_CMD_IFCS = common dso_local global i32 0, align 4
@E1000_TXD_CMD_RPS = common dso_local global i32 0, align 4
@E1000_DEFAULT_RXD = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_EN = common dso_local global i32 0, align 4
@RDBAL = common dso_local global i32 0, align 4
@RDBAH = common dso_local global i32 0, align 4
@RDLEN = common dso_local global i32 0, align 4
@RDH = common dso_local global i32 0, align 4
@RDT = common dso_local global i32 0, align 4
@E1000_RCTL_BAM = common dso_local global i32 0, align 4
@E1000_RCTL_SZ_2048 = common dso_local global i32 0, align 4
@E1000_RCTL_LBM_NO = common dso_local global i32 0, align 4
@E1000_RCTL_RDMTS_HALF = common dso_local global i32 0, align 4
@E1000_RCTL_MO_SHIFT = common dso_local global i32 0, align 4
@E1000_RXBUFFER_2048 = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*)* @e1000_setup_desc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_setup_desc_rings(%struct.e1000_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca %struct.e1000_tx_ring*, align 8
  %6 = alloca %struct.e1000_rx_ring*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.e1000_tx_desc*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.e1000_rx_desc*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  %16 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %16, i32 0, i32 3
  store %struct.e1000_hw* %17, %struct.e1000_hw** %4, align 8
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 2
  store %struct.e1000_tx_ring* %19, %struct.e1000_tx_ring** %5, align 8
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %20, i32 0, i32 1
  store %struct.e1000_rx_ring* %21, %struct.e1000_rx_ring** %6, align 8
  %22 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %22, i32 0, i32 0
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %7, align 8
  %25 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %26 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @E1000_DEFAULT_TXD, align 4
  %31 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %32 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %1
  %34 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %35 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kcalloc(i32 %36, i32 4, i32 %37)
  %39 = bitcast i8* %38 to %struct.TYPE_5__*
  %40 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %41 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %40, i32 0, i32 2
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %41, align 8
  %42 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %43 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = icmp ne %struct.TYPE_5__* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  store i32 1, i32* %10, align 4
  br label %401

47:                                               ; preds = %33
  %48 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %49 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 24
  %53 = trunc i64 %52 to i32
  %54 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %55 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %57 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ALIGN(i32 %58, i32 4096)
  %60 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %61 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %65 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %68 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %67, i32 0, i32 3
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @dma_alloc_coherent(i32* %63, i32 %66, i64* %68, i32 %69)
  %71 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %72 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %74 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %73, i32 0, i32 6
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %47
  store i32 2, i32* %10, align 4
  br label %401

78:                                               ; preds = %47
  %79 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %80 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %79, i32 0, i32 6
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %83 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @memset(i8* %81, i32 0, i32 %84)
  %86 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %87 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %86, i32 0, i32 4
  store i64 0, i64* %87, align 8
  %88 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %89 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %88, i32 0, i32 5
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* @TDBAL, align 4
  %91 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %92 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @ew32(i32 %90, i32 %94)
  %96 = load i32, i32* @TDBAH, align 4
  %97 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %98 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = ashr i32 %100, 32
  %102 = call i32 @ew32(i32 %96, i32 %101)
  %103 = load i32, i32* @TDLEN, align 4
  %104 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %105 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 24
  %109 = trunc i64 %108 to i32
  %110 = call i32 @ew32(i32 %103, i32 %109)
  %111 = load i32, i32* @TDH, align 4
  %112 = call i32 @ew32(i32 %111, i32 0)
  %113 = load i32, i32* @TDT, align 4
  %114 = call i32 @ew32(i32 %113, i32 0)
  %115 = load i32, i32* @TCTL, align 4
  %116 = load i32, i32* @E1000_TCTL_PSP, align 4
  %117 = load i32, i32* @E1000_TCTL_EN, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @E1000_COLLISION_THRESHOLD, align 4
  %120 = load i32, i32* @E1000_CT_SHIFT, align 4
  %121 = shl i32 %119, %120
  %122 = or i32 %118, %121
  %123 = load i32, i32* @E1000_FDX_COLLISION_DISTANCE, align 4
  %124 = load i32, i32* @E1000_COLD_SHIFT, align 4
  %125 = shl i32 %123, %124
  %126 = or i32 %122, %125
  %127 = call i32 @ew32(i32 %115, i32 %126)
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %215, %78
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %131 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %218

134:                                              ; preds = %128
  %135 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_tx_ring* byval(%struct.e1000_tx_ring) align 8 %135, i32 %136)
  store %struct.e1000_tx_desc* %137, %struct.e1000_tx_desc** %11, align 8
  store i32 1024, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* @GFP_KERNEL, align 4
  %140 = call %struct.sk_buff* @alloc_skb(i32 %138, i32 %139)
  store %struct.sk_buff* %140, %struct.sk_buff** %12, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %142 = icmp ne %struct.sk_buff* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %134
  store i32 3, i32* %10, align 4
  br label %401

144:                                              ; preds = %134
  %145 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @skb_put(%struct.sk_buff* %145, i32 %146)
  %148 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %149 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %150 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %149, i32 0, i32 2
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  store %struct.sk_buff* %148, %struct.sk_buff** %155, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %160 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %159, i32 0, i32 2
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  store i32 %158, i32* %165, align 8
  %166 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %167 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %166, i32 0, i32 0
  %168 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @DMA_TO_DEVICE, align 4
  %175 = call i8* @dma_map_single(i32* %167, i8* %170, i32 %173, i32 %174)
  %176 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %177 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %176, i32 0, i32 2
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  store i8* %175, i8** %182, align 8
  %183 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %184 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %183, i32 0, i32 2
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = call i8* @cpu_to_le64(i8* %190)
  %192 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %11, align 8
  %193 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %192, i32 0, i32 2
  store i8* %191, i8** %193, align 8
  %194 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %195 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @cpu_to_le32(i32 %196)
  %198 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %11, align 8
  %199 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 8
  %201 = load i32, i32* @E1000_TXD_CMD_EOP, align 4
  %202 = load i32, i32* @E1000_TXD_CMD_IFCS, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @E1000_TXD_CMD_RPS, align 4
  %205 = or i32 %203, %204
  %206 = call i32 @cpu_to_le32(i32 %205)
  %207 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %11, align 8
  %208 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %206
  store i32 %211, i32* %209, align 8
  %212 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %11, align 8
  %213 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  store i64 0, i64* %214, align 8
  br label %215

215:                                              ; preds = %144
  %216 = load i32, i32* %9, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %9, align 4
  br label %128

218:                                              ; preds = %128
  %219 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %220 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %227, label %223

223:                                              ; preds = %218
  %224 = load i32, i32* @E1000_DEFAULT_RXD, align 4
  %225 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %226 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  br label %227

227:                                              ; preds = %223, %218
  %228 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %229 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @GFP_KERNEL, align 4
  %232 = call i8* @kcalloc(i32 %230, i32 4, i32 %231)
  %233 = bitcast i8* %232 to %struct.TYPE_8__*
  %234 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %235 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %234, i32 0, i32 2
  store %struct.TYPE_8__* %233, %struct.TYPE_8__** %235, align 8
  %236 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %237 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %236, i32 0, i32 2
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %237, align 8
  %239 = icmp ne %struct.TYPE_8__* %238, null
  br i1 %239, label %241, label %240

240:                                              ; preds = %227
  store i32 4, i32* %10, align 4
  br label %401

241:                                              ; preds = %227
  %242 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %243 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = mul i64 %245, 8
  %247 = trunc i64 %246 to i32
  %248 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %249 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %248, i32 0, i32 1
  store i32 %247, i32* %249, align 4
  %250 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %251 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %250, i32 0, i32 0
  %252 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %253 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %256 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %255, i32 0, i32 3
  %257 = load i32, i32* @GFP_KERNEL, align 4
  %258 = call i8* @dma_alloc_coherent(i32* %251, i32 %254, i64* %256, i32 %257)
  %259 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %260 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %259, i32 0, i32 6
  store i8* %258, i8** %260, align 8
  %261 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %262 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %261, i32 0, i32 6
  %263 = load i8*, i8** %262, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %266, label %265

265:                                              ; preds = %241
  store i32 5, i32* %10, align 4
  br label %401

266:                                              ; preds = %241
  %267 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %268 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %267, i32 0, i32 6
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %271 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @memset(i8* %269, i32 0, i32 %272)
  %274 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %275 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %274, i32 0, i32 4
  store i64 0, i64* %275, align 8
  %276 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %277 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %276, i32 0, i32 5
  store i64 0, i64* %277, align 8
  %278 = load i32, i32* @RCTL, align 4
  %279 = call i32 @er32(i32 %278)
  store i32 %279, i32* %8, align 4
  %280 = load i32, i32* @RCTL, align 4
  %281 = load i32, i32* %8, align 4
  %282 = load i32, i32* @E1000_RCTL_EN, align 4
  %283 = xor i32 %282, -1
  %284 = and i32 %281, %283
  %285 = call i32 @ew32(i32 %280, i32 %284)
  %286 = load i32, i32* @RDBAL, align 4
  %287 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %288 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = trunc i64 %289 to i32
  %291 = call i32 @ew32(i32 %286, i32 %290)
  %292 = load i32, i32* @RDBAH, align 4
  %293 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %294 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = trunc i64 %295 to i32
  %297 = ashr i32 %296, 32
  %298 = call i32 @ew32(i32 %292, i32 %297)
  %299 = load i32, i32* @RDLEN, align 4
  %300 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %301 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @ew32(i32 %299, i32 %302)
  %304 = load i32, i32* @RDH, align 4
  %305 = call i32 @ew32(i32 %304, i32 0)
  %306 = load i32, i32* @RDT, align 4
  %307 = call i32 @ew32(i32 %306, i32 0)
  %308 = load i32, i32* @E1000_RCTL_EN, align 4
  %309 = load i32, i32* @E1000_RCTL_BAM, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* @E1000_RCTL_SZ_2048, align 4
  %312 = or i32 %310, %311
  %313 = load i32, i32* @E1000_RCTL_LBM_NO, align 4
  %314 = or i32 %312, %313
  %315 = load i32, i32* @E1000_RCTL_RDMTS_HALF, align 4
  %316 = or i32 %314, %315
  %317 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %318 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @E1000_RCTL_MO_SHIFT, align 4
  %321 = shl i32 %319, %320
  %322 = or i32 %316, %321
  store i32 %322, i32* %8, align 4
  %323 = load i32, i32* @RCTL, align 4
  %324 = load i32, i32* %8, align 4
  %325 = call i32 @ew32(i32 %323, i32 %324)
  store i32 0, i32* %9, align 4
  br label %326

326:                                              ; preds = %397, %266
  %327 = load i32, i32* %9, align 4
  %328 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %329 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = icmp slt i32 %327, %330
  br i1 %331, label %332, label %400

332:                                              ; preds = %326
  %333 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %334 = load i32, i32* %9, align 4
  %335 = call %struct.e1000_rx_desc* @E1000_RX_DESC(%struct.e1000_rx_ring* byval(%struct.e1000_rx_ring) align 8 %333, i32 %334)
  store %struct.e1000_rx_desc* %335, %struct.e1000_rx_desc** %14, align 8
  %336 = load i32, i32* @E1000_RXBUFFER_2048, align 4
  %337 = load i32, i32* @NET_IP_ALIGN, align 4
  %338 = add i32 %336, %337
  %339 = load i32, i32* @GFP_KERNEL, align 4
  %340 = call %struct.sk_buff* @alloc_skb(i32 %338, i32 %339)
  store %struct.sk_buff* %340, %struct.sk_buff** %15, align 8
  %341 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %342 = icmp ne %struct.sk_buff* %341, null
  br i1 %342, label %344, label %343

343:                                              ; preds = %332
  store i32 6, i32* %10, align 4
  br label %401

344:                                              ; preds = %332
  %345 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %346 = load i32, i32* @NET_IP_ALIGN, align 4
  %347 = call i32 @skb_reserve(%struct.sk_buff* %345, i32 %346)
  %348 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %349 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %350 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %349, i32 0, i32 2
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %350, align 8
  %352 = load i32, i32* %9, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 2
  store %struct.sk_buff* %348, %struct.sk_buff** %355, align 8
  %356 = load i32, i32* @E1000_RXBUFFER_2048, align 4
  %357 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %358 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %357, i32 0, i32 2
  %359 = load %struct.TYPE_8__*, %struct.TYPE_8__** %358, align 8
  %360 = load i32, i32* %9, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 0
  store i32 %356, i32* %363, align 8
  %364 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %365 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %364, i32 0, i32 0
  %366 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %367 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %366, i32 0, i32 1
  %368 = load i8*, i8** %367, align 8
  %369 = load i32, i32* @E1000_RXBUFFER_2048, align 4
  %370 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %371 = call i8* @dma_map_single(i32* %365, i8* %368, i32 %369, i32 %370)
  %372 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %373 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %372, i32 0, i32 2
  %374 = load %struct.TYPE_8__*, %struct.TYPE_8__** %373, align 8
  %375 = load i32, i32* %9, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 1
  store i8* %371, i8** %378, align 8
  %379 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %380 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %379, i32 0, i32 2
  %381 = load %struct.TYPE_8__*, %struct.TYPE_8__** %380, align 8
  %382 = load i32, i32* %9, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 1
  %386 = load i8*, i8** %385, align 8
  %387 = call i8* @cpu_to_le64(i8* %386)
  %388 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %14, align 8
  %389 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %388, i32 0, i32 0
  store i8* %387, i8** %389, align 8
  %390 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %391 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %390, i32 0, i32 1
  %392 = load i8*, i8** %391, align 8
  %393 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %394 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = call i32 @memset(i8* %392, i32 0, i32 %395)
  br label %397

397:                                              ; preds = %344
  %398 = load i32, i32* %9, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %9, align 4
  br label %326

400:                                              ; preds = %326
  store i32 0, i32* %2, align 4
  br label %405

401:                                              ; preds = %343, %265, %240, %143, %77, %46
  %402 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %403 = call i32 @e1000_free_desc_rings(%struct.e1000_adapter* %402)
  %404 = load i32, i32* %10, align 4
  store i32 %404, i32* %2, align 4
  br label %405

405:                                              ; preds = %401, %400
  %406 = load i32, i32* %2, align 4
  ret i32 %406
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_tx_ring* byval(%struct.e1000_tx_ring) align 8, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local %struct.e1000_rx_desc* @E1000_RX_DESC(%struct.e1000_rx_ring* byval(%struct.e1000_rx_ring) align 8, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @e1000_free_desc_rings(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
