; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i64, i64, i64, i64 }
%union.ce_ring_size = type { i64 }
%union.ce_ring_contol = type { i64 }
%union.ce_part_ring_size = type { i64 }
%union.ce_io_threshold = type { i64 }
%union.ce_pe_dma_cfg = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@PPC4XX_BYTE_ORDER = common dso_local global i64 0, align 8
@CRYPTO4XX_BYTE_ORDER_CFG = common dso_local global i64 0, align 8
@CRYPTO4XX_PE_DMA_CFG = common dso_local global i64 0, align 8
@CRYPTO4XX_PDR_BASE = common dso_local global i64 0, align 8
@CRYPTO4XX_RDR_BASE = common dso_local global i64 0, align 8
@PPC4XX_PRNG_CTRL_AUTO_EN = common dso_local global i64 0, align 8
@CRYPTO4XX_PRNG_CTRL = common dso_local global i64 0, align 8
@CRYPTO4XX_PRNG_SEED_L = common dso_local global i64 0, align 8
@CRYPTO4XX_PRNG_SEED_H = common dso_local global i64 0, align 8
@PPC4XX_PD_SIZE = common dso_local global i32 0, align 4
@PPC4XX_NUM_PD = common dso_local global i32 0, align 4
@CRYPTO4XX_RING_SIZE = common dso_local global i64 0, align 8
@CRYPTO4XX_RING_CTRL = common dso_local global i64 0, align 8
@PPC4XX_DC_3DES_EN = common dso_local global i64 0, align 8
@CRYPTO4XX_DEVICE_CTRL = common dso_local global i64 0, align 8
@CRYPTO4XX_GATH_RING_BASE = common dso_local global i64 0, align 8
@CRYPTO4XX_SCAT_RING_BASE = common dso_local global i64 0, align 8
@PPC4XX_SDR_SIZE = common dso_local global i32 0, align 4
@PPC4XX_GDR_SIZE = common dso_local global i32 0, align 4
@CRYPTO4XX_PART_RING_SIZE = common dso_local global i64 0, align 8
@PPC4XX_SD_BUFFER_SIZE = common dso_local global i64 0, align 8
@CRYPTO4XX_PART_RING_CFG = common dso_local global i64 0, align 8
@PPC4XX_OUTPUT_THRESHOLD = common dso_local global i32 0, align 4
@PPC4XX_INPUT_THRESHOLD = common dso_local global i32 0, align 4
@CRYPTO4XX_IO_THRESHOLD = common dso_local global i64 0, align 8
@CRYPTO4XX_PDR_BASE_UADDR = common dso_local global i64 0, align 8
@CRYPTO4XX_RDR_BASE_UADDR = common dso_local global i64 0, align 8
@CRYPTO4XX_PKT_SRC_UADDR = common dso_local global i64 0, align 8
@CRYPTO4XX_PKT_DEST_UADDR = common dso_local global i64 0, align 8
@CRYPTO4XX_SA_UADDR = common dso_local global i64 0, align 8
@CRYPTO4XX_GATH_RING_BASE_UADDR = common dso_local global i64 0, align 8
@CRYPTO4XX_SCAT_RING_BASE_UADDR = common dso_local global i64 0, align 8
@PPC4XX_INTERRUPT_CLR = common dso_local global i64 0, align 8
@CRYPTO4XX_INT_CLR = common dso_local global i64 0, align 8
@PPC4XX_INT_DESCR_CNT = common dso_local global i64 0, align 8
@CRYPTO4XX_INT_DESCR_CNT = common dso_local global i64 0, align 8
@PPC4XX_INT_CFG = common dso_local global i64 0, align 8
@CRYPTO4XX_INT_CFG = common dso_local global i64 0, align 8
@PPC4XX_PD_DONE_INT = common dso_local global i64 0, align 8
@CRYPTO4XX_INT_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto4xx_device*)* @crypto4xx_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto4xx_hw_init(%struct.crypto4xx_device* %0) #0 {
  %2 = alloca %struct.crypto4xx_device*, align 8
  %3 = alloca %union.ce_ring_size, align 8
  %4 = alloca %union.ce_ring_contol, align 8
  %5 = alloca %union.ce_part_ring_size, align 8
  %6 = alloca %union.ce_io_threshold, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.ce_pe_dma_cfg, align 8
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %2, align 8
  %9 = load i64, i64* @PPC4XX_BYTE_ORDER, align 8
  %10 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %11 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CRYPTO4XX_BYTE_ORDER_CFG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i64 %9, i64 %14)
  %16 = bitcast %union.ce_pe_dma_cfg* %8 to i64*
  store i64 0, i64* %16, align 8
  %17 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 9
  store i64 0, i64* %20, align 8
  %21 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  store i32 1, i32* %24, align 8
  %25 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  store i32 1, i32* %26, align 4
  %27 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  store i32 1, i32* %28, align 8
  %29 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 5
  store i32 1, i32* %30, align 4
  %31 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 6
  store i32 1, i32* %32, align 8
  %33 = bitcast %union.ce_pe_dma_cfg* %8 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %36 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CRYPTO4XX_PE_DMA_CFG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i64 %34, i64 %39)
  %41 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 7
  store i32 0, i32* %42, align 4
  %43 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 4
  store i32 0, i32* %44, align 8
  %45 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 5
  store i32 0, i32* %46, align 4
  %47 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 6
  store i32 0, i32* %48, align 8
  %49 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 8
  store i64 0, i64* %50, align 8
  %51 = bitcast %union.ce_pe_dma_cfg* %8 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %54 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CRYPTO4XX_PE_DMA_CFG, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i64 %52, i64 %57)
  %59 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %60 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %63 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CRYPTO4XX_PDR_BASE, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i64 %61, i64 %66)
  %68 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %69 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %72 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CRYPTO4XX_RDR_BASE, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i64 %70, i64 %75)
  %77 = load i64, i64* @PPC4XX_PRNG_CTRL_AUTO_EN, align 8
  %78 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %79 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CRYPTO4XX_PRNG_CTRL, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i64 %77, i64 %82)
  %84 = call i32 @get_random_bytes(i64* %7, i32 8)
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %87 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CRYPTO4XX_PRNG_SEED_L, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i64 %85, i64 %90)
  %92 = call i32 @get_random_bytes(i64* %7, i32 8)
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %95 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @CRYPTO4XX_PRNG_SEED_H, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i64 %93, i64 %98)
  %100 = bitcast %union.ce_ring_size* %3 to i64*
  store i64 0, i64* %100, align 8
  %101 = load i32, i32* @PPC4XX_PD_SIZE, align 4
  %102 = bitcast %union.ce_ring_size* %3 to %struct.TYPE_5__*
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %105 = bitcast %union.ce_ring_size* %3 to %struct.TYPE_5__*
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = bitcast %union.ce_ring_size* %3 to i64*
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %110 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @CRYPTO4XX_RING_SIZE, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @writel(i64 %108, i64 %113)
  %115 = bitcast %union.ce_ring_contol* %4 to i64*
  store i64 0, i64* %115, align 8
  %116 = bitcast %union.ce_ring_contol* %4 to i64*
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %119 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @CRYPTO4XX_RING_CTRL, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i64 %117, i64 %122)
  %124 = load i64, i64* @PPC4XX_DC_3DES_EN, align 8
  %125 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %126 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @CRYPTO4XX_DEVICE_CTRL, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writel(i64 %124, i64 %129)
  %131 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %132 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %135 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @CRYPTO4XX_GATH_RING_BASE, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writel(i64 %133, i64 %138)
  %140 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %141 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %144 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @CRYPTO4XX_SCAT_RING_BASE, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writel(i64 %142, i64 %147)
  %149 = bitcast %union.ce_part_ring_size* %5 to i64*
  store i64 0, i64* %149, align 8
  %150 = load i32, i32* @PPC4XX_SDR_SIZE, align 4
  %151 = bitcast %union.ce_part_ring_size* %5 to %struct.TYPE_6__*
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @PPC4XX_GDR_SIZE, align 4
  %154 = bitcast %union.ce_part_ring_size* %5 to %struct.TYPE_6__*
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = bitcast %union.ce_part_ring_size* %5 to i64*
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %159 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @CRYPTO4XX_PART_RING_SIZE, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @writel(i64 %157, i64 %162)
  %164 = load i64, i64* @PPC4XX_SD_BUFFER_SIZE, align 8
  %165 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %166 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @CRYPTO4XX_PART_RING_CFG, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @writel(i64 %164, i64 %169)
  %171 = bitcast %union.ce_io_threshold* %6 to i64*
  store i64 0, i64* %171, align 8
  %172 = load i32, i32* @PPC4XX_OUTPUT_THRESHOLD, align 4
  %173 = bitcast %union.ce_io_threshold* %6 to %struct.TYPE_7__*
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @PPC4XX_INPUT_THRESHOLD, align 4
  %176 = bitcast %union.ce_io_threshold* %6 to %struct.TYPE_7__*
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = bitcast %union.ce_io_threshold* %6 to i64*
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %181 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @CRYPTO4XX_IO_THRESHOLD, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @writel(i64 %179, i64 %184)
  %186 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %187 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @CRYPTO4XX_PDR_BASE_UADDR, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @writel(i64 0, i64 %190)
  %192 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %193 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @CRYPTO4XX_RDR_BASE_UADDR, align 8
  %196 = add nsw i64 %194, %195
  %197 = call i32 @writel(i64 0, i64 %196)
  %198 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %199 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @CRYPTO4XX_PKT_SRC_UADDR, align 8
  %202 = add nsw i64 %200, %201
  %203 = call i32 @writel(i64 0, i64 %202)
  %204 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %205 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @CRYPTO4XX_PKT_DEST_UADDR, align 8
  %208 = add nsw i64 %206, %207
  %209 = call i32 @writel(i64 0, i64 %208)
  %210 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %211 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @CRYPTO4XX_SA_UADDR, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @writel(i64 0, i64 %214)
  %216 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %217 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @CRYPTO4XX_GATH_RING_BASE_UADDR, align 8
  %220 = add nsw i64 %218, %219
  %221 = call i32 @writel(i64 0, i64 %220)
  %222 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %223 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @CRYPTO4XX_SCAT_RING_BASE_UADDR, align 8
  %226 = add nsw i64 %224, %225
  %227 = call i32 @writel(i64 0, i64 %226)
  %228 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 7
  store i32 1, i32* %229, align 4
  %230 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 4
  store i32 0, i32* %231, align 8
  %232 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 5
  store i32 0, i32* %233, align 4
  %234 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 6
  store i32 0, i32* %235, align 8
  %236 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 8
  store i64 0, i64* %237, align 8
  %238 = bitcast %union.ce_pe_dma_cfg* %8 to i64*
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %241 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @CRYPTO4XX_PE_DMA_CFG, align 8
  %244 = add nsw i64 %242, %243
  %245 = call i32 @writel(i64 %239, i64 %244)
  %246 = load i64, i64* @PPC4XX_INTERRUPT_CLR, align 8
  %247 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %248 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @CRYPTO4XX_INT_CLR, align 8
  %251 = add nsw i64 %249, %250
  %252 = call i32 @writel(i64 %246, i64 %251)
  %253 = load i64, i64* @PPC4XX_INT_DESCR_CNT, align 8
  %254 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %255 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @CRYPTO4XX_INT_DESCR_CNT, align 8
  %258 = add nsw i64 %256, %257
  %259 = call i32 @writel(i64 %253, i64 %258)
  %260 = load i64, i64* @PPC4XX_INT_DESCR_CNT, align 8
  %261 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %262 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @CRYPTO4XX_INT_DESCR_CNT, align 8
  %265 = add nsw i64 %263, %264
  %266 = call i32 @writel(i64 %260, i64 %265)
  %267 = load i64, i64* @PPC4XX_INT_CFG, align 8
  %268 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %269 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @CRYPTO4XX_INT_CFG, align 8
  %272 = add nsw i64 %270, %271
  %273 = call i32 @writel(i64 %267, i64 %272)
  %274 = load i64, i64* @PPC4XX_PD_DONE_INT, align 8
  %275 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %276 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @CRYPTO4XX_INT_EN, align 8
  %279 = add nsw i64 %277, %278
  %280 = call i32 @writel(i64 %274, i64 %279)
  ret void
}

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @get_random_bytes(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
