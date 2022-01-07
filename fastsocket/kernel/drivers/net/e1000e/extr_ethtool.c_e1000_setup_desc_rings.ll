; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_setup_desc_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_setup_desc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.e1000_hw, %struct.pci_dev*, %struct.e1000_ring, %struct.e1000_ring }
%struct.e1000_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.e1000_ring = type { i32, i32, %struct.TYPE_8__*, i64, i64, i64, i8* }
%struct.TYPE_8__ = type { i32, i8*, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }
%struct.e1000_tx_desc = type { %struct.TYPE_10__, %struct.TYPE_9__, i8* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%union.e1000_rx_desc_extended = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@E1000_DEFAULT_TXD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@E1000_TCTL_EN = common dso_local global i32 0, align 4
@E1000_TCTL_MULR = common dso_local global i32 0, align 4
@E1000_COLLISION_THRESHOLD = common dso_local global i32 0, align 4
@E1000_CT_SHIFT = common dso_local global i32 0, align 4
@E1000_COLLISION_DISTANCE = common dso_local global i32 0, align 4
@E1000_COLD_SHIFT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@E1000_TXD_CMD_EOP = common dso_local global i32 0, align 4
@E1000_TXD_CMD_IFCS = common dso_local global i32 0, align 4
@E1000_TXD_CMD_RS = common dso_local global i32 0, align 4
@E1000_DEFAULT_RXD = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@FLAG2_NO_DISABLE_RX = common dso_local global i32 0, align 4
@E1000_RCTL_EN = common dso_local global i32 0, align 4
@E1000_RCTL_BAM = common dso_local global i32 0, align 4
@E1000_RCTL_SZ_2048 = common dso_local global i32 0, align 4
@E1000_RCTL_UPE = common dso_local global i32 0, align 4
@E1000_RCTL_MPE = common dso_local global i32 0, align 4
@E1000_RCTL_LPE = common dso_local global i32 0, align 4
@E1000_RCTL_SBP = common dso_local global i32 0, align 4
@E1000_RCTL_SECRC = common dso_local global i32 0, align 4
@E1000_RCTL_LBM_NO = common dso_local global i32 0, align 4
@E1000_RCTL_RDMTS_HALF = common dso_local global i32 0, align 4
@E1000_RCTL_MO_SHIFT = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*)* @e1000_setup_desc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_setup_desc_rings(%struct.e1000_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_ring*, align 8
  %5 = alloca %struct.e1000_ring*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.e1000_tx_desc*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %union.e1000_rx_desc_extended*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  %16 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %16, i32 0, i32 4
  store %struct.e1000_ring* %17, %struct.e1000_ring** %4, align 8
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 3
  store %struct.e1000_ring* %19, %struct.e1000_ring** %5, align 8
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %20, i32 0, i32 2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  store %struct.pci_dev* %22, %struct.pci_dev** %6, align 8
  %23 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %23, i32 0, i32 1
  store %struct.e1000_hw* %24, %struct.e1000_hw** %7, align 8
  %25 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %26 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @E1000_DEFAULT_TXD, align 4
  %31 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %32 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %1
  %34 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %35 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kcalloc(i32 %36, i32 4, i32 %37)
  %39 = bitcast i8* %38 to %struct.TYPE_8__*
  %40 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %41 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %40, i32 0, i32 2
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %41, align 8
  %42 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %43 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = icmp ne %struct.TYPE_8__* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  store i32 1, i32* %10, align 4
  br label %428

47:                                               ; preds = %33
  %48 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %49 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 24
  %53 = trunc i64 %52 to i32
  %54 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %55 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %57 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ALIGN(i32 %58, i32 4096)
  %60 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %61 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %65 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %68 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %67, i32 0, i32 3
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @dma_alloc_coherent(i32* %63, i32 %66, i64* %68, i32 %69)
  %71 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %72 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %74 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %73, i32 0, i32 6
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %47
  store i32 2, i32* %10, align 4
  br label %428

78:                                               ; preds = %47
  %79 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %80 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %79, i32 0, i32 5
  store i64 0, i64* %80, align 8
  %81 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %82 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %81, i32 0, i32 4
  store i64 0, i64* %82, align 8
  %83 = call i32 @TDBAL(i32 0)
  %84 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %85 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @ew32(i32 %83, i32 %87)
  %89 = call i32 @TDBAH(i32 0)
  %90 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %91 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = ashr i32 %93, 32
  %95 = call i32 @ew32(i32 %89, i32 %94)
  %96 = call i32 @TDLEN(i32 0)
  %97 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %98 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 24
  %102 = trunc i64 %101 to i32
  %103 = call i32 @ew32(i32 %96, i32 %102)
  %104 = call i32 @TDH(i32 0)
  %105 = call i32 @ew32(i32 %104, i32 0)
  %106 = call i32 @TDT(i32 0)
  %107 = call i32 @ew32(i32 %106, i32 0)
  %108 = load i32, i32* @TCTL, align 4
  %109 = load i32, i32* @E1000_TCTL_PSP, align 4
  %110 = load i32, i32* @E1000_TCTL_EN, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @E1000_TCTL_MULR, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @E1000_COLLISION_THRESHOLD, align 4
  %115 = load i32, i32* @E1000_CT_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = or i32 %113, %116
  %118 = load i32, i32* @E1000_COLLISION_DISTANCE, align 4
  %119 = load i32, i32* @E1000_COLD_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = or i32 %117, %120
  %122 = call i32 @ew32(i32 %108, i32 %121)
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %224, %78
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %126 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %227

129:                                              ; preds = %123
  %130 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %130, i32 %131)
  store %struct.e1000_tx_desc* %132, %struct.e1000_tx_desc** %11, align 8
  store i32 1024, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* @GFP_KERNEL, align 4
  %135 = call %struct.sk_buff* @alloc_skb(i32 %133, i32 %134)
  store %struct.sk_buff* %135, %struct.sk_buff** %12, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %137 = icmp ne %struct.sk_buff* %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %129
  store i32 3, i32* %10, align 4
  br label %428

