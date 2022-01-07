; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmc_spi.c_mmc_spi_data_do.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmc_spi.c_mmc_spi_data_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_spi_host = type { i32, %struct.device*, %struct.TYPE_4__, %struct.TYPE_3__, %struct.scratch*, %struct.spi_device*, %struct.spi_transfer }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.scratch = type { i64* }
%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.mmc_command = type { i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32, i64 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"    mmc_spi: %s block, %d bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s status %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"    mmc_spi: STOP_TRAN\0A\00", align 1
@SPI_TOKEN_STOP_TRAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_spi_host*, %struct.mmc_command*, %struct.mmc_data*, i32)* @mmc_spi_data_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_spi_data_do(%struct.mmc_spi_host* %0, %struct.mmc_command* %1, %struct.mmc_data* %2, i32 %3) #0 {
  %5 = alloca %struct.mmc_spi_host*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca %struct.mmc_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.spi_device*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.spi_transfer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.scratch*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.mmc_spi_host* %0, %struct.mmc_spi_host** %5, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %6, align 8
  store %struct.mmc_data* %2, %struct.mmc_data** %7, align 8
  store i32 %3, i32* %8, align 4
  %26 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %27 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %26, i32 0, i32 5
  %28 = load %struct.spi_device*, %struct.spi_device** %27, align 8
  store %struct.spi_device* %28, %struct.spi_device** %9, align 8
  %29 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %30 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %29, i32 0, i32 1
  %31 = load %struct.device*, %struct.device** %30, align 8
  store %struct.device* %31, %struct.device** %10, align 8
  %32 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %33 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 1
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %15, align 4
  %37 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %38 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MMC_DATA_READ, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %4
  %44 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %44, i32* %12, align 4
  br label %47

45:                                               ; preds = %4
  %46 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @mmc_spi_setup_data_message(%struct.mmc_spi_host* %48, i32 %49, i32 %50)
  %52 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %53 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %52, i32 0, i32 6
  store %struct.spi_transfer* %53, %struct.spi_transfer** %11, align 8
  %54 = load %struct.spi_transfer*, %struct.spi_transfer** %11, align 8
  %55 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load %struct.spi_transfer*, %struct.spi_transfer** %11, align 8
  %60 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %16, align 4
  br label %66

62:                                               ; preds = %47
  %63 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %68 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %71 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 1000000
  %74 = load i32, i32* %16, align 4
  %75 = sdiv i32 %73, %74
  %76 = add nsw i32 %69, %75
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %17, align 8
  %78 = load i64, i64* %17, align 8
  %79 = udiv i64 %78, 1000
  %80 = trunc i64 %79 to i32
  %81 = call i32 @usecs_to_jiffies(i32 %80)
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %17, align 8
  %84 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %85 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %84, i32 0, i32 7
  %86 = load %struct.scatterlist*, %struct.scatterlist** %85, align 8
  store %struct.scatterlist* %86, %struct.scatterlist** %13, align 8
  %87 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %88 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %259, %66
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %264

93:                                               ; preds = %90
  store i32 0, i32* %18, align 4
  store i8* null, i8** %19, align 8
  %94 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %95 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %21, align 4
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %22, align 4
  %98 = load %struct.device*, %struct.device** %10, align 8
  %99 = icmp ne %struct.device* %98, null
  br i1 %99, label %100, label %142

100:                                              ; preds = %93
  %101 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %102 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %105, %100
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  store i32 %114, i32* %22, align 4
  br label %115

115:                                              ; preds = %113, %109, %105
  %116 = load %struct.device*, %struct.device** %10, align 8
  %117 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %118 = call i32 @sg_page(%struct.scatterlist* %117)
  %119 = load i32, i32* @PAGE_SIZE, align 4
  %120 = load i32, i32* %22, align 4
  %121 = call i8* @dma_map_page(%struct.device* %116, i32 %118, i32 0, i32 %119, i32 %120)
  store i8* %121, i8** %19, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @DMA_TO_DEVICE, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %115
  %126 = load i8*, i8** %19, align 8
  %127 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %128 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr i8, i8* %126, i64 %129
  %131 = load %struct.spi_transfer*, %struct.spi_transfer** %11, align 8
  %132 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %131, i32 0, i32 5
  store i8* %130, i8** %132, align 8
  br label %141

133:                                              ; preds = %115
  %134 = load i8*, i8** %19, align 8
  %135 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %136 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr i8, i8* %134, i64 %137
  %139 = load %struct.spi_transfer*, %struct.spi_transfer** %11, align 8
  %140 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %139, i32 0, i32 4
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %133, %125
  br label %142

142:                                              ; preds = %141, %93
  %143 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %144 = call i32 @sg_page(%struct.scatterlist* %143)
  %145 = call i8* @kmap(i32 %144)
  store i8* %145, i8** %20, align 8
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @DMA_TO_DEVICE, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %142
  %150 = load i8*, i8** %20, align 8
  %151 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %152 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr i8, i8* %150, i64 %153
  %155 = load %struct.spi_transfer*, %struct.spi_transfer** %11, align 8
  %156 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %155, i32 0, i32 3
  store i8* %154, i8** %156, align 8
  br label %165

