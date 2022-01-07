; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_omap2_mcspi.c_omap2_mcspi_txrx_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_omap2_mcspi.c_omap2_mcspi_txrx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i32, i32, %struct.omap2_mcspi_cs* }
%struct.omap2_mcspi_cs = type { i32, i64 }
%struct.spi_transfer = type { i32, i64, i64, i8**, i8** }
%struct.omap2_mcspi = type { %struct.omap2_mcspi_dma* }
%struct.omap2_mcspi_dma = type { i32, i32, i32, i32, i32, i32 }

@OMAP2_MCSPI_TX0 = common dso_local global i64 0, align 8
@OMAP2_MCSPI_RX0 = common dso_local global i64 0, align 8
@OMAP_DMA_DATA_TYPE_S8 = common dso_local global i32 0, align 4
@OMAP_DMA_DATA_TYPE_S16 = common dso_local global i32 0, align 4
@OMAP_DMA_DATA_TYPE_S32 = common dso_local global i32 0, align 4
@OMAP_DMA_SYNC_ELEMENT = common dso_local global i32 0, align 4
@OMAP_DMA_AMODE_CONSTANT = common dso_local global i32 0, align 4
@OMAP_DMA_AMODE_POST_INC = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@OMAP2_MCSPI_CHSTAT0 = common dso_local global i64 0, align 8
@OMAP2_MCSPI_CHSTAT_RXS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"DMA RX last word empty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @omap2_mcspi_txrx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_mcspi_txrx_dma(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.omap2_mcspi*, align 8
  %6 = alloca %struct.omap2_mcspi_cs*, align 8
  %7 = alloca %struct.omap2_mcspi_dma*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 3
  %21 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %20, align 8
  store %struct.omap2_mcspi_cs* %21, %struct.omap2_mcspi_cs** %6, align 8
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.omap2_mcspi* @spi_master_get_devdata(i32 %24)
  store %struct.omap2_mcspi* %25, %struct.omap2_mcspi** %5, align 8
  %26 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %27 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %26, i32 0, i32 0
  %28 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %27, align 8
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %28, i64 %31
  store %struct.omap2_mcspi_dma* %32, %struct.omap2_mcspi_dma** %7, align 8
  %33 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %6, align 8
  %38 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %13, align 4
  %40 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %6, align 8
  %41 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @OMAP2_MCSPI_TX0, align 8
  %45 = add i64 %43, %44
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @OMAP2_MCSPI_RX0, align 8
  %48 = add i64 %46, %47
  store i64 %48, i64* %12, align 8
  %49 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %50 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %49, i32 0, i32 3
  %51 = load i8**, i8*** %50, align 8
  store i8** %51, i8*** %16, align 8
  %52 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %53 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %52, i32 0, i32 4
  %54 = load i8**, i8*** %53, align 8
  store i8** %54, i8*** %17, align 8
  %55 = load i32, i32* %13, align 4
  %56 = icmp sle i32 %55, 8
  br i1 %56, label %57, label %60

57:                                               ; preds = %2
  %58 = load i32, i32* @OMAP_DMA_DATA_TYPE_S8, align 4
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %15, align 4
  br label %72

60:                                               ; preds = %2
  %61 = load i32, i32* %13, align 4
  %62 = icmp sle i32 %61, 16
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* @OMAP_DMA_DATA_TYPE_S16, align 4
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %8, align 4
  %66 = lshr i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @OMAP_DMA_DATA_TYPE_S32, align 4
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %8, align 4
  %70 = lshr i32 %69, 2
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %57
  %73 = load i8**, i8*** %17, align 8
  %74 = icmp ne i8** %73, null
  br i1 %74, label %75, label %100

75:                                               ; preds = %72
  %76 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %7, align 8
  %77 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @OMAP_DMA_SYNC_ELEMENT, align 4
  %82 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %7, align 8
  %83 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @omap_set_dma_transfer_params(i32 %78, i32 %79, i32 %80, i32 1, i32 %81, i32 %84, i32 0)
  %86 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %7, align 8
  %87 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @OMAP_DMA_AMODE_CONSTANT, align 4
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @omap_set_dma_dest_params(i32 %88, i32 0, i32 %89, i64 %90, i32 0, i32 0)
  %92 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %7, align 8
  %93 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @OMAP_DMA_AMODE_POST_INC, align 4
  %96 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %97 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @omap_set_dma_src_params(i32 %94, i32 0, i32 %95, i64 %98, i32 0, i32 0)
  br label %100

100:                                              ; preds = %75, %72
  %101 = load i8**, i8*** %16, align 8
  %102 = icmp ne i8** %101, null
  br i1 %102, label %103, label %129

103:                                              ; preds = %100
  %104 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %7, align 8
  %105 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* @OMAP_DMA_SYNC_ELEMENT, align 4
  %111 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %7, align 8
  %112 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @omap_set_dma_transfer_params(i32 %106, i32 %107, i32 %109, i32 1, i32 %110, i32 %113, i32 1)
  %115 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %7, align 8
  %116 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @OMAP_DMA_AMODE_CONSTANT, align 4
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @omap_set_dma_src_params(i32 %117, i32 0, i32 %118, i64 %119, i32 0, i32 0)
  %121 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %7, align 8
  %122 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @OMAP_DMA_AMODE_POST_INC, align 4
  %125 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %126 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @omap_set_dma_dest_params(i32 %123, i32 0, i32 %124, i64 %127, i32 0, i32 0)
  br label %129