139:                                              ; preds = %129
  %140 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @skb_put(%struct.sk_buff* %140, i32 %141)
  %143 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %144 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %145 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %144, i32 0, i32 2
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  store %struct.sk_buff* %143, %struct.sk_buff** %150, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %155 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %154, i32 0, i32 2
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  store i32 %153, i32* %160, align 8
  %161 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %162 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %161, i32 0, i32 0
  %163 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @DMA_TO_DEVICE, align 4
  %170 = call i8* @dma_map_single(i32* %162, i32 %165, i32 %168, i32 %169)
  %171 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %172 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %171, i32 0, i32 2
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  store i8* %170, i8** %177, align 8
  %178 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %179 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %178, i32 0, i32 0
  %180 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %181 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %180, i32 0, i32 2
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = call i64 @dma_mapping_error(i32* %179, i8* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %139
  store i32 4, i32* %10, align 4
  br label %428

191:                                              ; preds = %139
  %192 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %193 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %192, i32 0, i32 2
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = call i8* @cpu_to_le64(i8* %199)
  %201 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %11, align 8
  %202 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %201, i32 0, i32 2
  store i8* %200, i8** %202, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %204 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @cpu_to_le32(i32 %205)
  %207 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %11, align 8
  %208 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  store i32 %206, i32* %209, align 8
  %210 = load i32, i32* @E1000_TXD_CMD_EOP, align 4
  %211 = load i32, i32* @E1000_TXD_CMD_IFCS, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @E1000_TXD_CMD_RS, align 4
  %214 = or i32 %212, %213
  %215 = call i32 @cpu_to_le32(i32 %214)
  %216 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %11, align 8
  %217 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %215
  store i32 %220, i32* %218, align 8
  %221 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %11, align 8
  %222 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  store i64 0, i64* %223, align 8
  br label %224

224:                                              ; preds = %191
  %225 = load i32, i32* %9, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %9, align 4
  br label %123

227:                                              ; preds = %123
  %228 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %229 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %227
  %233 = load i32, i32* @E1000_DEFAULT_RXD, align 4
  %234 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %235 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 8
  br label %236

236:                                              ; preds = %232, %227
  %237 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %238 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @GFP_KERNEL, align 4
  %241 = call i8* @kcalloc(i32 %239, i32 4, i32 %240)
  %242 = bitcast i8* %241 to %struct.TYPE_8__*
  %243 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %244 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %243, i32 0, i32 2
  store %struct.TYPE_8__* %242, %struct.TYPE_8__** %244, align 8
  %245 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %246 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %245, i32 0, i32 2
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %246, align 8
  %248 = icmp ne %struct.TYPE_8__* %247, null
  br i1 %248, label %250, label %249

249:                                              ; preds = %236
  store i32 5, i32* %10, align 4
  br label %428

250:                                              ; preds = %236
  %251 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %252 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = sext i32 %253 to i64
  %255 = mul i64 %254, 8
  %256 = trunc i64 %255 to i32
  %257 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %258 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 4
  %259 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %260 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %259, i32 0, i32 0
  %261 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %262 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %265 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %264, i32 0, i32 3
  %266 = load i32, i32* @GFP_KERNEL, align 4
  %267 = call i8* @dma_alloc_coherent(i32* %260, i32 %263, i64* %265, i32 %266)
  %268 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %269 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %268, i32 0, i32 6
  store i8* %267, i8** %269, align 8
  %270 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %271 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %270, i32 0, i32 6
  %272 = load i8*, i8** %271, align 8
  %273 = icmp ne i8* %272, null
  br i1 %273, label %275, label %274

274:                                              ; preds = %250
  store i32 6, i32* %10, align 4
  br label %428

275:                                              ; preds = %250
  %276 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %277 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %276, i32 0, i32 5
  store i64 0, i64* %277, align 8
  %278 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %279 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %278, i32 0, i32 4
  store i64 0, i64* %279, align 8
  %280 = load i32, i32* @RCTL, align 4
  %281 = call i32 @er32(i32 %280)
  store i32 %281, i32* %8, align 4
  %282 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %283 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @FLAG2_NO_DISABLE_RX, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %295, label %288

288:                                              ; preds = %275
  %289 = load i32, i32* @RCTL, align 4
  %290 = load i32, i32* %8, align 4
  %291 = load i32, i32* @E1000_RCTL_EN, align 4
  %292 = xor i32 %291, -1
  %293 = and i32 %290, %292
  %294 = call i32 @ew32(i32 %289, i32 %293)
  br label %295

295:                                              ; preds = %288, %275
  %296 = call i32 @RDBAL(i32 0)
  %297 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %298 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = trunc i64 %299 to i32
  %301 = call i32 @ew32(i32 %296, i32 %300)
  %302 = call i32 @RDBAH(i32 0)
  %303 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %304 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %303, i32 0, i32 3
  %305 = load i64, i64* %304, align 8
  %306 = trunc i64 %305 to i32
  %307 = ashr i32 %306, 32
  %308 = call i32 @ew32(i32 %302, i32 %307)
  %309 = call i32 @RDLEN(i32 0)
  %310 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %311 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @ew32(i32 %309, i32 %312)
  %314 = call i32 @RDH(i32 0)
  %315 = call i32 @ew32(i32 %314, i32 0)
  %316 = call i32 @RDT(i32 0)
  %317 = call i32 @ew32(i32 %316, i32 0)
  %318 = load i32, i32* @E1000_RCTL_EN, align 4
  %319 = load i32, i32* @E1000_RCTL_BAM, align 4
  %320 = or i32 %318, %319
  %321 = load i32, i32* @E1000_RCTL_SZ_2048, align 4
  %322 = or i32 %320, %321
  %323 = load i32, i32* @E1000_RCTL_UPE, align 4
  %324 = or i32 %322, %323
  %325 = load i32, i32* @E1000_RCTL_MPE, align 4
  %326 = or i32 %324, %325
  %327 = load i32, i32* @E1000_RCTL_LPE, align 4
  %328 = or i32 %326, %327
  %329 = load i32, i32* @E1000_RCTL_SBP, align 4
  %330 = or i32 %328, %329
  %331 = load i32, i32* @E1000_RCTL_SECRC, align 4
  %332 = or i32 %330, %331
  %333 = load i32, i32* @E1000_RCTL_LBM_NO, align 4
  %334 = or i32 %332, %333
  %335 = load i32, i32* @E1000_RCTL_RDMTS_HALF, align 4
  %336 = or i32 %334, %335
  %337 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %338 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @E1000_RCTL_MO_SHIFT, align 4
  %343 = shl i32 %341, %342
  %344 = or i32 %336, %343
  store i32 %344, i32* %8, align 4
  %345 = load i32, i32* @RCTL, align 4
  %346 = load i32, i32* %8, align 4
  %347 = call i32 @ew32(i32 %345, i32 %346)
  store i32 0, i32* %9, align 4
  br label %348

348:                                              ; preds = %424, %295
  %349 = load i32, i32* %9, align 4
  %350 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %351 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = icmp slt i32 %349, %352
  br i1 %353, label %354, label %427

354:                                              ; preds = %348
  %355 = load i32, i32* @NET_IP_ALIGN, align 4
  %356 = add nsw i32 2048, %355
  %357 = load i32, i32* @GFP_KERNEL, align 4
  %358 = call %struct.sk_buff* @alloc_skb(i32 %356, i32 %357)
  store %struct.sk_buff* %358, %struct.sk_buff** %15, align 8
  %359 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %360 = icmp ne %struct.sk_buff* %359, null
  br i1 %360, label %362, label %361

361:                                              ; preds = %354
  store i32 7, i32* %10, align 4
  br label %428

362:                                              ; preds = %354
  %363 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %364 = load i32, i32* @NET_IP_ALIGN, align 4
  %365 = call i32 @skb_reserve(%struct.sk_buff* %363, i32 %364)
  %366 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %367 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %368 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %367, i32 0, i32 2
  %369 = load %struct.TYPE_8__*, %struct.TYPE_8__** %368, align 8
  %370 = load i32, i32* %9, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 2
  store %struct.sk_buff* %366, %struct.sk_buff** %373, align 8
  %374 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %375 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %374, i32 0, i32 0
  %376 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %377 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %380 = call i8* @dma_map_single(i32* %375, i32 %378, i32 2048, i32 %379)
  %381 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %382 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %381, i32 0, i32 2
  %383 = load %struct.TYPE_8__*, %struct.TYPE_8__** %382, align 8
  %384 = load i32, i32* %9, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 1
  store i8* %380, i8** %387, align 8
  %388 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %389 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %388, i32 0, i32 0
  %390 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %391 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %390, i32 0, i32 2
  %392 = load %struct.TYPE_8__*, %struct.TYPE_8__** %391, align 8
  %393 = load i32, i32* %9, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 1
  %397 = load i8*, i8** %396, align 8
  %398 = call i64 @dma_mapping_error(i32* %389, i8* %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %362
  store i32 8, i32* %10, align 4
  br label %428

401:                                              ; preds = %362
  %402 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %403 = load i32, i32* %9, align 4
  %404 = call %union.e1000_rx_desc_extended* @E1000_RX_DESC_EXT(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %402, i32 %403)
  store %union.e1000_rx_desc_extended* %404, %union.e1000_rx_desc_extended** %14, align 8
  %405 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %406 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %405, i32 0, i32 2
  %407 = load %struct.TYPE_8__*, %struct.TYPE_8__** %406, align 8
  %408 = load i32, i32* %9, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i32 0, i32 1
  %412 = load i8*, i8** %411, align 8
  %413 = call i8* @cpu_to_le64(i8* %412)
  %414 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %14, align 8
  %415 = bitcast %union.e1000_rx_desc_extended* %414 to %struct.TYPE_7__*
  %416 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i32 0, i32 0
  store i8* %413, i8** %416, align 8
  %417 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %418 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %421 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @memset(i32 %419, i32 0, i32 %422)
  br label %424

424:                                              ; preds = %401
  %425 = load i32, i32* %9, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %9, align 4
  br label %348

427:                                              ; preds = %348
  store i32 0, i32* %2, align 4
  br label %432

428:                                              ; preds = %400, %361, %274, %249, %190, %138, %77, %46
  %429 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %430 = call i32 @e1000_free_desc_rings(%struct.e1000_adapter* %429)
  %431 = load i32, i32* %10, align 4
  store i32 %431, i32* %2, align 4
  br label %432

432:                                              ; preds = %428, %427
  %433 = load i32, i32* %2, align 4
  ret i32 %433
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @TDBAL(i32) #1

declare dso_local i32 @TDBAH(i32) #1

declare dso_local i32 @TDLEN(i32) #1

declare dso_local i32 @TDH(i32) #1

declare dso_local i32 @TDT(i32) #1

declare dso_local %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_ring* byval(%struct.e1000_ring) align 8, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i8*) #1

declare dso_local i8* @cpu_to_le64(i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @RDBAL(i32) #1

declare dso_local i32 @RDBAH(i32) #1

declare dso_local i32 @RDLEN(i32) #1

declare dso_local i32 @RDH(i32) #1

declare dso_local i32 @RDT(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %union.e1000_rx_desc_extended* @E1000_RX_DESC_EXT(%struct.e1000_ring* byval(%struct.e1000_ring) align 8, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @e1000_free_desc_rings(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