157:                                              ; preds = %142
  %158 = load i8*, i8** %20, align 8
  %159 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %160 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr i8, i8* %158, i64 %161
  %163 = load %struct.spi_transfer*, %struct.spi_transfer** %11, align 8
  %164 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %163, i32 0, i32 2
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %157, %149
  br label %166

166:                                              ; preds = %221, %165
  %167 = load i32, i32* %21, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %222

169:                                              ; preds = %166
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @min(i32 %170, i32 %171)
  %173 = load %struct.spi_transfer*, %struct.spi_transfer** %11, align 8
  %174 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %176 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %175, i32 0, i32 5
  %177 = load %struct.spi_device*, %struct.spi_device** %176, align 8
  %178 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %177, i32 0, i32 1
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @DMA_TO_DEVICE, align 4
  %181 = icmp eq i32 %179, %180
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %184 = load %struct.spi_transfer*, %struct.spi_transfer** %11, align 8
  %185 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %178, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %183, i32 %186)
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* @DMA_TO_DEVICE, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %169
  %192 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %193 = load %struct.spi_transfer*, %struct.spi_transfer** %11, align 8
  %194 = load i64, i64* %17, align 8
  %195 = call i32 @mmc_spi_writeblock(%struct.mmc_spi_host* %192, %struct.spi_transfer* %193, i64 %194)
  store i32 %195, i32* %18, align 4
  br label %201

196:                                              ; preds = %169
  %197 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %198 = load %struct.spi_transfer*, %struct.spi_transfer** %11, align 8
  %199 = load i64, i64* %17, align 8
  %200 = call i32 @mmc_spi_readblock(%struct.mmc_spi_host* %197, %struct.spi_transfer* %198, i64 %199)
  store i32 %200, i32* %18, align 4
  br label %201

201:                                              ; preds = %196, %191
  %202 = load i32, i32* %18, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  br label %222

205:                                              ; preds = %201
  %206 = load %struct.spi_transfer*, %struct.spi_transfer** %11, align 8
  %207 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %210 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = add i32 %211, %208
  store i32 %212, i32* %210, align 4
  %213 = load %struct.spi_transfer*, %struct.spi_transfer** %11, align 8
  %214 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %21, align 4
  %217 = sub i32 %216, %215
  store i32 %217, i32* %21, align 4
  %218 = load i32, i32* %15, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %205
  br label %222

221:                                              ; preds = %205
  br label %166

222:                                              ; preds = %220, %204, %166
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %222
  %227 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %228 = call i32 @sg_page(%struct.scatterlist* %227)
  %229 = call i32 @flush_kernel_dcache_page(i32 %228)
  br label %230

230:                                              ; preds = %226, %222
  %231 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %232 = call i32 @sg_page(%struct.scatterlist* %231)
  %233 = call i32 @kunmap(i32 %232)
  %234 = load %struct.device*, %struct.device** %10, align 8
  %235 = icmp ne %struct.device* %234, null
  br i1 %235, label %236, label %242

236:                                              ; preds = %230
  %237 = load %struct.device*, %struct.device** %10, align 8
  %238 = load i8*, i8** %19, align 8
  %239 = load i32, i32* @PAGE_SIZE, align 4
  %240 = load i32, i32* %22, align 4
  %241 = call i32 @dma_unmap_page(%struct.device* %237, i8* %238, i32 %239, i32 %240)
  br label %242

242:                                              ; preds = %236, %230
  %243 = load i32, i32* %18, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %258

245:                                              ; preds = %242
  %246 = load i32, i32* %18, align 4
  %247 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %248 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %247, i32 0, i32 6
  store i32 %246, i32* %248, align 8
  %249 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %250 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %249, i32 0, i32 1
  %251 = load i32, i32* %12, align 4
  %252 = load i32, i32* @DMA_TO_DEVICE, align 4
  %253 = icmp eq i32 %251, %252
  %254 = zext i1 %253 to i64
  %255 = select i1 %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %256 = load i32, i32* %18, align 4
  %257 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %250, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %255, i32 %256)
  br label %264

258:                                              ; preds = %242
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %14, align 4
  %261 = add i32 %260, -1
  store i32 %261, i32* %14, align 4
  %262 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %263 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %262, i32 1
  store %struct.scatterlist* %263, %struct.scatterlist** %13, align 8
  br label %90

264:                                              ; preds = %245, %90
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* @DMA_TO_DEVICE, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %393

268:                                              ; preds = %264
  %269 = load i32, i32* %15, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %393