129:                                              ; preds = %103, %100
  %130 = load i8**, i8*** %17, align 8
  %131 = icmp ne i8** %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %7, align 8
  %134 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @omap_start_dma(i32 %135)
  %137 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %138 = call i32 @omap2_mcspi_set_dma_req(%struct.spi_device* %137, i32 0, i32 1)
  br label %139

139:                                              ; preds = %132, %129
  %140 = load i8**, i8*** %16, align 8
  %141 = icmp ne i8** %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %139
  %143 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %7, align 8
  %144 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @omap_start_dma(i32 %145)
  %147 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %148 = call i32 @omap2_mcspi_set_dma_req(%struct.spi_device* %147, i32 1, i32 1)
  br label %149

149:                                              ; preds = %142, %139
  %150 = load i8**, i8*** %17, align 8
  %151 = icmp ne i8** %150, null
  br i1 %151, label %152, label %162

152:                                              ; preds = %149
  %153 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %7, align 8
  %154 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %153, i32 0, i32 1
  %155 = call i32 @wait_for_completion(i32* %154)
  %156 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %157 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @DMA_TO_DEVICE, align 4
  %161 = call i32 @dma_unmap_single(i32* null, i64 %158, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %152, %149
  %163 = load i8**, i8*** %16, align 8
  %164 = icmp ne i8** %163, null
  br i1 %164, label %165, label %243

165:                                              ; preds = %162
  %166 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %7, align 8
  %167 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %166, i32 0, i32 0
  %168 = call i32 @wait_for_completion(i32* %167)
  %169 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %170 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %174 = call i32 @dma_unmap_single(i32* null, i64 %171, i32 %172, i32 %173)
  %175 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %176 = call i32 @omap2_mcspi_set_enable(%struct.spi_device* %175, i32 0)
  %177 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %178 = load i64, i64* @OMAP2_MCSPI_CHSTAT0, align 8
  %179 = call i32 @mcspi_read_cs_reg(%struct.spi_device* %177, i64 %178)
  %180 = load i32, i32* @OMAP2_MCSPI_CHSTAT_RXS, align 4
  %181 = and i32 %179, %180
  %182 = call i64 @likely(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %224

184:                                              ; preds = %165
  %185 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %186 = load i64, i64* @OMAP2_MCSPI_RX0, align 8
  %187 = call i32 @mcspi_read_cs_reg(%struct.spi_device* %185, i64 %186)
  %188 = sext i32 %187 to i64
  %189 = inttoptr i64 %188 to i8*
  store i8* %189, i8** %18, align 8
  %190 = load i32, i32* %13, align 4
  %191 = icmp sle i32 %190, 8
  br i1 %191, label %192, label %201

192:                                              ; preds = %184
  %193 = load i8*, i8** %18, align 8
  %194 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %195 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %194, i32 0, i32 3
  %196 = load i8**, i8*** %195, align 8
  %197 = load i32, i32* %15, align 4
  %198 = sub nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %196, i64 %199
  store i8* %193, i8** %200, align 8
  br label %223

201:                                              ; preds = %184
  %202 = load i32, i32* %13, align 4
  %203 = icmp sle i32 %202, 16
  br i1 %203, label %204, label %213

204:                                              ; preds = %201
  %205 = load i8*, i8** %18, align 8
  %206 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %207 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %206, i32 0, i32 3
  %208 = load i8**, i8*** %207, align 8
  %209 = load i32, i32* %15, align 4
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %208, i64 %211
  store i8* %205, i8** %212, align 8
  br label %222

213:                                              ; preds = %201
  %214 = load i8*, i8** %18, align 8
  %215 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %216 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %215, i32 0, i32 3
  %217 = load i8**, i8*** %216, align 8
  %218 = load i32, i32* %15, align 4
  %219 = sub nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %217, i64 %220
  store i8* %214, i8** %221, align 8
  br label %222

222:                                              ; preds = %213, %204
  br label %223

223:                                              ; preds = %222, %192
  br label %240

224:                                              ; preds = %165
  %225 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %226 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %225, i32 0, i32 1
  %227 = call i32 @dev_err(i32* %226, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %228 = load i32, i32* %13, align 4
  %229 = icmp sle i32 %228, 8
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  br label %236

231:                                              ; preds = %224
  %232 = load i32, i32* %13, align 4
  %233 = icmp sle i32 %232, 16
  %234 = zext i1 %233 to i64
  %235 = select i1 %233, i32 2, i32 4
  br label %236

236:                                              ; preds = %231, %230
  %237 = phi i32 [ 1, %230 ], [ %235, %231 ]
  %238 = load i32, i32* %8, align 4
  %239 = sub i32 %238, %237
  store i32 %239, i32* %8, align 4
  br label %240

240:                                              ; preds = %236, %223
  %241 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %242 = call i32 @omap2_mcspi_set_enable(%struct.spi_device* %241, i32 1)
  br label %243

243:                                              ; preds = %240, %162
  %244 = load i32, i32* %8, align 4
  ret i32 %244
}

declare dso_local %struct.omap2_mcspi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @omap_set_dma_transfer_params(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @omap_set_dma_dest_params(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @omap_set_dma_src_params(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @omap_start_dma(i32) #1

declare dso_local i32 @omap2_mcspi_set_dma_req(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @omap2_mcspi_set_enable(%struct.spi_device*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mcspi_read_cs_reg(%struct.spi_device*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