271:                                              ; preds = %268
  %272 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %273 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %272, i32 0, i32 4
  %274 = load %struct.scratch*, %struct.scratch** %273, align 8
  store %struct.scratch* %274, %struct.scratch** %23, align 8
  store i32 8, i32* %25, align 4
  %275 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %276 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %275, i32 0, i32 1
  %277 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %276, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %278 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %279 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 0
  %281 = call i32 @INIT_LIST_HEAD(i32* %280)
  %282 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %283 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 5
  %285 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %286 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  %288 = call i32 @list_add(i32* %284, i32* %287)
  %289 = load %struct.scratch*, %struct.scratch** %23, align 8
  %290 = getelementptr inbounds %struct.scratch, %struct.scratch* %289, i32 0, i32 0
  %291 = load i64*, i64** %290, align 8
  %292 = call i32 @memset(i64* %291, i32 255, i32 8)
  %293 = load i64, i64* @SPI_TOKEN_STOP_TRAN, align 8
  %294 = load %struct.scratch*, %struct.scratch** %23, align 8
  %295 = getelementptr inbounds %struct.scratch, %struct.scratch* %294, i32 0, i32 0
  %296 = load i64*, i64** %295, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 0
  store i64 %293, i64* %297, align 8
  %298 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %299 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %303 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 4
  store i32 %301, i32* %304, align 4
  %305 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %306 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %305, i32 0, i32 3
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %310 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %309, i32 0, i32 3
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 2
  store i32 %308, i32* %311, align 4
  %312 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %313 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %312, i32 0, i32 3
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 0
  store i32 8, i32* %314, align 4
  %315 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %316 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %315, i32 0, i32 1
  %317 = load %struct.device*, %struct.device** %316, align 8
  %318 = icmp ne %struct.device* %317, null
  br i1 %318, label %319, label %328

319:                                              ; preds = %271
  %320 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %321 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %320, i32 0, i32 1
  %322 = load %struct.device*, %struct.device** %321, align 8
  %323 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %324 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %327 = call i32 @dma_sync_single_for_device(%struct.device* %322, i32 %325, i32 8, i32 %326)
  br label %328

328:                                              ; preds = %319, %271
  %329 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %330 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %331 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %330, i32 0, i32 2
  %332 = call i32 @spi_sync(%struct.spi_device* %329, %struct.TYPE_4__* %331)
  store i32 %332, i32* %24, align 4
  %333 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %334 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %333, i32 0, i32 1
  %335 = load %struct.device*, %struct.device** %334, align 8
  %336 = icmp ne %struct.device* %335, null
  br i1 %336, label %337, label %346

337:                                              ; preds = %328
  %338 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %339 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %338, i32 0, i32 1
  %340 = load %struct.device*, %struct.device** %339, align 8
  %341 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %342 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %345 = call i32 @dma_sync_single_for_cpu(%struct.device* %340, i32 %343, i32 8, i32 %344)
  br label %346

346:                                              ; preds = %337, %328
  %347 = load i32, i32* %24, align 4
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %349, label %359

349:                                              ; preds = %346
  %350 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %351 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %350, i32 0, i32 6
  %352 = load i32, i32* %351, align 8
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %358, label %354

354:                                              ; preds = %349
  %355 = load i32, i32* %24, align 4
  %356 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %357 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %356, i32 0, i32 6
  store i32 %355, i32* %357, align 8
  br label %358

358:                                              ; preds = %354, %349
  br label %393

359:                                              ; preds = %346
  store i32 2, i32* %24, align 4
  br label %360

360:                                              ; preds = %374, %359
  %361 = load i32, i32* %24, align 4
  %362 = icmp ult i32 %361, 8
  br i1 %362, label %363, label %377

363:                                              ; preds = %360
  %364 = load %struct.scratch*, %struct.scratch** %23, align 8
  %365 = getelementptr inbounds %struct.scratch, %struct.scratch* %364, i32 0, i32 0
  %366 = load i64*, i64** %365, align 8
  %367 = load i32, i32* %24, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i64, i64* %366, i64 %368
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %363
  br label %393

373:                                              ; preds = %363
  br label %374

374:                                              ; preds = %373
  %375 = load i32, i32* %24, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %24, align 4
  br label %360

377:                                              ; preds = %360
  %378 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %379 = load i64, i64* %17, align 8
  %380 = call i32 @mmc_spi_wait_unbusy(%struct.mmc_spi_host* %378, i64 %379)
  store i32 %380, i32* %24, align 4
  %381 = load i32, i32* %24, align 4
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %383, label %392

383:                                              ; preds = %377
  %384 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %385 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %384, i32 0, i32 6
  %386 = load i32, i32* %385, align 8
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %392, label %388

388:                                              ; preds = %383
  %389 = load i32, i32* %24, align 4
  %390 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %391 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %390, i32 0, i32 6
  store i32 %389, i32* %391, align 8
  br label %392

392:                                              ; preds = %388, %383, %377
  br label %393

393:                                              ; preds = %358, %372, %392, %268, %264
  ret void
}

declare dso_local i32 @mmc_spi_setup_data_message(%struct.mmc_spi_host*, i32, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i8* @dma_map_page(%struct.device*, i32, i32, i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i8* @kmap(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @mmc_spi_writeblock(%struct.mmc_spi_host*, %struct.spi_transfer*, i64) #1

declare dso_local i32 @mmc_spi_readblock(%struct.mmc_spi_host*, %struct.spi_transfer*, i64) #1

declare dso_local i32 @flush_kernel_dcache_page(i32) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.TYPE_4__*) #1

declare dso_local i32 @dma_sync_single_for_cpu(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @mmc_spi_wait_unbusy(%struct.mmc_spi_host*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
